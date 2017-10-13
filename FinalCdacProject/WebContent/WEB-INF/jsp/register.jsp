<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
/* .hmenu{
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
} */
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

/* Full-width input fields */
input[type=text], input[type=password],input[type=email],input[type=date] ,select,input[type=number]{
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn,.signupbtn {
    float: left;
    width: 100%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/main.css" rel="stylesheet" type="text/css" >
<title>Online Vehical Service</title>
</head>
<body style="background-image: url(images/bgimgRegstration.jpg);" >
<!-- <div> -->
<%-- <div class="header">
<%@include file="Header.jsp"%>
</div> --%>
<div class="clear"></div>
<div class="body_section">
<h2 align="center">Sign Up</h2>

<form action="r1">
  <div class="container">
  <center>
  <table style="border-bottom-style: solid;margin-left:10%;">
  <tr>
<td><label><b>Name</b></label></td>
<td><input type="text" placeholder="Enter Name" name="name" required><br></td>
    </tr>
    <tr>
    <td> <label><b>Password</b></label></td>
    <td><input type="password" placeholder="Enter Password" name="psw" required><br></td>
</tr>
<tr>
<td><label><b>Address</b></label></td>
 <td><input type="text" placeholder="Enter Address" name="add" required><br></td>
 </tr>
  <tr>
    <td> <label><b>Date</b></label></td>
    <td><input type="date" placeholder="Enter Date" name="date" required><br></td>
</tr>
 <tr>
   <td><label><b>Email </b></label></td>
<td><input type="email" placeholder="Enter Email " name="email" required><br></td>
</tr>
    <tr>
    <td><label><b>Mobile Number</b></label></td>
    <td><input type="number" placeholder="Enter Mobile Number"  name="mob" required><br></td>
</tr>  
<tr>
  <td><b>Model Name</b></label></td>
  
 <td><select name="model">
  <option value=" Maruti 800">Maruti 800</option>
  <option value="Maruti omni">Maruti Omni</option>
  <option value="Suzuki baleno">Maruti Suzuki Baleno</option>
  <option value="Tata indica">Indica V2</option>
  <option value="Honda city">Honda City</option>
  <option value="Honda civic">Honda Civic</option>
  <option value="Toyota innova">Innova</option>
  <option value="Audi">Audi</option>
  <option value="Mercedes-Benz">Mercedes-Benz</option>
  <option value="BMW">BMW</option>
</select></td>
</tr> 
<tr> 
    <td><label><b>Vehicle Number</b></label></td>
    
    <td><input type="text" placeholder="Enter Vehicle Number" name="vno" required><br>(eg.MH-12 HT 1302)<br></td>
    </tr>

   
<!--     <label><b>Repeat Password</b></label> -->
<!--     <input type="password" placeholder="Repeat Password" name="psw-repeat" required> -->
<!-- <tr>
   <td> <input type="checkbox" checked="checked"> Remember me</td>
   <td><p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p></td>
</tr> -->
<tr>
   <div class="clearfix">
   <td><button type="button" class="cancelbtn">Cancel</button></td>
   <td><button type="submit" class="signupbtn">Sign Up</button></td>
   </div>
</tr>
  </div>
</form>

</table>
</center>
</div>
<% %>
</div>
<div class="footer_section">
<%@include file="footer.jsp"%>
</div>
<!-- </div> -->
</body>
</html>










<!-- <style>
/* .hmenu{
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
} */
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

/* Full-width input fields */
input[type=text], input[type=password],input[type=email] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn,.signupbtn {
    float: left;
    width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>
 -->





























<!-- 
<!DOCTYPE html>
<html>
<style>
/* .hmenu{
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
} */
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

/* Full-width input fields */
input[type=text], input[type=password],input[type=email] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn,.signupbtn {
    float: left;
    width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>
<body bgcolor="#ccccb3">
<marquee><h1><u>Online Vehicle Repair And Services</u></h1></marquee>
<div class="hmenu">
<menu>
<li><a href="h">Home</a></li>
<li><a href="ser">Services</a></li>
<li><a href="#">Products</a></li>
<li><a href="abt">About Us</a></li>
<li><a href="#">Contact</a></li>
<li><a href="l">Login</a></li>
<li><a href="reg">Registration</a></li>

</menu>
</div>


 <ul>
  <li><a class="h" href="#Home">Home</a></li>
  <li><a href="ser">Services</a></li>
  <li><a href="#">Products</a></li>
  <li><a href="abt">About</a></li>
  <li><a href="#Contact">Contact</a></li>
  <li style="float:right"><a href="l">Login</a></li>
  <li style="float:right"><a href="reg">Registration</a></li>
</ul>
 
<h2 align="center">Sign Up</h2>

<form action="r1" style="border:1px solid #ccc">
  <div class="container">
  
  <label><b>Name</b></label>
    <input type="text" placeholder="Enter Name" name="name" required>
    
     <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
    
    <label><b>Address</b></label>
    <input type="text" placeholder="Enter Address" name="add" required>
    
     <label><b>Email </b></label>
    <input type="email" placeholder="Enter Email " name="email" required>
    
    <label><b>Mobile Number</b></label>
    <input type="text" placeholder="Enter Mobile Number" name="mob" required>
    
    <label><b>Vehicle Number</b></label>
    <input type="text" placeholder="Enter Vehicle Number" name="vno" required>

   
    <label><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
    <input type="checkbox" checked="checked"> Remember me
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <div class="clearfix">
      <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>
</form>

</body>
</html>
 -->