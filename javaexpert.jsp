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
        String q = "select * from course where id=2";
        
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
    <h5 class="card-title">Java Expert</h5>
    <p class="card-text text-justify"><%=rs.getString("description") %></p>
     	 
     	 
     	  <p> 
     	  <h2>1. Advanced Core Java Concepts</h2>
<h2>2. Deep Dive into Object-Oriented Design Principles</h2>
<h2>3. Java Memory Management and Garbage Collection</h2>
<h2>4. Multithreading and Concurrency (Advanced)</h2>
<h2>5. Java Collections and Stream API (Performance Tuning)</h2>
<h2>6. Functional Programming in Java (Lambda, Streams)</h2>
<h2>7. Java Reflection and Annotations</h2>
<h2>8. Generics and Type Safety</h2>
<h2>9. Design Patterns in Java</h2>
<h2>10. Advanced Exception Handling and Logging</h2>
<h2>11. JVM Internals and Performance Optimization</h2>
<h2>12. Java I/O and NIO.2 (Asynchronous File Handling)</h2>
<h2>13. Java Networking and Sockets Programming</h2>
<h2>14. Advanced JDBC and Transaction Management</h2>
<h2>15. Spring Framework (Core, Boot, Data, Security, AOP)</h2>
<h2>16. Hibernate and JPA (Advanced ORM Concepts)</h2>
<h2>17. Microservices Architecture with Spring Boot</h2>
<h2>18. RESTful and GraphQL API Development</h2>
<h2>19. Cloud Integration (AWS, Azure, GCP Basics)</h2>
<h2>20. Messaging Queues (Kafka, RabbitMQ, ActiveMQ)</h2>
<h2>21. Containerization and DevOps Tools (Docker, Kubernetes, CI/CD)</h2>
<h2>22. Reactive Programming (Spring WebFlux, Project Reactor)</h2>
<h2>23. Testing and Quality Assurance (JUnit 5, Mockito, TestContainers)</h2>
<h2>24. Security and Authentication (Spring Security, OAuth2, JWT)</h2>
<h2>25. Distributed Systems and Scalability Concepts</h2>
<h2>26. API Gateway and Service Discovery (Eureka, Zuul)</h2>
<h2>27. Monitoring and Observability (ELK Stack, Prometheus, Grafana)</h2>
<h2>28. Performance Tuning and Profiling (JProfiler, VisualVM)</h2>
<h2>29. Build and Dependency Management (Maven, Gradle)</h2>
<h2>30. Advanced Project Architecture and Best Practices</h2>
     	  
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