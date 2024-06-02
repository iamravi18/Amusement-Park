<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
	<!DOCTYPE html>
	<html lang="en">
	
	<head>
	  <meta charset="utf-8">
	  <meta content="width=device-width, initial-scale=1.0" name="viewport">
	
	  <title>Adding Activities</title>
	  <meta content="" name="description">
	  <meta content="" name="keywords">
	
	  <!-- Favicons -->
	  <link href="assets/img/favicon.png" rel="icon">
	  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
	
	  <!-- Google Fonts -->
	  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	
	  <!-- Vendor CSS Files -->
	  <link href="../../assets/vendor/aos/aos.css" rel="stylesheet">
	  <link href="../../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	  <link href="../../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	  <link href="../../assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
	  <link href="../../assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
	  <link href="../../assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
	
	  <!-- Template Main CSS File -->
	  <link href="../../assets/css/style.css" rel="stylesheet">
	
	  <!-- =======================================================
	  * Template Name: Squadfree - v4.11.0
	  * Template URL: https://bootstrapmade.com/squadfree-free-bootstrap-template-creative/
	  * Author: BootstrapMade.com
	  * License: https://bootstrapmade.com/license/
	  ======================================================== -->
	</head>
<body> <!-- ======= Header ======= -->
	<header id="header" class="fixed-top header-transparent">
	  <div class="container d-flex align-items-center justify-content-between position-relative">
  
		<div class="logo">
		  <h1 class="text-light"><a href="http://localhost:8085"><span>Funament</span></a></h1>
		  <!-- Uncomment below if you prefer to use an image logo -->
		  <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
		</div>
  
		<nav id="navbar" class="navbar">
		  <ul>
			<li><a class="nav-link scrollto active" href="http://localhost:8085">Home</a></li>
			<li><a class="nav-link scrollto" href="#about">About Us</a></li>
			<li class="dropdown"><a href="#"><span>Activity</span> <i class="bi bi-chevron-down"></i></a>
			  <ul>
				<li><a href="/activity/addactivity">Add Activity</a></li>
				<li><a href="#">Update activity</a></li>
				<li><a href="#">delete Activity</a></li>
				<li><a href="#">view Activity</a></li>
			  </ul>
			</li>
			
			<li><a class="nav-link scrollto" href="#contact">Contact</a></li>
		  </ul>
		  <i class="bi bi-list mobile-nav-toggle"></i>
		</nav><!-- .navbar -->
  
	  </div>
	</header><!-- End Header -->
<section id="hero">
    <div class="hero-container" data-aos="fade-up">
      <h1>Welcome to Squad</h1>
      <h2>We are team of talented designers making websites with Bootstrap</h2>
      <a href="#about" class="btn-get-started scrollto"><i class="bx bx-chevrons-down"></i></a>
    </div>
  </section><!-- End Hero -->

  <main id="main">
	<div class="container" style="margin-top: 20px;margin-bottom: 20px;padding: 20px;height: 300px;">
		<div class="row">
            <div class="alert alert-danger">deleted sucesfull</div>
		  <!-- <form:form action="/activity/fetchdelete" method="post" modelAttribute="activity">
			<div class="form-group">
			  <label for="activityId">Activity Id</label>
			  <form:input path="activityId" class="form-control" id="activityId"/>
			</div>
	
            <div class="form-group">
                <button class="btn btn-primary">delete activity</button>
              </div>
		  </form:form> -->
		</div>
	  </div>

  
	<h1>Sum</h1>
<h1>hello World from addactivity</h1>

	 <!-- ======= Footer ======= -->
	 <footer id="footer">
		<div class="footer-top">
		  <div class="container">
			<div class="row">
	
			  <div class="col-lg-4 col-md-6">
				<div class="footer-info">
				  <h3>Squadfree</h3>
				  <p class="pb-3"><em>Qui repudiandae et eum dolores alias sed ea. Qui suscipit veniam excepturi quod.</em></p>
				  <p>
					A108 Adam Street <br>
					NY 535022, USA<br><br>
					<strong>Phone:</strong> +1 5589 55488 55<br>
					<strong>Email:</strong> info@example.com<br>
				  </p>
				  <div class="social-links mt-3">
					<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
					<a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
					<a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
					<a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
					<a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
				  </div>
				</div>
			  </div>
	
			  <div class="col-lg-2 col-md-6 footer-links">
				<h4>Useful Links</h4>
				<ul>
				  <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
				  <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
				  <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
				  <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
				  <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
				</ul>
			  </div>
	
			  <div class="col-lg-2 col-md-6 footer-links">
				<h4>Our Services</h4>
				<ul>
				  <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
				  <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
				  <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
				  <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
				  <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
				</ul>
			  </div>
	
			  <div class="col-lg-4 col-md-6 footer-newsletter">
				<h4>Our Newsletter</h4>
				<p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
				<form action="" method="post">
				  <input type="email" name="email"><input type="submit" value="Subscribe">
				</form>
	
			  </div>
	
			</div>
		  </div>
		</div>
	
		<div class="container">
		  <div class="copyright">
			&copy; Copyright <strong><span>Squadfree</span></strong>. All Rights Reserved
		  </div>
		  <div class="credits">
			<!-- All the links in the footer should remain intact. -->
			<!-- You can delete the links only if you purchased the pro version. -->
			<!-- Licensing information: https://bootstrapmade.com/license/ -->
			<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/squadfree-free-bootstrap-template-creative/ -->
			Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
		  </div>
		</div>
	  </footer><!-- End Footer -->
	  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="../../assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="../../assets/vendor/aos/aos.js"></script>
  <script src="../../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../../assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="../../assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="../../assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="../../assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="../../assets/js/main.js"></script>
	

</body>
</html>