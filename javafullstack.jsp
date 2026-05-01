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
        String q = "select * from course where id=4";
        
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
    <h5 class="card-title">Java Fullstack</h5>
    <p class="card-text text-justify"><%=rs.getString("description") %></p>
     	 <p>
     	 
     	 <h2>1. Introduction to Full Stack Development</h2>
<h2>2. Core Java Fundamentals</h2>
<h2>3. Object-Oriented Programming in Java</h2>
<h2>4. Exception Handling and File I/O</h2>
<h2>5. Collections Framework</h2>
<h2>6. Java 8 Features (Streams, Lambda Expressions)</h2>
<h2>7. Multithreading and Concurrency</h2>
<h2>8. JDBC (Java Database Connectivity)</h2>
<h2>9. Servlets and JSP (Java Web Basics)</h2>
<h2>10. Spring Framework Fundamentals</h2>
<h2>11. Spring Boot Framework</h2>
<h2>12. RESTful Web Services with Spring Boot</h2>
<h2>13. Hibernate and JPA (ORM Frameworks)</h2>
<h2>14. Database Design and SQL (MySQL / PostgreSQL)</h2>
<h2>15. Frontend Basics: HTML, CSS, JavaScript</h2>
<h2>16. Advanced JavaScript (ES6+)</h2>
<h2>17. Frontend Framework: React.js / Angular</h2>
<h2>18. API Integration (Frontend with Backend)</h2>
<h2>19. Authentication and Security (JWT, Spring Security)</h2>
<h2>20. Version Control (Git and GitHub)</h2>
<h2>21. Testing (JUnit, Mockito)</h2>
<h2>22. Build Tools (Maven / Gradle)</h2>
<h2>23. Deployment and DevOps Basics (Tomcat, Docker, AWS)</h2>
<h2>24. Project Development (Full Stack Application)</h2>
<h2>25. Best Practices and Performance Optimization</h2>
     	 
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