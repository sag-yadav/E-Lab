package controller;

import java.io.File;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.Connection; 

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import conn.Conn;

@WebServlet("/FileUploadServlet")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2, // 2MB
    maxFileSize = 1024 * 1024 * 10,      // 10MB
    maxRequestSize = 1024 * 1024 * 50    // 50MB
)
public class FileUploadServlet extends HttpServlet {

    private static final String UPLOAD_DIR = "images";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8"); 

        String name = request.getParameter("name");
        String skill = request.getParameter("skill");
        String exp = request.getParameter("exp");

        Part part = request.getPart("file");
        String originalFileName = extractFileName(part);
        String contentType = part.getContentType();

        
        if (!contentType.startsWith("image/")) {
            response.getWriter().println("Error: Only image files are allowed.");
            return;
        }

        
        String fileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));

        
        String newFileName = System.currentTimeMillis() + fileExtension;

        
        String applicationPath = getServletContext().getRealPath("");
        String uploadPath = applicationPath + File.separator + UPLOAD_DIR;

        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

       
        String fullSavePath = uploadPath + File.separator + newFileName;
        part.write(fullSavePath);

        
        String dbFilePath = UPLOAD_DIR + File.separator + newFileName;

        try {
            Connection dbs = Conn.getCon();
            PreparedStatement pst = dbs.prepareStatement(
                    "INSERT INTO trainer(name, skill, exp, filename, path) VALUES (?, ?, ?, ?, ?)"
            );
            pst.setString(1, name);
            pst.setString(2, skill);
            pst.setString(3, exp);
            pst.setString(4, newFileName);   
            pst.setString(5, dbFilePath);    

            pst.executeUpdate();
            response.sendRedirect("admin/view-Trainers.jsp");

        } catch (Exception e) {
            response.getWriter().println("Error: " + e.getMessage());
            e.printStackTrace();
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        response.getWriter().println("<h3>Use POST method to upload files.</h3>");
    }

   
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        for (String token : contentDisp.split(";")) {
            if (token.trim().startsWith("filename")) {
                return token.substring(token.indexOf('=') + 2, token.length() - 1);
            }
        }
        return "";
    }
}
