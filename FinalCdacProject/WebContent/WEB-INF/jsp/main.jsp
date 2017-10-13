<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/main.css" rel="stylesheet" type="text/css" >
<!-- <style type="text/css">
div.gallery {
			
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 180px;
}

div.gallery:hover {
    border: 1px solid #777;
}

div.gallery img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
}
 ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
    border-right:1px solid #bbb;
}

li:last-child {
    border-right: none;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}
 
 
 .main-container{
width:100%;
height: auto;
background-image: url(images/background.jpg);
background-size: 100% auto; 
background-repeat:no-repeat;
}
body{
width: 100%;
height:auto;
margin:0px;
padding: 0px;
}

</style> -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Vehicle Repair And Services
</title>
</head>
<body bgcolor="#ccccb3" class="main-container"> <!--  style="background-image: url('https://s3.ap-south-1.amazonaws.com/ekdaavproject/images+for+project/background.jpg');" -->
<form action="l">
<div style="width:25%;height:90px;margin-left:5%;margin-top:0px; ">
<h1 style="margin:0px; padding: 0px;"><img alt="" src="images/logo.jpg" style="width:200px;height:70px;margin-top:10px;"></h1>
</div>
<!-- <h1 style="padding-right: 45%;background-color: silver;"><u></u></h1> -->
<div>
<ul>
  <!--<li><a class="h" href="h">Home</a></li>
  <li><a href="abt">About</a></li>
   <li><a href="ser">Services</a></li>
  <li><a href="#">Products</a></li>
  
  <li><a href="#Contact">Contact</a></li> -->
  <li style="float:right"><a href="l">Login</a></li>
  <li style="float:right"><a href="reg">Registration</a></li>
</ul>
<marquee><h1 style="color:red "><u>Online Vehicle Repair And Services</u></h1></marquee>
<div style="width:70%;height:auto;margin:0 auto;">
<h2><u>About CarAuto.com</u></h2>
<p>
<h3 style="color: maroon;text-align:justify;">
CarAuto.com, a web portal for online car servicing and repair.
CarAuto provides repair & service of Car  for all brands like Maruti Suzuki, Toyota, Hyundai, Honda, Audi, Volkswagen, Nissan, Renault, Skoda, Tata Motors, Force Motors, Mahindra & Mahindra, GM, Fiat, Mitsubishi, Ford, Mercedes-Benz, BMW, Jaguar, Range Rover and Others.</p>
</h3>
</div>
<br>
<div align="center">
<h1 style="font-size: xx-large;">Experience The CarAuto.com !!</h3>

</div>
<div align="center">
<input type="submit" class="button" value="Get Started">

</div>

</div>
<div class="clear"></div>
<div class="footer_section">
<%@include file="footer.jsp"%>
</div>
<!-- <a href="admin">For Admin Login</a> -->
<%
String n=null;
session.setAttribute("n",n); %>
</form>
<%

%>
</body>
</html>