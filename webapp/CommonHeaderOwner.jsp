<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link href="<c:url value="/resources/layout/styles/layout.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/layout/styles/framework.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/layout/styles/font-awesome.min.css" />" rel="stylesheet">
		<script src="<c:url value="/resources/layout/scripts/jquery.min.js" />"></script>
		<script src="<c:url value="/resources/layout/scripts/jquery.backtotop.js" />"></script>
		<script src="<c:url value="/resources/layout/scripts/jquery.mobilemenu.js" />"></script>
		<title>Street Online</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="<c:url value="/resources/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css" />" >
	</head>
  <body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="fl_left">
      <ul>
        <li><i class="fa fa-phone"></i> +91 88898 81267 </li>
        <li><i class="fa fa-envelope-o"></i> info@gmail.com</li>
      </ul>
    </div>
    <div class="fl_right">
      <ul>
        <li><a href="index.jsp"><i class="fa fa-lg fa-home"></i></a></li>
        <li><a href="Logout">Log-Out</a></li>
        <li><a href="SignUp.jsp">Register</a></li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><a href="index.jsp">Street-Online</a></h1>
      <p>showcase your Bussiness Here</p>
    </div>
    <!-- ################################################################################################ -->
  </header>
  <nav id="mainav" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul class="clear">
      <li class="active"><a href="index.jsp">Home</a></li>
      <li><a href="#">Gallery</a>
      </li>
      <li><a class="drop" href="#">Categories</a>
        <ul>
          <li><a href="list/aparels">Apparels</a></li>
          <li><a href="list/stationary">Stationary</a></li>
          <li><a href="list/gen_store">General Stores</a></li>
	  <li><a href="list/medical">Medical</a></li>
          <li><a href="list/footwear">Footwear</a></li>
          <li><a href="list/saloon">Saloon</a></li>
          <li><a href="list/electricals">Electricals</a></li>
        </ul>
      </li>
      <li><a href="#">Objectives</a></li>
      <li><a href="#">Contact Us</a></li>
      <li><a href="#">About Us</a></li>
      <li><a href="#">Coming Soon</a></li>
    </ul>
    <!-- ################################################################################################ -->
  </nav>
</div>

<!--#################################### -->

<div class="wrapper row2">
</div>

<div class="wrapper row2">
</div>

<div class="wrapper row2">
</div>

<div class="wrapper row4">
</div>
<!-- ################################################################################################ -->
<div class="wrapper row5">
  
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>
