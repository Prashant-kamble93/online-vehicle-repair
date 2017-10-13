<%@page import="Beans.demo1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="css/main.css" rel="stylesheet" type="text/css" >
<head>
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
table {
    border-collapse: separate;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr{background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}
input[type=submit] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
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
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#ccccb3">
<form action="conf">
<div style="width:25%;height:90px;margin-left:5%;margin-top:0px; ">
<h1 style="margin:0px; padding: 0px;"><img alt="" src="images/logo.jpg" style="width:200px;height:70px;margin-top:10px;"></h1>
</div>
<div class="header">
<%@include file="Header.jsp"%>
</div>
<marquee><h1 style="color:red "><u>Online Vehicle Repair And Services</u></h1></marquee>

<br><br>

<table cellpadding="2" cellspacing="2" border="1"><tr>
   <th>Product Id</th>
   <th>Type of Product</th>
   <th>Product Description</th>
   <th>Price</th>
</tr>

<%
	double p=0;
String s=null,de=null;
ArrayList<demo1> plist=(ArrayList<demo1>)session.getAttribute("plist"); 
for(Beans.demo1 d : plist)
{
%>
<tr>

<td>
<%= d.getId()%>
</td><td>
<%= d.getService()%>
</td>
<td>
<%= d.getDescription()%>
</td>
<td>
<%= d.getPrice()%>
</td>

</tr>
<%
 
	p=p+d.getPrice();
	s=s+d.getService();
	de=de+d.getDescription();
	}
%>
<tr>
<td>Total</td>
<td>
<%=p %>
<%
session.setAttribute("ser", s);
session.setAttribute("desc", de);
session.setAttribute("pr", p);
%>
</td>
</tr>
</table> 
<br><br>
<input style="float: right; width: 18%; height: 70%;" type="submit" value="Confirm">
<button style="float: left; width: 18%; height: 70%;"><a href="buy">Shop More</a></button>
</form>
<div class="footer_section">
<%@include file="footer.jsp"%>
</div>
</body>
</html>