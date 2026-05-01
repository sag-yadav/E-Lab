<%@page import="conn.Conn" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Academics &mdash; Website by Colorlib</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet">
  <link rel="stylesheet" href="fonts/icomoon/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">

  <link rel="stylesheet" href="css/jquery.fancybox.min.css">

  <link rel="stylesheet" href="css/bootstrap-datepicker.css">

  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="css/aos.css">
  <link href="css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="css/style.css">

<%@include file="nav.jsp" %>

</head>

<body>

 <div class="container-fluid">
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/photo1.jpg" class="d-block w-100" alt="..." height="650px" width="100%">
    </div>
    <div class="carousel-item">
      <img src="images/photo2.jpg" class="d-block w-100" alt="..." height="650px" width="100%"> 
    </div>
    <div class="carousel-item">
      <img src="images/photo3.jpg" class="d-block w-100" alt="..." height="650px" width="100%">
    </div>
  </div>
  
</div>
</div>


    <div class="site-section">
      <div class="container">
        <div class="row mb-5 justify-content-center text-center">
          <div class="col-lg-4 mb-5">
            <h2 class="section-title-underline mb-5">
              <span>Popular Courses</span>
            </h2>
          </div>
        </div>
          <div class="row">
        <% 
         try{
   Connection dbs = Conn.getCon();
   String q = "select * from course limit 0,3";
   PreparedStatement  ps = dbs.prepareStatement(q);
   ResultSet rs = ps.executeQuery();
   while(rs.next())
   {
	   %>
	   
	
      
          <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">

            <div class="feature-1 border" style="margin-top:70px;">
              <div class="icon-wrapper bg-primary">
                <span class="flaticon-mortarboard text-white"></span>
              </div>
              <div class="feature-1-content">
                <h2><%=rs.getString("courseTitle")%></h2>
                     <p>Project :<%=rs.getString("project")%></p>
                   <p>Start Date :<%=rs.getString("startDate")%></p>
                   
                <p><a href="#" class="btn btn-primary px-4 rounded-0">Read More</a></p>
              </div>
            </div>
          </div>
        
        <%
   }}
         catch(Exception e)
         {
        	 e.printStackTrace();
         }
        %>
        </div>
      </div>
    </div>


    <div class="site-section">
      <div class="container">


        <div class="row mb-5 justify-content-center text-center">
          <div class="col-lg-6 mb-5">
            <h2 class="section-title-underline mb-3">
              <span>Latest Courses</span>
            </h2>
            <p>E-Learning</p>
          </div>
        </div>

        <div class="row">
         <% 
         try{
   Connection dbs = Conn.getCon();
   String q = "SELECT courseTitle, description, duration, fees, project, trainer, SUBSTRING(description, 1, 175) AS short_value FROM course";
   PreparedStatement  ps = dbs.prepareStatement(q);
   ResultSet rs = ps.executeQuery();
       %>
       <div class="col-12">
              <div class="owl-slide-3 owl-carousel">
            <%   
 
    while (rs.next()) {
    	String courseTitle = rs.getString("courseTitle");
    	String description = rs.getString("description");
    	String duration = rs.getString("duration");
    	String fees = rs.getString("fees");
     	String project = rs.getString("project");
     	String trainer = rs.getString("trainer");
     	
    	String shortDescription = rs.getString("short_value");
  %>
                  <div class="course-1-item">
                    <figure class="thumnail">
                      <a href="course-single.html"><img src="images/course_1.jpg" alt="Image" class="img-fluid"></a>
                      <div class="price"><%=rs.getString("fees") %></div>
                      <div class="category"><h3><%=courseTitle %></h3></div>  
                   </figure>
                    <div class="course-1-content pb-4">
                      <h2><%=rs.getString("trainer") %></h2>
                      <div class="rating text-center mb-3">
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                        <span class="icon-star2 text-warning"></span>
                      </div>
                      <p class="desc mb-4"><%=shortDescription %>...</p>
                         <h2 style="margin-bottom:10px;"><h2>Course Duration:<%=rs.getString("duration") %></h2></h2>  
                         <div class="category" style="margin-bottom:10px;"><h3><%=rs.getString("project") %></h3></div>  
                      <p><a href="corejava.jsp" class="btn btn-primary rounded-0 px-4">Read More</a></p>
                    </div>
                  </div>
     
      <%
    }
  %>
              </div>
      
          </div>
           <%
   }
         catch(Exception e)
         {
        	 e.printStackTrace();
         }
        %>
        </div>

        
        
      </div>
    </div>

    
<div class="section-bg style-1" style="background-image: url('images/about_1.jpg');">
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <h2 class="section-title-underline style-2">
          <span>About Our Institute</span>
        </h2>
      </div>
      <div class="col-lg-8">
        <%
        try {
          Connection dbs = Conn.getCon();
          String q = "SELECT aboutu, SUBSTRING(aboutu, 1, 175) AS short_value FROM about LIMIT 1";
          PreparedStatement ps = dbs.prepareStatement(q);
          ResultSet rs = ps.executeQuery();

          if (rs.next()) {   // ✅ use if, not while — shows only once
            String aboutu = rs.getString("aboutu");
            String shortDescription = rs.getString("short_value");
        %>

            <p class="lead"><%= shortDescription %>...</p>
            <p><a href="about.jsp">Read more</a></p>

        <%
          } else {
            out.print("<p>No data found in the about table.</p>");
          }
          rs.close();
          ps.close();
          dbs.close();
        } catch (Exception e) {
          e.printStackTrace();
          out.print("<p>Error fetching data.</p>");
        }
        %>
      </div>
    </div>
  </div>
</div>

    
    

    <!-- // 05 - Block -->
  <div class="site-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-lg-4">
            <h2 class="section-title-underline">
              <span style="text:center;">Placements</span>
            </h2>
          </div>
        </div>


        <div class="owl-slide owl-carousel">

          <div class="ftco-testimonial-1">
            <div class="ftco-testimonial-vcard d-flex align-items-center mb-4">
              <img src="images/person_2.jpg" alt="Image" class="img-fluid mr-3">
              <div>
                <h3>isha chauhan</h3>
                <span>Core Java</span>
              </div>
            </div>
            <div>
              <p>&ldquo;I had a great experience at Ducat Institute. The trainers were supportive, and I gained strong practical skills in corejava. Thanks to their guidance, I got successfully placed through Ducat.
              &rdquo;</p>
            </div>
          </div>

          <div class="ftco-testimonial-1">
            <div class="ftco-testimonial-vcard d-flex align-items-center mb-4">
              <img src="images/person_2.jpg" alt="Image" class="img-fluid mr-3">
              <div>
                <h3>priya yadav</h3>
                <span>Java Expert</span>
              </div>
            </div>
            <div>
              <p>I had an excellent experience at Ducat Institute. The trainers provided deep knowledge of Java Expert development with practical training. Thanks to their support and guidance, I got successfully placed in Ducat as a Java Developer.
              </p>
            </div>
          </div>

          <div class="ftco-testimonial-1">
            <div class="ftco-testimonial-vcard d-flex align-items-center mb-4">
              <img src="images/person_4.jpg" alt="Image" class="img-fluid mr-3">
              <div>
                <h3>shweta singh</h3>
                <span>Java Fullstack</span>
              </div>
            </div>
            <div>
              <p>&ldquo; I had a great learning experience at Ducat Institute. The trainers provided in-depth knowledge of Java Fullstack development with practical sessions. With their support and guidance, I got successfully placed in Ducat as a Python Developer.
              &rdquo;</p>
            </div>
          </div>

          <div class="ftco-testimonial-1">
            <div class="ftco-testimonial-vcard d-flex align-items-center mb-4">
              <img src="images/person_3.jpg" alt="Image" class="img-fluid mr-3">
              <div>
                <h3>Sagar Yadav</h3>
                <span>Mern Stack</span>
              </div>
            </div>
            <div>
              <p>I had a great learning experience at Ducat Institute. The trainers provided in-depth knowledge of MernStack development with practical sessions. With their support and guidance, I got successfully placed in Ducat as a PHP Developer.
              </p>
            </div>
          </div>

          <div class="ftco-testimonial-1">
            <div class="ftco-testimonial-vcard d-flex align-items-center mb-4">
              <img src="images/person_2.jpg" alt="Image" class="img-fluid mr-3">
              <div>
                <h3>Pooja Bhardwaj</h3>
                <span>DevOps</span>
              </div>
            </div>
            <div>
              <p>&ldquo;I had a great learning experience at Ducat Institute. The trainers provided in-depth knowledge of Java with practical sessions. With their support and guidance, I got successfully placed in Ducat as Devops.
              &rdquo;</p>
            </div>
          </div>

          <div class="ftco-testimonial-1">
            <div class="ftco-testimonial-vcard d-flex align-items-center mb-4">
              <img src="images/person_4.jpg" alt="Image" class="img-fluid mr-3">
              <div>
                <h3>Krishna Khatri</h3>
                <span>Python</span>
              </div>
            </div>
            <div>
              <p>I had a great learning experience at Ducat Institute. The trainers provided in-depth knowledge of python development with practical sessions. With their support and guidance, I got successfully placed in Ducat as a JS Developer.
              </p>
            </div>
          </div>

        </div>
        
      </div>
    </div>
    

 <div class="section-bg style-1" style="background-image: url('images/hero_1.jpg');">
  <div class="container">
    <div class="row">
      <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
        <span class="icon flaticon-mortarboard"></span>
        <h3>Our Philosophy</h3>
        <p>At Ducat Institute, we believe in empowering individuals through practical, industry-oriented education. Our philosophy is to bridge the gap between theoretical learning and real-world application by providing hands-on training, expert mentorship, and career-focused programs.</p>
      </div>

      <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
        <span class="icon flaticon-school-material"></span>
        <h3>Academic Principles</h3>
        <p>Ducat Institute follows strong academic principles focused on quality education, practical learning, and continuous improvement. Our approach blends theoretical knowledge with real-world training, ensuring students gain the skills needed to succeed in their careers.</p>
      </div>

      <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
        <span class="icon flaticon-library"></span>
        <h3>Key of Success</h3>
        <p>The keys to success at Ducat Institute are dedication, practical learning, innovation, and continuous growth. We focus on developing strong technical skills, problem-solving abilities, and professional ethics that help students achieve excellence in their careers.</p>
      </div>
      
    </div>
  </div>
</div>
     
    <div class="news-updates">
      <div class="container">
         
        <div class="row">
          <div class="col-lg-9">
             <div class="section-heading">
              <h2 class="text-black">News &amp; Updates</h2>
              <a href="#">Read All News</a>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <div class="post-entry-big">
                  <a href="news-single.html" class="img-link"><img src="images/blog_large_1.jpg" alt="Image" class="img-fluid"></a>
                  <div class="post-content">
                    <div class="post-meta"> 
                      <a href="#">June 6, 2019</a>
                      <span class="mx-1">/</span>
                      <a href="#">Admission</a>, <a href="#">Updates</a>
                    </div>
                    <h3 class="post-heading"><a href="news-single.html">Campus Camping and Learning Session</a></h3>
                  </div>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="post-entry-big horizontal d-flex mb-4">
                  <a href="news-single.html" class="img-link mr-4"><img src="images/blog_1.jpg" alt="Image" class="img-fluid"></a>
                  <div class="post-content">
                    <div class="post-meta">
                      <a href="#">June 6, 2019</a>
                      <span class="mx-1">/</span>
                      <a href="#">Admission</a>, <a href="#">Updates</a>
                    </div>
                    <h3 class="post-heading"><a href="news-single.html">Campus Camping and Learning Session</a></h3>
                  </div>
                </div>

                <div class="post-entry-big horizontal d-flex mb-4">
                  <a href="news-single.html" class="img-link mr-4"><img src="images/blog_2.jpg" alt="Image" class="img-fluid"></a>
                  <div class="post-content">
                    <div class="post-meta">
                      <a href="#">June 6, 2019</a>
                      <span class="mx-1">/</span>
                      <a href="#">Admission</a>, <a href="#">Updates</a>
                    </div>
                    <h3 class="post-heading"><a href="news-single.html">Campus Camping and Learning Session</a></h3>
                  </div>
                </div>

                <div class="post-entry-big horizontal d-flex mb-4">
                  <a href="news-single.html" class="img-link mr-4"><img src="images/blog_1.jpg" alt="Image" class="img-fluid"></a>
                  <div class="post-content">
                    <div class="post-meta">
                      <a href="#">June 6, 2019</a>
                      <span class="mx-1">/</span>
                      <a href="#">Admission</a>, <a href="#">Updates</a>
                    </div>
                    <h3 class="post-heading"><a href="news-single.html">Campus Camping and Learning Session</a></h3>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3">
            <div class="section-heading">
              <h2 class="text-black">Campus Videos</h2>
              <a href="#">View All Videos</a>
            </div>
            <a href="https://vimeo.com/45830194" class="video-1 mb-4" data-fancybox="" data-ratio="2">
              <span class="play">
                <span class="icon-play"></span>
              </span>
              <img src="images/course_5.jpg" alt="Image" class="img-fluid">
            </a>
            <a href="https://vimeo.com/45830194" class="video-1 mb-4" data-fancybox="" data-ratio="2">
                <span class="play">
                  <span class="icon-play"></span>
                </span>
                <img src="images/course_5.jpg" alt="Image" class="img-fluid">
              </a>
          </div>
        </div>
      </div>
    </div>

<!--  
    <div class="site-section ftco-subscribe-1" style="background-image: url('images/bg_1.jpg')">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-7">
            <h2>Subscribe to us!</h2>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia,</p>
          </div>
          <div class="col-lg-5">
            <form action="" class="d-flex">
              <input type="text" class="rounded form-control mr-2 py-3" placeholder="Enter your email">
              <button class="btn btn-primary rounded py-3 px-4" type="submit">Send</button>
            </form>
          </div>
        </div>
      </div>
    </div> 
-->

<%@include file="footer.jsp" %>
  <!-- .site-wrap -->


  <!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#51be78"/></svg></div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.sticky.js"></script>
  <script src="js/jquery.mb.YTPlayer.min.js"></script>




  <script src="js/main.js"></script>

</body>

</html>