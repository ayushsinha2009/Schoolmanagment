<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>School Management System</title>
     
<meta charset="utf-8">
   <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
        <!-- Bootstrap -->
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap rtl -->
        <!--<link href="assets/bootstrap-rtl/bootstrap-rtl.min.css" rel="stylesheet" type="text/css"/>-->
        <!-- Pe-icon-7-stroke -->
        <link href="assets/pe-icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet" type="text/css"/>
        <!-- style css -->
        <link href="assets/dist/css/stylecrm.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/grid_12.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/slider.css">
<link href='http://fonts.googleapis.com/css?family=Cabin+Sketch:400,700' rel='stylesheet' type='text/css'>
<script src="js/jquery-1.7.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script>
$(document)
    .ready(function () {
    $('.slider')
        ._TMS({
        show: 0,
        pauseOnHover: true,
        prevBu: '.prev',
        nextBu: '.next',
        playBu: false,
        duration: 800,
        preset: 'fade',
        pagination: true,
        pagNums: false,
        slideshow: 7000,
        numStatus: false,
        banners: false,
        waitBannerAnimation: false,
        progressBar: false
    })
});
</script>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
<![endif]-->
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
  <!--==============================header=================================-->
  <header>
    <nav>
      <div id="slide">
        <div class="slider">
          <ul class="items">
            <li><img src="images/slider-1.jpg" alt=""></li>
            <li><img src="images/slider-2.jpg" alt=""></li>
            <li><img src="images/slider-3.jpg" alt=""></li>
          </ul>
        </div>
        <a href="#" class="prev"></a><a href="#" class="next"></a> </div>
      <ul class="menu">
        <li class="current"><a href="Default.aspx" title="Click Here To Move In Home Page" class="clr-1">Home</a></li>
        <li><a href="#" title="You Will be redirected to the About Page" class="clr-5">About-Us</a></li>
          <%--<li><a href="#" class="clr-5">Services</a></li>--%>
        <li><a href="#" title="You Will be redirected to the Contact Page" class="clr-5">Contact-Us</a></li>
          <li><a href="AdminLogin/AdminLogin.aspx" title="Click Here To Go in a Login Panel" class="clr-4">Login</a></li>
      </ul>
    </nav>
  </header>
  <!--==============================content================================-->

        <!--==============================footer=================================-->
        <footer>
          <p>© 2019 School Management System</p>
          <p>Designed & Developed By:-<a target="_blank" href="http://www.iphygenia.com" class="link">Iphygenia Solution Pvt.Ltd.</a></p>
        </footer>
      </div>
      <div class="clear"></div>
    </div>
  </section>
</div>
    </form>
</body>
</html>
