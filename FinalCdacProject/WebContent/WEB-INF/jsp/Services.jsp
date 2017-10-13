<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/main.css" rel="stylesheet" type="text/css" >
<title>Online Vehical Service</title>
</head>
<body bgcolor="#ccccb3">
<!-- <div id="container"> -->
<div style="width:25%;height:90px;margin-left:5%;margin-top:0px; ">
<h1 style="margin:0px; padding: 0px;"><img alt="" src="images/logo.jpg" style="width:200px;height:70px;margin-top:10px;"></h1>
</div>
<div class="header">
<%@include file="Header.jsp"%>
</div>
<marquee><h1 style="color:red "><u>Online Vehicle Repair And Services</u></h1></marquee>
<div class="clear"></div>
<div class="body_section">
<div width="300" height="200">
<h2 style="margin-left:5%;"><a href="https://en.wikipedia.org/wiki/Service_(motor_vehicle)"> Services </a></h2>

<p style="text-align:center;">Fleet Services offers routine maintenance and other services for university-owned vehicles. The requesting department is responsible for the costs.</p> 

<h4 style="margin-left:2%;"><u>Routine service includes:</u></h4>
<div class="service">
Changing the oil and oil filter <a href="https://en.wikipedia.org/wiki/Oil_filter"> Details</a><br>
Rotating tires <a href="https://en.wikipedia.org/wiki/Tire"> Details</a><br>
Checking all fluids <a href="https://en.wikipedia.org/wiki/DOT_3"> Details</a><br>
Pressure-testing the cooling system <a href="https://en.wikipedia.org/wiki/Radiator_(engine_cooling)"> Details</a><br>
Vehicle outfitting <a href="https://en.wikipedia.org/wiki/Car_classification"> Details</a><br>
Tune ups <a href="https://en.wikipedia.org/wiki/Tune-up"> Details</a><br>
Shuttle bus inspection and repair <a href="https://en.wikipedia.org/wiki/Vehicle_inspection"> Details</a><br>
Air conditioning repair <a href="https://en.wikipedia.org/wiki/Air_conditioning"> Details</a><br>
Trailer inspection and repair <a href="https://en.wikipedia.org/wiki/Motor_vehicle_declared_out_of_service"> Details</a><br>
Brake repair <a href="https://en.wikipedia.org/wiki/Brake"> Details</a><br>
Preventive maintenance <a href="https://en.wikipedia.org/wiki/Automobile_repair_shop"> Details</a><br>
Tire service and repair <a href="https://en.wikipedia.org/wiki/Automobile_repair_shop"> Details</a><br>
Repair gas and electric carts <a href="https://en.wikibooks.org/wiki/Automobile_Repair"> Details</a><br>
Emissions testing <a href="https://en.wikipedia.org/wiki/Vehicle_emissions_control"> Details</a><br>
</div>
</div>
</div>
<div class="clear"></div>
<div class="footer_section">
<%@include file="footer.jsp"%>
</div>
</body>
</html>







<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="C:/Users/Kamble/Desktop/BootStrap/bootstrap-3.3.5/bootstrap-3.3.5/js/modal.js"></script>
<style type="text/css">
.hmenu{
		font-weight: bold;
		width: 100%;
}
.hmenu menu {
	padding: 6px 0 7px 0;
	margin: 0;
}
.hmenu li{
	display: inline;
}
.hmenu li {
	color: #494949;
	padding: 6px 3px 4px 3px;
	margin-right: 20px;
	text-decoration: none;
	border-bottom: 5px solid gray;
}
.hmenu li:HOVER {
	border-bottom-color: black;
	color: black;
}

</style>
<!-- <link href="css/main.css" rel="stylesheet" type="text/css" > -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#ccccb3">
<!-- <marquee><h1><u>Online Vehicle Repair And Services</u></h1></marquee> -->
<div class="hmenu">
<menu>
<!-- <li><a href="h">Home</a></li> -->
<li><a href="ser">Services</a></li>
<li><a href="buy">Products</a></li>
<li><a href="abt">About Us</a></li>
<li><a href="#">Contact</a></li>

<li style="float: right;"><%=
session.getAttribute("user")
%><a href="m"> Log Out</a></li>

</menu>
</div>
<div class="header">
<%@include file="Header.jsp"%>
</div>
<div width="300" height="200">
<h2><ul><u><a href="https://en.wikipedia.org/wiki/Service_(motor_vehicle)"> Services </a> </u></ul></h2>

Fleet Services offers routine maintenance and other services for university-owned vehicles. The requesting department is responsible for the costs. 
<ul> <h4><u>Routine service includes:</u></h4>
<li>Changing the oil and oil filter <a href="https://en.wikipedia.org/wiki/Oil_filter"> Details</a></li>
<li>Rotating tires <a href="https://en.wikipedia.org/wiki/Tire"> Details</a></li>
<li>Checking all fluids <a href="https://en.wikipedia.org/wiki/DOT_3"> Details</a></li>
<li>Pressure-testing the cooling system <a href="https://en.wikipedia.org/wiki/Radiator_(engine_cooling)"> Details</a></li>
<li>Vehicle outfitting <a href="https://en.wikipedia.org/wiki/Car_classification"> Details</a></li>
<li>Tune ups <a href="https://en.wikipedia.org/wiki/Tune-up"> Details</a></li>
<li>Shuttle bus inspection and repair <a href="https://en.wikipedia.org/wiki/Vehicle_inspection"> Details</a></li>
<li>Air conditioning repair <a href="https://en.wikipedia.org/wiki/Air_conditioning"> Details</a></li>
<li>Trailer inspection and repair <a href="https://en.wikipedia.org/wiki/Motor_vehicle_declared_out_of_service"> Details</a></li>
<li>Brake repair <a href="https://en.wikipedia.org/wiki/Brake"> Details</a></li>
<li>Preventive maintenance <a href="https://en.wikipedia.org/wiki/Automobile_repair_shop"> Details</a></li>
<li>Tire service and repair <a href="https://en.wikipedia.org/wiki/Automobile_repair_shop"> Details</a></li>
<li>Repair gas and electric carts <a href="https://en.wikibooks.org/wiki/Automobile_Repair"> Details</a></li>
<li>Emissions testing <a href="https://en.wikipedia.org/wiki/Vehicle_emissions_control"> Details</a></li>
 </ul>
</div>
<div class="footer_section">
<%@include file="footer.jsp"%>
</div>
<!-- <a href="book">Book Now</a> -->
</body>
</html> --%>