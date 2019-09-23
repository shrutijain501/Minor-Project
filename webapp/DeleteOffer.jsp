<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="CommonHeaderOwner.jsp" %>
<%@ page import="com.model.Offer" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en" >
<head>
<meta charset="UTF-8">
  <title>Responsive Table</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="resources/table/css/style.css">
</head>
<body>
<div class="table-users">
<div class="header">Users</div>
<table >
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
	<img width="" height=""  src="offerImage/<c:out value='${o.ofid}' />" style="display:none"> 
	<td><img width="100" height="100" src="C://minorimage//${o.ofid}.jpeg " ></td>
	<td>${o.product}</td>
	<td>${o.offer_discount}</td>
	<td>${o.start_date}</td>
	<td>${o.end_date}</td>	
	<td><button name="delete" onclick=window.location.href='Delete.html/<c:out value='${o.ofid}'/>' > Delete </button></td>
</tr>
</c:forEach>
</table>
</div>
</body>
</html>
