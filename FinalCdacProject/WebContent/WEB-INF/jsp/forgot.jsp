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
}
 */
/* form {
    border: 3px solid #f1f1f1;
} */
/*  ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
} */
/* 
li {
    float: left;
    border-right:1px solid #bbb;
}

li:last-child {
    border-right: none;
} */

/* li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
} */

/* li a:hover:not(.active) {
    background-color: #111;
} */

/* .active {
    background-color: #4CAF50;
} */

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #00ced1;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* button:hover {
    opacity: 0.8;
}
 */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #800000;
}

/* .imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
} */

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/main.css" rel="stylesheet" type="text/css" >
<title>Online Vehical Service</title>
</head>
<body style="background-image: url(images/bgimgRegstration.jpg);" >
<!-- <div id="container"> -->
<%-- <div class="header">
<%@include file="Header.jsp"%>
</div --%>>
<div class="clear"></div>
<div class="body_section">

<h2 align="center">Sign In</h2>
<form action="in" method="post">
<div style="width:50%;margin:0 auto;">
  <div class="imgcontainer">
    <!-- <img src="img_avatar2.png" alt="image not found" class="avatar"> -->
  </div>
<table style="margin-left:30%;">
<tbody>
<tr>
   <td> <label><b>Username</b></label></td>
    <td><input type="<%=request.getAttribute("user") %>" placeholder="Enter Username" name="user" required></td>
</tr>
<tr>
<td><label><b>Password</b></label></td>
<td><input type="password" placeholder="Enter Password" name="pass" required></td>
</tr>
<tr>
<td> <button type="button" class="cancelbtn">Cancel</button></td><br>
<td><button type="submit">Login</button></td>
 </tr>

<tr>
<%-- <% String s=(String)request.getAttribute("msg");
if(s!=null)
{
%> --%>

<b style="margin-left: 30%;"><%= s%></b>
<%} %>
</tr>
</tbody>
</table>
<div class="container" style="background-color:#f1f1f1">
</div>
</div>
</form>
</div>

<div class="footer_section">
<%@include file="footer.jsp"%>