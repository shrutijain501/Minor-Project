<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="CommonHeaderOwner.jsp" %>    
<!DOCTYPE html>

<html lang="">
<head>
<title>Home</title>
<meta charset="utf-8">
<meta name="keywords" content="Travel Guide, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup 
Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<link href="resources/ownerHome/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="//fonts.googleapis.com/css?family=Yanone+Kaffeesatz:200,300,400,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Text+Me+One" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="resources/table/css/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="resources/ownerHome/layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">

<div class="wrapper row3">
  <section class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="sectiontitle">
      <h6 class="heading">Current Offers</h6>
      <input type="button" value="View Offers" onclick="./viewOffer">
      <p></p>
    </div>
    <div class="table-users">
<div class="header">Offers</div>
<table cellspacing="0">
<tr>
<th>Image</th>     
<th>Product Name</th>         
<th width="230">Offer Details</th>         
<th>Start Date</th>         
<th>End Dates</th>
<th>Action</th>
</tr>
<c:forEach var="o" items="${mylist}">
<tr>
	<img width="" height="" src="offerImage/<c:out value='${o.ofid}' />">
	<td><img width="100" height="100" src="C:/minor_image/${o.ofid}.jpeg"></td>
	<td>${o.product}</td>
	<td>${o.offer_discount}</td>
	<td>${o.start_date}</td>
	<td>${o.end_date}</td>	
</tr>
</c:forEach>
</table>
</div>
  </section>
</div>
<!-- ################################################################################################ -->


<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2019 - All Rights Reserved - <a href="#">Street-Online</a></p>
    <p class="fl_right"> <a target="_blank" href="home.jsp" title="Free Website Templates">Street Online</a></p>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="resources/ownerHome/layout/scripts/jquery.min.js"></script>
<script src="resources/ownerHome/layout/scripts/jquery.backtotop.js"></script>
<script src="resources/ownerHome/layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>