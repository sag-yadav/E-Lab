<%@page import="conn.Conn"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <title>E-Lab</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


  <link rel="stylesheet" href="css/style.css">

    <%@include file = "nav.jsp" %>

</head>
<body>
  <br></br><br></br>
   <div class="container">
   <div class="row">
   
   <%
      try
   {
    	  
    	  Connection dbs = Conn.getCon();
    	  Statement st = dbs.createStatement();
      ResultSet rs = st.executeQuery("SELECT * FROM trainer");
      
      while(rs.next())
      {
    	  %>
    	  
    	  <div class="col-4">
    	<div class="card" style="width: 18rem;">
  <img src="<%=rs.getString("path") %>" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title"><%=rs.getString("name") %></h5>
    <p class="card-text"><%=rs.getString("skill") %></p>
    <p class="card-text"><%=rs.getString("exp") %>.years</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>  
    	  
    	  
    	  
    	  </div>
    	  
    	  
    	  
    <% 	  
      }
    	  
   }
   
      catch(Exception e)
   {
    	  out.println("Error: "+e.getMessage());
   }
   
   
   
   %>
   
   
   
   </div>
   
   
   </div>




</body>
</html>