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
        String q = "select * from course where id=11";
        
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
    <h5 class="card-title">DevOps</h5>
    <p class="card-text text-justify"><%=rs.getString("description") %></p>
     	 
     	 <p>
     	 
     	<h2>1. Introduction to DevOps</h2>
<h2>2. Software Development Life Cycle (SDLC) and Agile Methodologies</h2>
<h2>3. Linux and Shell Scripting Fundamentals</h2>
<h2>4. Version Control Systems (Git, GitHub, GitLab)</h2>
<h2>5. Build Automation Tools (Maven, Gradle)</h2>
<h2>6. Continuous Integration (CI) Concepts</h2>
<h2>7. Jenkins and CI/CD Pipeline Setup</h2>
<h2>8. Configuration Management Tools (Ansible, Puppet, Chef)</h2>
<h2>9. Containerization with Docker</h2>
<h2>10. Container Orchestration with Kubernetes</h2>
<h2>11. Infrastructure as Code (IaC) with Terraform</h2>
<h2>12. Cloud Computing Fundamentals (AWS, Azure, GCP)</h2>
<h2>13. Monitoring and Logging (Prometheus, Grafana, ELK Stack)</h2>
<h2>14. Networking and Security Essentials for DevOps</h2>
<h2>15. Load Balancing and Reverse Proxy (Nginx, HAProxy)</h2>
<h2>16. Continuous Deployment and Delivery Strategies</h2>
<h2>17. Secrets Management and Vaults (HashiCorp Vault, AWS Secrets Manager)</h2>
<h2>18. Scripting and Automation (Bash, Python, PowerShell)</h2>
<h2>19. Testing and Quality Assurance in DevOps</h2>
<h2>20. Microservices and API Management</h2>
<h2>21. Observability and Incident Response</h2>
<h2>22. DevSecOps and Security Best Practices</h2>
<h2>23. GitOps and Infrastructure Automation</h2>
<h2>24. Serverless Architecture and Cloud Functions</h2>
<h2>25. CI/CD for Containers (Docker + Jenkins + Kubernetes)</h2>
<h2>26. Artifact Management (Nexus, JFrog Artifactory)</h2>
<h2>27. Performance Optimization and Cost Management in Cloud</h2>
<h2>28. Disaster Recovery and Backup Strategies</h2>
<h2>29. Site Reliability Engineering (SRE) Concepts</h2>
<h2>30. Real-Time DevOps Project and Case Studies</h2>
     	

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