<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                    <a href="#"><span>AmusementPark</span></a>
                </h1>
            </div>
            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
                    <li><a class="nav-link scrollto" href="#portfolio">Portfolio</a></li>
                    <li class="dropdown"><a href="#"><span>Activity</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li><a href="/activities/viewCustomer">View Activities</a></li>
                        </ul>
                    </li>
                    <li class="dropdown"><a href="#"><span>Login</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li><a href="/loginCustomer">Customer</a></li>
                            <li><a href="/loginAdmin">Admin</a></li>
                        </ul>
                    </li>
                    <li class="dropdown"><a href="#"><span>Tickets</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li><a href="/tickets/book">Book Ticket</a></li>
                            <li><a href="/tickets/view">View Tickets</a></li>
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
            <section id="view-activity">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h2>View Activity</h2>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Activity ID</th>
                                        <th>Activity Name</th>
                                        <th>Activity Charges</th>
                                        <th>Activity Description</th>
                                        <th>Admin ID</th>
                                        <th>Admin Name</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="activity" items="${activities}">
                                        <tr>
                                            <td>${activity.activity_id}</td>
                                            <td>${activity.activity_name}</td>
                                            <td>${activity.activity_charges}</td>
                                            <td>${activity.activity_desc}</td>
                                            <td>${activity.admin_id}</td>
                                            <td>${activity.admin_name}</td>

                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
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
</body>
</html>
