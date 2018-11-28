<%-- 
    Document   : newjsp
    Created on : Nov 27, 2018, 12:03:26 AM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <title>Hello World</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="style.css">
    <script src="js/custom.js"></script> 
    <style>
        table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 15px;
}

</style>
</head>
<body>
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

                        </nav></div>
                    <div class="col-lg-3 d-none d-lg-block order-2 order-lg-3">
                    <div class="buy-tickets">
                        <a class="btn gradient-bg" href="home.jsp">Back </a>
                    </div><!-- .buy-tickets -->
                </div>
                </div><!-- .col -->
        </div></div>
<div class="homepage-next-events">
    <div class="container">
            <div class="next-events-section-header">
                <h2 class="entry-title">Event History</h2>
            </div>
        <div>
        <table border="1" style="width:100%;text-align:center">
            <tr>
                <td colspan="2"><h3><b>Booked By</b></h3></td>
                <td rowspan="2"><h3><b>Event Name</b></h3></td>
                <td rowspan="2"><h3><b>Event Venue</b></h3></td>
                <th rowspan="2"><h3><b>Event Date</b></h3></th></tr>
            <tr>       
                <td><h4><b>FirstName</b></h4></td>
                <td><h4><b>LastName</b></h4></td>
            </tr>
                
                          <%  
                  try{
                      Class.forName("com.mysql.cj.jdbc.Driver");
                  
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mehak", "root", "");
                    String query="select * from event2 where date<CURRENT_DATE";
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
</body>
</html>
