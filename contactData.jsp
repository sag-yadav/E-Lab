<%@page import="conn.Conn"%>
<%@page import="java.sql.*" %>

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

 String firstN = request.getParameter("fname");
 String lastN = request.getParameter("lname");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String msg = request.getParameter("msg");


  int i=0;
  try
  {
	  Connection dbs = Conn.getCon();
	  
   String q = "insert into contact(firstN,lastN,email,phone,msg)values(?,?,?,?,?)";
		   
		   PreparedStatement ps = dbs.prepareStatement(q);
		   ps.setString(1, firstN);
		   ps.setString(2, lastN);
		   ps.setString(3, email);
		   ps.setString(4, phone);
		   ps.setString(5, msg);
		  
		 i=ps.executeUpdate();  
  }
   
   catch(Exception e)
  {
	   e.printStackTrace();
  }

    if(i>0)
    {
    	out.print("Something is Error");
    	RequestDispatcher rd = request.getRequestDispatcher("contact.jsp");
    	rd.include(request,response);
    }
    
    else
    {
    	out.print("Something is Error");
    	RequestDispatcher rd = request.getRequestDispatcher("contact.jsp");
    	rd.include(request,response);
    }
    
    
%>


</body>
</html>