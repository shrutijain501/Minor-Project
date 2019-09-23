<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Offer"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.FilterDAO"%>
<%@include file="CommonHeader.jsp" %>
<!DOCTYPE html>
<html lang="">
<head>
<title>List</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="resources/layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<%


%>
<!-- ################################################################################################ -->
  </header>
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="content"> 
      <!-- ################################################################################################ -->
      <div id="gallery">
        <figure>
          <header class="heading">Trending offers...</header>
          <% 
          FilterDAO fd=new FilterDAO();
          List<Offer> mylist= new ArrayList<Offer>();
          mylist=(ArrayList<Offer>)request.getAttribute("mylist");
          for(Offer o: mylist){
          %>
          <img src="offers/<c:out value='${o.ofid}'/>" style="display:none" >
          <ul class="nospace clear"> 
            <li class="one_quarter first"><img src="C://minorimage//<%=o.getOfid()%>.jpeg " alt="Image"></li>
            <li class="one_quarter"><%=o.getProduct() %><br> <%=o.getOffer_discount() %></li>
            <li class="one_quarter"><font color="red">Ends on:</font> <%=o.getEnd_date()%><br><a href="VisitShop/<%=o.getOwnerId()%>">Visit shop..</a></li>
          </ul>
 
          <% }%>
        
        </figure>
      </div>
      <!-- ################################################################################################ -->
      <!-- ################################################################################################ -->
      <nav class="pagination">
        <ul>
          <li><a href="#">&laquo; Previous</a></li>
          <li><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><strong>&hellip;</strong></li>
          <li><a href="#">6</a></li>
          <li class="current"><strong>7</strong></li>
          <li><a href="#">8</a></li>
          <li><a href="#">9</a></li>
          <li><strong>&hellip;</strong></li>
          <li><a href="#">14</a></li>
          <li><a href="#">15</a></li>
          <li><a href="#">Next &raquo;</a></li>
        </ul>
      </nav>
      <!-- ################################################################################################ -->
    </div>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>

<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2016 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="../layout/scripts/jquery.min.js"></script>
<script src="../layout/scripts/jquery.backtotop.js"></script>
<script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>