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
        String q = "select * from course where id=1";
        
        PreparedStatement ps = dbs.prepareStatement(q);
        ResultSet rs = ps.executeQuery();
          while(rs.next())
          { 
        	  
        	  %>

<div class="card">
  <div class="card-header">
    <%=rs.getString("courseTitle") %>
  </div>
  <div class="card-body">
    <h5 class="card-title">Core Java</h5>
    <p class="card-text text-justify"><%=rs.getString("description") %></p>
    
    <p>
    
    <h2>1. Java introduction</h2>
    <h2>2. Java Basics & Introduction to Eclipse</h2>


<h2>3. Operators & Expressions</h2>

<h2>4. Control statements</h2>

<h2>5. Java Object Oriented Programming</h2>

<h2>6. Inheritance</h2>

<h2>7. Exception handling</h2>

<h2>8. Interfaces</h2>

<h2>9. Multithreaded programming</h2>

<h2>10. Predefined Libraries</h2>

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