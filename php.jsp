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
        String q = "select * from course where id=14";
        
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
    <h5 class="card-title">Php</h5>
    <p class="card-text text-justify"><%=rs.getString("description") %></p>
     	 
     	 <p>
     	 
 <h2>1. Introduction to Web & PHP</h2>
<h2>2. Control Structures</h2>
<h2>3. Functions</h2>
<h2>4. Arrays</h2>
<h2>5. Strings and Regular Expressions</h2>
<h2>6. Forms and User Input</h2>
 <h2>7. Sessions and Cookies</h2>
<h2>8. File Handling</h2>
<h2>9. Error & Exception Handling</h2>
<h2>10. PHP with MySQL (Database Integration)</h2>
<h2>11. Object-Oriented PHP</h2>
<h2>12. PHP & Web Technologies</h2>
<h2>13. Advanced Topics</h2>
 <h2>14. Security</h2>
<h2>15. Deployment & Best Practices</h2>
<h2>16. Optional (Advanced Career Topics)</h2>
     	 
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