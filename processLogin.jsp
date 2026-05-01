<%@page import="conn.Conn"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String email = request.getParameter("email");
String pass = request.getParameter("pass");

if(email != null && pass != null) {

    if(email.equals("admin@gmail.com") && pass.equals("123"))
    {
    	session = request.getSession();
    	session.setAttribute("email",email);
    	
        response.sendRedirect("admin/adminHome.jsp");
    } else {

        try (Connection dbs = Conn.getCon();
             PreparedStatement ps = dbs.prepareStatement("select * from register where email=? and password=?")) {

            ps.setString(1, email);
            ps.setString(2, pass);

            try (ResultSet rs = ps.executeQuery()) {
                if(rs.next()) {
                    session.setAttribute("email", email);  // use existing JSP session
                    response.sendRedirect("user/UserDashboard.jsp");
                } else {
                    request.setAttribute("errorMsg", "Invalid email or password");
                    RequestDispatcher rd = request.getRequestDispatcher("session.jsp");
                    rd.include(request, response);
                }
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

    }

}
%>

</body>
</html> 