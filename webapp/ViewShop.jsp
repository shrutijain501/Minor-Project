<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="com.model.Register"%>
<%@include file="CommonHeader.jsp" %>
<!DOCTYPE html>
<html lang="">
<head>
<title>List</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="resources/layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<style>
table, td, th {
  border: 1px solid black;
}

table {
  border-collapse: collapse;
  width: 50%;
}

td {
text-align: center;
  height: 50px;
}
</style>
</head>
<body id="top">
<%
	Register r=new Register();
	r=(Register)request.getAttribute("r");

%>
<center>
<table width = 60%>
<tr><td>Shop Name</td><td> <%=r.getSname() %></td></tr>
<tr><td>Owner Name</td><td><%=r.getFname() %><%=r.getLname() %></td></tr>
<tr><td>Contact No.</td><td><%=r.getCnumber() %> </td></tr>
<tr><td>Address</td><td> <%=r.getAddress() %> </td></tr>
<tr><td>Pincode</td><td> <%=r.getPincode() %></td></tr>
<tr><td>Landmark</td><td> <%=r.getLandmark() %></td></tr>
</table>

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3680.941451040192!2d75.89460471491313!3d22.69322338512086!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3962fcd261a880bd%3A0x9fe155a280759bc4!2sArchana+Saree+Centre!5e0!3m2!1sen!2sin!4v1555006575644!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
<!-- ################################################################################################ -->
</center>
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