<%@page import="com.dao.OfferDAO"%>
<%@page import="com.dao.RegiterDAO"%>
<%@page import="java.util.*"%>
<%@page import="com.model.Register"%>
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

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="resources/ownerHome/layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<% 
	OfferDAO od=new OfferDAO();
	RegiterDAO rd=new RegiterDAO();
	int id;
	if(request.getAttribute("r")==null)
		response.sendRedirect("Login.jsp");
	id=od.getIdByEmail((String)request.getAttribute("r"));
	String cat= rd.getCategoryByEmail((String)request.getAttribute("r"));
	request.getSession(true);
	session.setAttribute("id", id);
	session.setAttribute("cat",cat);
	Register r=rd.searchAll(id);
%>
<div class="wrapper bgded overlay" style="background-image:url('resources/ownerHome/images/demo/01.jpg');">
  <div id="pageintro" class="hoc clear"> 
    <!-- ################################################################################################ -->
   
						<div class="child-main">
							<div class="child-left">
							<img src="resources/ownerHome/images/side.jpg" alt="image">
							</div>
							<div class="child-right">
								<h3><%=r.getSname()%></h3>
								<h5><%=r.getSname()%></h5>
								<ul class="address">
								<li>
									<ul class="agileits-address-text ">
										<li class="agile-it-adress-left"><b>CATEGORY</b></li>
										<li><span>:</span><%=r.getScategory() %></li>
									</ul>
								</li>
								<li>
									<ul class="agileits-address-text">
										<li class="agile-it-adress-left"><b>PHONE</b></li>
										<li><span>:</span><%=r.getCnumber()%></li>
									</ul>
								</li>
								<li>
									<ul class="agileits-address-text">
										<li class="agile-it-adress-left"><b>ADDRESS</b></li>
										<li><span>:</span><%=r.getAddress()%></li>
									</ul>
								</li>
								<li>
									<ul class="agileits-address-text">
										<li class="agile-it-adress-left"><b>E-MAIL</b></li>
										<li>:<a href="mailto:example@mail.com"> <%=r.getEmail()%></a></li>
									</ul>
								</li>
								
							</ul> 

							</div>
								<div class="clear"></div>
						</div>

</div>
</div>

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <section class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="sectiontitle">
      <h6 class="heading">Explore Offers</h6>
      <p></p>
    </div>
    <ul class="nospace group services">
      <li class="one_quarter first">
        <article class="inverse"><a href="UploadOffer.jsp"><i class="fa fa-3x fa-houzz"></i></a>
          <h6 class="heading font-x1"><a href="UploadOffer.jsp">Upload New Offers</a></h6>
       
        </article>
      </li>
      <li class="one_quarter">
        <article><a href="#"><i class="fa fa-3x fa-weibo"></i></a>
          <h6 class="heading font-x1"><a href="#">Update Existing Offers</a></h6>
         
        </article>
      </li>
      <li class="one_quarter">
        <article class="inverse"><a href="DeleteOffer.html"><i class="fa fa-3x fa-wheelchair-alt"></i></a>
          <h6 class="heading font-x1"><a href="DeleteOffer.html">Delete Offers</a></h6>
        
        </article>
      </li>
      <li class="one_quarter">
        <article><a href="ViewOffer.jsp"><i class="fa fa-3x fa-viacoin"></i></a>
          <h6 class="heading font-x1"><a href="ViewOffer.jsp">View Current Offers</a></h6>
     
        </article>
      </li>
    </ul>
    <!-- ################################################################################################ -->
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
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="resources/ownerHome/layout/scripts/jquery.min.js"></script>
<script src="resources/ownerHome/layout/scripts/jquery.backtotop.js"></script>
<script src="resources/ownerHome/layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>