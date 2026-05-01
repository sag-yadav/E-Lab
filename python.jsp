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
        String q = "select * from course where id=12";
        
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
    <h5 class="card-title">Python</h5>
    <p class="card-text text-justify"><%=rs.getString("description") %></p>
     	 
     	 <p>
     	<h2>1. Introduction to Python</h2>
<h2>2. Operators and Expressions</h2>
<h2>3. Control Flow</h2>
<h2>4. Functions</h2>
<h2>5. Data Structures</h2>
<h2>6. File Handling</h2>
<h2>7. Modules and Packages</h2>
<h2>8. Exception Handling</h2>
<h2>9. Object-Oriented Programming (OOPs)</h2>
<h2>10. Advanced Python Concepts</h2>
<h2>11. Python with Databases</h2>
<h2>12. Web Development with Python</h2>
<h2>13. Data Handling & Libraries</h2>
<h2>14. Automation & Scripting</h2>
<h2>15. Introduction to Data Science / AI (Optional)</h2>
<h2>16. Testing and Debugging</h2>
<h2>17. Deployment & Version Control</h2>
<h2>18. Best Practices</h2>
<h2>19. Optional Career Tracks</h2>
     	
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