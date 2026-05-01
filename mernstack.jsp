<%@page import="conn.Conn"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<%@include file="nav.jsp" %>
</head>
<body>
<div class="container" style="margin-top:100px">
<%
    
      try
    {
    	  Connection dbs = Conn.getCon();
        String q = "select * from course where id=10";
        
        PreparedStatement ps = dbs.prepareStatement(q);
        ResultSet rs = ps.executeQuery();
          while(rs.next())
          { 
        	  
        	  %>
       <div class="card text-center">
  <div class="card-header">
    <%=rs.getString("courseTitle") %>
  </div>
  <div class="card-body">
    <h5 class="card-title">Mern Stack</h5>
    <p class="card-text text-justify"><%=rs.getString("description") %></p>
     	 
     	 <p>
     	 <h2>1. Introduction to Web Development</h2>
<h2>2. HTML Fundamentals</h2>
<h2>3. CSS and Responsive Design</h2>
<h2>4. JavaScript Basics</h2>
<h2>5. Advanced JavaScript (ES6+)</h2>
<h2>6. DOM Manipulation</h2>
<h2>7. Version Control (Git & GitHub)</h2>
<h2>8. Introduction to React.js</h2>
<h2>9. React Hooks and State Management</h2>
<h2>10. React Router and Navigation</h2>
<h2>11. Advanced React (Context API, Redux)</h2>
<h2>12. Node.js Fundamentals</h2>
<h2>13. Express.js Framework</h2>
<h2>14. RESTful APIs Development</h2>
<h2>15. MongoDB and Mongoose</h2>
<h2>16. Authentication and Authorization (JWT, OAuth)</h2>
<h2>17. File Uploads and Data Validation</h2>
<h2>18. Error Handling and Middleware</h2>
<h2>19. Deployment (Render, Vercel, or AWS)</h2>
<h2>20. MERN Stack Project Development</h2>
<h2>21. Best Practices and Performance Optimization</h2>
<h2>22. Testing and Debugging</h2>
<h2>23. Optional: TypeScript with MERN</h2>
<h2>24. Optional: Next.js for Server-Side Rendering</h2>
     	 
     	</p>
     
     	   </div>
  <div class="card-footer text-muted">
    2 days ago
  </div>
</div>
  <%
    }	  
    }
catch(Exception e)
{
	   e.printStackTrace();
}
    
    %>
</div>
</body>
</html>