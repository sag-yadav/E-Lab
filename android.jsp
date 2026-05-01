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
        String q = "select * from course where id=13";
        
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
    <h5 class="card-title">Android</h5>
    <p class="card-text text-justify"><%=rs.getString("description") %></p>
     	 
     	 <p>
     	 
     	<h2>1. Introduction to Android Development</h2>
<h2>2. Android Studio Setup and Environment Configuration</h2>
<h2>3. Java and Kotlin Basics for Android</h2>
<h2>4. Android Architecture and Components</h2>
<h2>5. Activities and Lifecycle</h2>
<h2>6. Intents and Intent Filters</h2>
<h2>7. Fragments and Fragment Lifecycle</h2>
<h2>8. UI Design and Layouts (XML, ConstraintLayout, LinearLayout)</h2>
<h2>9. Views and ViewGroups</h2>
<h2>10. RecyclerView and Adapters</h2>
<h2>11. Handling User Input and Events</h2>
<h2>12. Menus, Dialogs, and Toasts</h2>
<h2>13. Styles, Themes, and Material Design</h2>
<h2>14. Data Storage (SharedPreferences, Internal/External Storage)</h2>
<h2>15. SQLite Database and Room Persistence Library</h2>
<h2>16. Content Providers and Loaders</h2>
<h2>17. Networking in Android (HTTP, REST APIs, Retrofit, Volley)</h2>
<h2>18. JSON Parsing and API Integration</h2>
<h2>19. Background Tasks (AsyncTask, Services, WorkManager)</h2>
<h2>20. Notifications and Broadcast Receivers</h2>
<h2>21. Permissions and Security in Android</h2>
<h2>22. Location and Maps (Google Maps API, GPS)</h2>
<h2>23. Multimedia in Android (Audio, Video, Camera)</h2>
<h2>24. Firebase Integration (Auth, Firestore, Realtime Database)</h2>
<h2>25. Dependency Injection (Dagger, Hilt, Koin)</h2>
<h2>26. Jetpack Components (LiveData, ViewModel, Navigation, DataBinding)</h2>
<h2>27. Coroutines and Asynchronous Programming</h2>
<h2>28. Testing Android Apps (JUnit, Espresso)</h2>
<h2>29. App Optimization and Performance Tuning</h2>
<h2>30. Publishing Apps on Google Play Store</h2>
<h2>31. Advanced Topics (Compose, MVVM, Clean Architecture)</h2>
<h2>32. Real-Time Android Project Development</h2>
     	

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