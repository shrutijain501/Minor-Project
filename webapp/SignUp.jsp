<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Street Online</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<c:url value="/resources/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css" />" >
	<link href="<c:url value="resources/css/style.css" />" rel="stylesheet">
	<script language="javascript">
          function validate()
          {  
            var oid,fname1,lname,cno,sname,scat,sregno,ano,add,pin,landmark,email,pass,cpass;          
            pass=document.getElementById("PASS").value;
            cpass=document.getElementById("CPASS").value;
            if(pass!=cpass)
     	   {
     	   alert("Password do not match");
     	   return false;
     	   }
            

            }
         
	</script>
	  </head>
  
  <body>

		<div class="wrapper" style="background-image: url('resources/images/bg4.jpg');">
			<div class="inner">
				<div class="image-holder">
				</div>
				<form method="post" action="./save">
					<h3>Registration Form</h3>
					<div class="form-group">
						<input type="text" placeholder="First Name" class="form-control" name="Fname" id="FNAME" required>

						<input type="text" placeholder="Last Name" class="form-control" name="Lname" id="LNAME" required>
					</div>
					<div class="form-wrapper">
						<input type="tel" placeholder="Contact Number" class="form-control" name="Cnumber" pattern="[0-9]{10}" title="must be 10 digits" required>	
					</div>
					<div class="form-wrapper">
						<input type="text" placeholder="Shop Name" class="form-control" name="Sname" id="SNAME" required>
					</div>
					<div class="form-wrapper">
						<select name="Scategory" class="form-control" id="SCAT">
							<option value="" disabled selected>Shop Category</option>
							<option value="aparels">Apparels</option>
							<option value="stationary">Stationary</option>
							<option value="gen_store">General Store</option>
							<option value="salon">Salon</option>
							<option value="medical">Medical</option>
							<option value="footwear">Footwear</option>
							<option value="electronics">Electronics</option>
						</select>
						<i class="zmdi zmdi-caret-down" style="font-size: 17px"></i>
					</div>
					
					<div class="form-wrapper">
						<input type="text" placeholder="Shop Registration No." class="form-control" name="SRegNo" id="SREGNO" required>
					</div>
					<div class="form-wrapper">
						<input type="tel" placeholder="Aadhar Number" class="form-control" name="Anumber" id="ANO" pattern="[0-9]{12}" title="must be 12 digits" required>
					</div>
					
					<div class="form-wrapper">
						<input type="text" placeholder="Address" class="form-control" name="Address" id="ADD" required>
					</div>
					
					
					<div class="form-group">
						<input type="tel" placeholder="Pincode" class="form-control" name="Pincode" pattern="[0-9]{6}" title="must be 6 digits" required>

						<input type="text" placeholder="Landmark" class="form-control" name="Landmark" id="LANDMARK" required>
					</div>
					
					<div class="form-wrapper">
						<input type="email" placeholder="Email Address" class="form-control" name="Email" id="EMAIL" pattern=".+@gmail.com" required>
						<i class="zmdi zmdi-email"></i>
					</div>
					<div class="form-wrapper">
						<input type="password" placeholder="Password" class="form-control" name="Password" id="PASS" required>
						<i class="zmdi zmdi-lock"></i>
					</div>
					<div class="form-wrapper">
						<input type="password" placeholder="Confirm Password" class="form-control" name="Cpassword" id="CPASS" required>
						<i class="zmdi zmdi-lock"></i>
					</div>
					
					<button type="submit" onclick="return validate(); ">Register
						<i class="zmdi zmdi-arrow-right"></i>
					</button>
					<button type="button" onclick=window.location.href='index.jsp'>Cancel
						<i class="zmdi zmdi-arrow-right"></i>
					</button>
				</form>
				       <font color=red>${msg}</font>  
			</div>
		</div>
		
	</body>
</html>
