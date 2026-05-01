<!DOCTYPE html>
<html lang="en">

<head>
  <title>E-Lab</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


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

  <%@include file = "nav.jsp" %>

</head>
<body><br></br>

<div class="container py-5">

<% 
   String msg = request.getParameter("msg");
   if ("valid".equals(msg)) 
   {
%>
   <h2 class="text-success text-center">We will call you shortly...Thank You!</h2>
<%
   }
%>

<div class="card shadow">
  <div class="card-header bg-primary text-center">
    <h4 class="text-light">
      <marquee behavior="alternate" scrollamount="15">Online Registration Form</marquee>
    </h4>
  </div>

  <div class="card-body">
    <form action="actionReg.jsp" method="post">

      <div class="row mb-3">
        <div class="col-md-6">
          <input type="text" class="form-control" id="name" name="name" placeholder="Enter Your Name:">
        </div>
        <div class="col-md-6">
          <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter Your Phone:">
        </div>
      </div>

      <div class="row mb-3">
        <div class="col-md-6">
          <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email Address:">
        </div>
        <div class="col-md-6">
          <select id="branch" name="branch" class="form-select">
            <option value="">Select Branch:</option>
            <option value="cs">CS</option>
            <option value="it">IT</option>
            <option value="ece">ECE</option>
          </select>
        </div>
      </div>

      <div class="row mb-3">
        <div class="col-md-6">
          <select id="course" name="course" class="form-select">
            <option value="">Select Course:</option>
            <option value="corejava">Core Java</option>
            <option value="javaexpert">Java Expert</option>
            <option value="javafullstack">Java Fullstack</option>
            <option value="mernstack">MERN Stack</option>
            <option value="devops">DevOps</option>
            <option value="python">Python</option>
            <option value="android">Android</option>
            <option value="php">PHP</option>
            <option value=".net">.NET</option>
          </select>
        </div>
        <div class="col-md-6">
          <input type="number" class="form-control" id="amount" name="amount" placeholder="Enter Amount:">
        </div>
      </div>

      <div class="mb-3">
        <textarea id="address" name="address" class="form-control" rows="3" placeholder="Enter Address:"></textarea>
      </div>

      <div class="row mb-3">
        <div class="col-md-6">
          <input type="text" class="form-control" id="city" name="city" placeholder="Enter City Name:">
        </div>
        <div class="col-md-6">
          <input type="text" class="form-control" id="country" name="country" placeholder="Enter Country Name:">
        </div>
      </div>

      <div class="row mb-3">
        <div class="col-md-6">
          <input type="text" class="form-control" id="zip" name="zip" placeholder="Enter Zip Code:">
        </div>
        <div class="col-md-6">
          <select id="category" name="category" class="form-select">
            <option value="">Select Category:</option>
            <option value="general">General</option>
            <option value="obc">OBC</option>
            <option value="sc">SC</option>
            <option value="st">ST</option>
          </select>
        </div>
      </div>

      <div class="text-center">
        <button type="submit" class="btn btn-success w-100">Submit</button>
      </div>

    </form>
  </div>
</div>
</div>


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