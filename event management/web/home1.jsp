<%-- 
    Document   : home
    Created on : Nov 27, 2018, 10:44:55 AM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Hello World</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="style.css">
    <script src="js/custom.js"></script>
    <style>
        <style>
.container {
    position: relative;
    width: 50%;
}

.image {
  opacity: 1;
  display: block;
  width: 100%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}

.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}

.container:hover .image {
  opacity: 0.3;
}

.container:hover .middle {
  opacity: 1;
}

.text {
  background-color: black;
  color: white;
  font-size: 16px;
  padding: 16px 32px;
}
 table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
    
}
th, td {
    padding: 15px;
}

</style>
    </style>
</head>
<body>
<header class="site-header">
    <div class="header-bar">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-10 col-lg-2 order-lg-1">
                    <div class="site-branding">
                        <div class="site-title">
                            <a href="#"><img src="images/logo.png" alt="logo"></a>
                        </div><!-- .site-title -->
                    </div><!-- .site-branding -->
                </div><!-- .col -->

                <div class="col-2 col-lg-7 order-3 order-lg-2">
                    <nav class="site-navigation">
                        <div class="hamburger-menu d-lg-none">
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                        </div><!-- .hamburger-menu -->

                         <ul>
                                <li><a  href="#home">Home</a></li>
                                <li><a href="#about">About us</a></li>
                                <li><a href="#event">Events</a></li>
                                <li><a href="#gallery">Gallery</a></li>
                                <li><a  href="#contact">Contact</a></li>
                                <li> <a  href="#contact">Logout</a></li>
                            </ul></nav></div>
                    <div class="col-lg-3 d-none d-lg-block order-2 order-lg-3">
                    <div class="buy-tickets">
                        <a class="btn gradient-bg" href="book.html">Book Events</a>
                    </div><!-- .buy-tickets -->
                </div>
                </div><!-- .col -->

            </div><!-- .row -->
        </div><!-- .container-fluid -->
    </div><!-- .header-bar -->

    <div class="swiper-container hero-slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide" data-date="2018/05/01" style="background: url('images/header-bg.jpg') no-repeat">
                <div class="hero-content">
                    <div class="container">
                        <div class="row">
                            <div class="col flex flex-column justify-content-center">
                                <div class="entry-header">
                                    <div class="countdown flex align-items-center">
                                        <div class="countdown-holder flex align-items-baseline">
                                            <span class="dday"></span>
                                            <label>Days</label>
                                        </div><!-- .countdown-holder -->

                                        <div class="countdown-holder flex align-items-baseline">
                                            <span class="dhour"></span>
                                            <label>Hours</label>
                                        </div><!-- .countdown-holder -->

                                        <div class="countdown-holder flex align-items-baseline">
                                            <span class="dmin"></span>
                                            <label>Minutes</label>
                                        </div><!-- .countdown-holder -->

                                        <div class="countdown-holder flex align-items-baseline">
                                            <span class="dsec"></span>
                                            <label>Seconds</label>
                                        </div><!-- .countdown-holder -->
                                    </div><!-- .countdown -->

                                    <h2 class="entry-title">1 We plan the best events. <br>Go and book now!</h2>
                                </div><!--- .entry-header -->

                               
                            </div><!-- .col -->
                        </div><!-- .container -->
                    </div><!-- .hero-content -->
                </div><!-- .swiper-slide -->
            </div><!-- .swiper-wrapper -->

            <div class="swiper-slide" data-date="2019/05/01" style="background: url('images/header-bg.jpg') no-repeat">
                <div class="hero-content">
                    <div class="container">
                        <div class="row">
                            <div class="col flex flex-column justify-content-center">
                                <div class="entry-header">
                                    <div class="countdown flex align-items-center">
                                        <div class="countdown-holder flex align-items-baseline">
                                            <span class="dday"></span>
                                            <label>Days</label>
                                        </div><!-- .countdown-holder -->

                                        <div class="countdown-holder flex align-items-baseline">
                                            <span class="dhour"></span>
                                            <label>Hours</label>
                                        </div><!-- .countdown-holder -->

                                        <div class="countdown-holder flex align-items-baseline">
                                            <span class="dmin"></span>
                                            <label>Minutes</label>
                                        </div><!-- .countdown-holder -->

                                        <div class="countdown-holder flex align-items-baseline">
                                            <span class="dsec"></span>
                                            <label>Seconds</label>
                                        </div><!-- .countdown-holder -->
                                    </div><!-- .countdown -->

                                    <h2 class="entry-title">2 Exciting offers are <br>waiting for you!</h2>
                                </div><!--- .entry-header -->

                                
                            </div><!-- .col -->
                        </div><!-- .container -->
                    </div><!-- .hero-content -->
                </div><!-- .swiper-slide -->
            </div><!-- .swiper-wrapper -->

            <div class="swiper-slide" data-date="2020/05/01" style="background: url('images/header-bg.jpg') no-repeat">
                <div class="hero-content">
                    <div class="container">
                        <div class="row">
                            <div class="col flex flex-column justify-content-center">
                                <div class="entry-header">
                                    <div class="countdown flex align-items-center">
                                        <div class="countdown-holder flex align-items-baseline">
                                            <span class="dday"></span>
                                            <label>Days</label>
                                        </div><!-- .countdown-holder -->

                                        <div class="countdown-holder flex align-items-baseline">
                                            <span class="dhour"></span>
                                            <label>Hours</label>
                                        </div><!-- .countdown-holder -->

                                        <div class="countdown-holder flex align-items-baseline">
                                            <span class="dmin"></span>
                                            <label>Minutes</label>
                                        </div><!-- .countdown-holder -->

                                        <div class="countdown-holder flex align-items-baseline">
                                            <span class="dsec"></span>
                                            <label>Seconds</label>
                                        </div><!-- .countdown-holder -->
                                    </div><!-- .countdown -->

                                    <h2 class="entry-title">3 Grab the offers and<br>Enjoy your Events.</h2>
                                </div><!--- .entry-header -->

                               
                            </div><!-- .col -->
                        </div><!-- .container -->
                    </div><!-- .hero-content -->
                </div><!-- .swiper-slide -->
            </div><!-- .swiper-wrapper -->
        </div>

        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>

        <!-- Add Arrows -->
        <div class="swiper-button-next flex justify-content-center align-items-center">
            <span><svg viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M1171 960q0 13-10 23l-466 466q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l393-393-393-393q-10-10-10-23t10-23l50-50q10-10 23-10t23 10l466 466q10 10 10 23z"/></svg></span>
        </div>

        <div class="swiper-button-prev flex justify-content-center align-items-center">
            <span><svg viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M1203 544q0 13-10 23l-393 393 393 393q10 10 10 23t-10 23l-50 50q-10 10-23 10t-23-10l-466-466q-10-10-10-23t10-23l466-466q10-10 23-10t23 10l50 50q10 10 10 23z"/></svg></span>
        </div>
    </div><!-- .swiper-container -->
</header><!-- .site-header -->

<div id="about" class="homepage-info-section">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-4 col-lg-5">
                <figure>
                    <img src="images/logo-2.png" alt="logo">
                </figure>
            </div>

            <div class="col-12 col-md-8 col-lg-7">
                <header class="entry-header">
                    <h2 class="entry-title">What is Agenda and why choose our services?</h2>
                </header>

                <div class="entry-content">
                    <p>This website is the application of project management to the creation and<br>development of large scale events such as festivals,weddings,ceremonies,<br>conferences,formal parties,concerts or conventions.</p>
                </div>
                   <div class="entry-content">
                    <p id="read" style="visibility:hidden" >This website consists of Home,About us,Events,Gallery and Contact us buttons.Home button is
                        linked with the homepage.Event button is linked with the page that contains the list of events that we organize.
                     Gallery button is linked with the page that consists our previous events and Contact us button is linked with the page
                     that consists the form where u can give your feedback.</p></div>
                    <a href="#123" class="btn gradient-bg" style="visibility:hidden" onclick="myfun1()" id="more1">Read Less</a>
                <a href="#123" class="btn gradient-bg" onclick="myfun()" id="more">Read More</a>
                <script>
                    function myfun()
                    {
                        document.getElementById("read").style="visibility:visible";
                         document.getElementById("more").style="visibility:hidden";
                          document.getElementById("more1").style="visibility:visible";
                    }
                    function myfun1()
                    {
                        document.getElementById("read").style="visibility:hidden";
                         document.getElementById("more").style="visibility:visible";
                          document.getElementById("more1").style="visibility:hidden";
                    }
                </script>
            </div>
        </div>
    </div>
</div>

<div class="homepage-featured-events">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="featured-events-wrap flex flex-wrap justify-content-between">
                    <div class="event-content-wrap positioning-event-1">
                        <figure>
                            <a href="#"><img src="images/1.jpg" alt="1"></a>
                        </figure>

                        <header class="entry-header">
                            <h3 class="entry-title">Michael Smith in concert</h3>

                            <div class="posted-date">August 25</div>
                        </header>
                    </div>

                    <div id="gallery" class="event-content-wrap positioning-event-2">
                        <figure>
                            <a href="#"><img src="images/2.jpg" alt=""></a>
                        </figure>

                        <header class="entry-header">
                            <h3 class="entry-title">Street art fest</h3>

                            <div class="posted-date">November 28</div>
                        </header>
                    </div>

                    <div class="event-content-wrap positioning-event-3">
                        <figure>
                            <a href="#"><img src="images/3.jpg" alt=""></a>
                        </figure>

                        <header class="entry-header">
                            <h3 class="entry-title">Anabelle in concert</h3>

                            <div class="posted-date">August 28</div>
                        </header>
                    </div>

                    <div class="event-content-wrap positioning-event-4 half">
                        <figure>
                            <a href="#"><img src="images/events-in-london.jpg" alt=""></a>
                        </figure>
                    </div>

                    <div class="event-content-wrap positioning-event-5 half">
                        <figure>
                            <a href="#"><img src="images/check-july.png" alt=""></a>
                        </figure>
                    </div>

                    <div class="event-content-wrap positioning-event-6 half">
                        <figure>
                            <a href="#"><img src="images/summer-festivals.jpg" alt=""></a>
                        </figure>
                    </div>

                    <div class="event-content-wrap positioning-event-7">
                        <figure>
                            <a href="#"><img src="images/90.jpg" alt=""></a>
                        </figure>

                        <header class="entry-header">
                            <h3 class="entry-title">90’s Disco Night</h3>

                            <div class="posted-date">August 28</div>
                        </header>
                    </div>

                    <div class="event-content-wrap positioning-event-8">
                        <figure>
                            <a href="#"><img src="images/modern.jpg" alt="1"></a>
                        </figure>

                        <header class="entry-header">
                            <h3 class="entry-title">Modern Ballet</h3>

                            <div class="posted-date">August 25</div>
                        </header>
                    </div>

                    <div class="event-content-wrap positioning-event-9">
                        <figure>
                            <a href="#"><img src="images/smoke.jpg" alt=""></a>
                        </figure>

                        <header class="entry-header">
                            <h3 class="entry-title">Smoke show</h3>

                            <div class="posted-date">August 28</div>
                        </header>
                    </div>

                    <div class="event-content-wrap positioning-event-10 half">
                        <figure>
                            <a href="#"><img src="images/summer-festival.jpg" alt=""></a>
                        </figure>
                    </div>

                    <div class="event-content-wrap positioning-event-11 half">
                        <figure>
                            <a href="#"><img src="images/autumn.jpg" alt=""></a>
                        </figure>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div  id="event" class="homepage-next-events">
    <div class="container">
        <div class="row">
            <div class="next-events-section-header">
                <h2 class="entry-title">Our events</h2>
                <div><p>We organize various events like Weddings,Parties,Concerts.Below shown is the list of these events.Click on the images to know the details of corresponding events.</p></div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 col-sm-6 col-md-4">
                <div class="next-event-wrap">
                    <figure>
                        
                        <div class="container">
  <img src="images/download.jpg" height="235" width="100"  alt="1">
  <div class="middle">
      <div class="text"><a href="party.html" style="color:white;text-decoration:none">click here</a></div>
  </div>
</div>
                        
                    </figure>

                    <header class="entry-header">
                        <h3 class="entry-title">Parties</h3>
                                            </header>                                      
                </div>
            </div>

            <div class="col-12 col-sm-6 col-md-4">
                <div class="next-event-wrap">
                    <figure>
                        <div class="container">
  <img src="images/wanderlust-concerts-whistler.jpg" height="230" width="100" alt="1">
  <div class="middle">
      <div class="text"><a href="concert.html" style="color:white;text-decoration:none">click here</a></div>
  </div>
</div>
                        
                    </figure>

                    <header class="entry-header">
                        <h3 class="entry-title">Concerts</h3>
                    </header>
                                   </div>
            </div>

            <div class="col-12 col-sm-6 col-md-4">
                <div class="next-event-wrap">
                    <figure>
                        <div class="container">
                        <img src="images/bride-groom-in-orangery.jpg" height="230" width="100" alt="1">
                        <div class="middle">
                            <div class="text"><a href="wedding.html" style="color:white;text-decoration:none">click here</a></div>
                        </div>
                        </div>
                    </figure>

                    <header class="entry-header">
                        <h3 class="entry-title">Weddings</h3>
                    </header>
                                  </div>
            </div>
        </div>
    </div>
</div>
<div class="homepage-regional-events">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <header class="regional-events-heading entry-header flex flex-wrap justify-content-between align-items-center">
                    <h2 class="entry-title">Upcoming Events</h2>

                    <div class="select-location">
                        <a class="btn gradient-bg" href="newjsp.jsp">Event History</a>
                    </div>
                </header>
                 <table border="1" style="width:100%;color:white;text-align:center">
            <tr>
                <td colspan="2"><h3><b>Booked By</b></h3></td>
                <td rowspan="2"><h3><b>Event Name</b></h3></td>
                <td rowspan="2"><h3><b>Event Venue</b></h3></td>
                <th rowspan="2"><h3><b>Event Date</b></h3></th>
                <td rowspan="2"><h3><b>Phone no</b></h3></td></tr>
            <tr>       
                <td><h4><b>FirstName</b></h4></td>
                <td><h4><b>LastName</b></h4></td>
                </tr>
                
                          <%  
                  try{
                      Class.forName("com.mysql.cj.jdbc.Driver");
                  
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mehak", "root", "");
                    String query="select * from event2";
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery(query);
                    while(rs.next())
                    { %>
            <tr>
                <td><%=rs.getString("fname")%></td>
                <td><%=rs.getString("lname")%></td>
                <td><%=rs.getString("ename")%></td>
                <td><%=rs.getString("evenue")%></td>
                <td><%=rs.getString("date")%></td>
                <td><%=rs.getString("phone")%></td>
                            </tr>
            <%
                }
}
catch(Exception e)
{
e.printStackTrace();
} 
%>
        </table>
        <br><br><br><br><br><br><br><br><br><br>
            </div>  
            <div class="col-12">
                <header class="regional-events-heading entry-header flex flex-wrap justify-content-between align-items-center">
                    <h2 class="entry-title">Feedback</h2>

                   
                </header>
                 <table border="1" style="width:100%;color:white">
            <tr>
                <td ><h3><b>Username</b></h3></td>
                <td ><h3><b>Email</b></h3></td>
                <td ><h3><b>Description</b></h3></td>
                </tr>
                
                          <%  
                  try{
                      Class.forName("com.mysql.cj.jdbc.Driver");
                  
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mehak", "root", "");
                    String query="select * from contact";
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery(query);
                    while(rs.next())
                    { %>
            <tr>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("email")%></td>
                <td><%=rs.getString("detail")%></td>
            </tr>
            <%
                }
}
catch(Exception e)
{
e.printStackTrace();
} 
%>
        </table>
                 </div> 
        
        </div>                  
    </div>
        
</div>
        

<div id="contact" class="newsletter-subscribe">
    <header class="regional-events-heading entry-header flex flex-wrap justify-content-between align-items-center">
        <center><h2 class="entry-title">Contact Us</h2></center>
                </header>
    <div class="container">
        <div class="column">
                <div class="newsletter-form">
                    <form class="flex flex-wrap justify-content-center align-items-center" action="feedback" method="post">
                        <div class="col-md-12 col-lg-3">
                            <input type="text" placeholder="Name"name="name" required >
                            <input type="email" placeholder="Your e-mail" name="email" required>
                            <input class="btn gradient-bg" type="submit" value="Send">
                        </div>
                        <div class="col-md-12 col-lg-3">
                          <textarea type="text" placeholder="Write some words of encouragement" cols="60" rows="10" name="det" required></textarea>
                        </div>
                    </form>
                </div>
            </div>            
        </div> 
    </div>

<footer class="site-footer">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <figure class="footer-logo">
                    <a href="#"><img src="images/logo.png" alt="logo"></a>
                </figure>

                <nav class="footer-navigation">
                    <ul class="flex flex-wrap justify-content-center align-items-center">
                        <li><a href="#home">Home</a></li>
                        <li><a href="#about">About us</a></li>
                        <li><a href="#">Events</a></li>
                        <li><a href="#gallery">Gallery</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </nav>

                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

                <div class="footer-social">
                    <ul class="flex flex-wrap justify-content-center align-items-center">
                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>

<div class="back-to-top flex justify-content-center align-items-center">
    <span><svg viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M1395 1184q0 13-10 23l-50 50q-10 10-23 10t-23-10l-393-393-393 393q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l466-466q10-10 23-10t23 10l466 466q10 10 10 23z"/></svg></span>
</div>

<script type='text/javascript' src='js/jquery.js'></script>
<script type='text/javascript' src='js/masonry.pkgd.min.js'></script>
<script type='text/javascript' src='js/jquery.collapsible.min.js'></script>
<script type='text/javascript' src='js/swiper.min.js'></script>
<script type='text/javascript' src='js/jquery.countdown.min.js'></script>
<script type='text/javascript' src='js/circle-progress.min.js'></script>
<script type='text/javascript' src='js/jquery.countTo.min.js'></script>
<script type='text/javascript' src='js/custom.js'></script>

</body>
</html>
