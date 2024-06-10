<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Amusement Park</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />
    <!-- Favicons -->
    <link href="${pageContext.request.contextPath}/img/favicon.png" rel="icon" />
    <link href="${pageContext.request.contextPath}/img/apple-touch-icon.png" rel="apple-touch-icon" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet" />
    <!-- Vendor CSS Files -->
    <link href="${pageContext.request.contextPath}/vendor/aos/aos.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/vendor/glightbox/css/glightbox.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />
    <!-- Template Main CSS File -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" />
</head>
<body>
    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top">
        <div class="container d-flex align-items-center justify-content-between position-relative">
            <div class="logo">
                <h1 class="text-light">
                    <a href="index.html"><span>AmusementPark</span></a>
                </h1>
            </div>
            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
                    <li><a class="nav-link scrollto" href="#portfolio">Portfolio</a></li>
                    <li class="dropdown"><a href="#"><span>Activity</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li><a href="/activities/add">Add Activity</a></li>
                            <li><a href="/activities/view">View Activities</a></li>
                            <li><a href="/activities/update">Update Activity</a></li>
                            <li><a href="/activities/delete">Delete Activity</a></li>

                        </ul>
                    </li>
                    <li class="dropdown"><a href="#"><span>User</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li><a href="login_customer.html" target="_blank">Customer</a></li>
                            <li><a href="login_admin.html" target="_blank">Admin</a></li>
                        </ul>
                    </li>
                    <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>
            <!-- .navbar -->
        </div>
    </header>
    <!-- End Header -->
   <main id="main">
           <section id="add-activity">
               <div class="container">
                   <div class="row">
                       <div class="col-md-6 offset-md-3">
                           <h2>Add Activity</h2>
                           <form id="activityForm" action="${pageContext.request.contextPath}/activities/add" method="POST">
                               <div class="form-group">
                                   <label for="activity_name">Activity Name</label>
                                   <input type="text" name="activity_name" class="form-control" id="activity_name" />
                               </div>
                               <div class="form-group">
                                   <label for="activity_charges">Charges</label>
                                   <input type="text" name="activity_charges" class="form-control" id="activity_charges" />
                               </div>
                               <div class="form-group">
                                    <label for="activity_desc">Detailed Description</label>
                                    <input type="text" name="activity_desc" class="form-control" id="activity_desc" />
                               </div>
                               <div class="form-group">
                                   <label for="admin_id">Admin ID</label>
                                   <input type="text" name="admin_id" class="form-control" id="admin_id" />
                               </div>
                               <div class="form-group">
                                   <label for="admin_name">Admin Name</label>
                                   <input type="text" name="admin_name" class="form-control" id="admin_name" />
                               </div>
                               <button type="submit" class="btn btn-primary">Save Activity</button>
                           </form>
                       </div>
                   </div>
               </div>
           </section>
       </main>
       <!-- End #main -->
    <!-- ======= Footer ======= -->
    <footer id="footer">
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="footer-info">
                            <h3>Amusement-Park</h3>
                            <p class="pb-3"><em></em></p>
                            <p>
                                332C+6V Haldia, West Bengal, India <br />
                                721657, West Bengal<br /><br />
                                <strong>Phone:</strong> +91 9065974917<br />
                                <strong>Email:</strong> ravikrbelauti2002@gmail.com<br />
                            </p>
                            <div class="social-links mt-3">
                                <a href="https://www.instagram.com/ravi_kr_15/" class="twitter"><i class="bx bxl-twitter"></i></a>
                                <a href="https://www.facebook.com/ravikumar.rishu.5" class="facebook"><i class="bx bxl-facebook"></i></a>
                                <a href="https://www.instagram.com/ravi_kr_15/" class="instagram"><i class="bx bxl-instagram"></i></a>
                                <a href="https://www.instagram.com/ravi_kr_15/" class="google-plus"><i class="bx bxl-skype"></i></a>
                                <a href="http://www.linkedin.com/in/ravi-kumar-653215202" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 footer-links">
                        <h4>Useful Links</h4>
                        <ul>
                            <li><i class="bx bx-chevron-right"></i> <a href="#home">Home</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="#about_us">About us</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="#services">Services</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="#services">Terms of service</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="#services">Privacy policy</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-md-6 footer-links">
                        <h4>Our Activity</h4>
                        <ul>
                            <li><i class="bx bx-chevron-right"></i><a href="#portfolio">Gift shops</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="#portfolio">Games & Attractions</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="#portfolio">Thrill Rides</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="#portfolio">Roller coasters</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="#portfolio">Live shows</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-6 footer-newsletter">
                        <h4>Our Newsletter</h4>
                        <p>Amusement Park is the best entertainment place here you can reduce your stress</p>
                        <form action="" method="post">
                            <input type="email" name="email" /><input type="submit" value="Subscribe" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="copyright">
                &copy; Copyright <strong><span>Amusement-Park Technical Team</span></strong>. All Rights Reserved
            </div>
            <div class="credits">Designed by <a href="https://simplehtmlcode.netlify.app/">Ravi Kumar</a></div>
        </div>
    </footer>
    <!-- End Footer -->
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
    <!-- Vendor JS Files -->
    <script src="${pageContext.request.contextPath}/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/aos/aos.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/php-email-form/validate.js"></script>
    <!-- Template Main JS File -->
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
    <script>
            document.getElementById("activityForm").addEventListener("submit", function(event) {
                event.preventDefault();
                fetch("${pageContext.request.contextPath}/activities/add", {
                    method: "POST",
                    body: new FormData(document.getElementById("activityForm"))
                })
                .then(response => {
                    if (response.ok) {
                        // Activity added successfully, show message
                        alert("Thank you for adding the activity!");
                        // You can redirect or perform any other action if needed
                    } else {
                        console.error("Failed to add activity:", response.statusText);
                    }
                })
                .catch(error => {
                    console.error("Error adding activity:", error);
                });
            });
        </script>
</body>
</html>
