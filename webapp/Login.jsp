<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@include file="CommonHeader.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script language="javascript">

function validate()
{  
	function validateForm() {
		var x=document.getElementById("EMAIL").value;
		  var atpos = x.indexOf("@");
		  var dotpos = x.lastIndexOf(".");
		  if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
		    alert("Not a valid e-mail address");
		    return false;
		  }
		}

}

</script>

</head>
<body>
<center>
<div class="w3-container w3-half w3-margin-top" align="center">
<form class="w3-container w3-card-4" action="./login" method="post" >
<h2>Login</h2>
<p>
<input class="w3-input" type="email" name="email" id="EMAIL"style="width:90%" pattern=".+@gmail.com" required>
<label>Email</label></p>
<p>
<input class="w3-input" type="password" name="password" style="width:90%" required> 
<label>Password</label></p>


<p>
<input id="milk" class="w3-check" type="checkbox" checked="checked">
<label>Stay logged in</label></p>

<p>
<button type="submit" class="w3-button w3-section w3-teal w3-ripple" onclick="return validate();"> Log in </button></p>

</form>
<h4><font align=center color="Red"> Please Login to Continue....!!</font></h4>
</div>
</center>
</body>
</html> 
