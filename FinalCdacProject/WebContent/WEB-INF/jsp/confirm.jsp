
<%@page import="Beans.demo1"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#ccccb3">
<div style="width:25%;height:90px;margin-left:5%;margin-top:0px; ">
<h1 style="margin:0px; padding: 0px;"><img alt="" src="images/logo.jpg" style="width:200px;height:70px;margin-top:10px;"></h1>
</div>
<div class="header">
<%@include file="Header.jsp"%>
</div>
<marquee><h1 style="color:red "><u>Online Vehicle Repair And Services</u></h1></marquee>

<h1 align="center"><u>Confirm Page</u></h1>
<%
	/* ArrayList<demo> plist=(ArrayList<demo>)session.getAttribute("plist"); */
	ArrayList<demo1> plist=(ArrayList<demo1>)session.getAttribute("plist");
%> 
<table border="2">
<h2><u>Customer Details</u></h2>
<tr>
<td><b>Name</b></td>
<td><b>Address</b></td>
<!-- <td><b>Date</b></td> -->
<td><b>Email</b></td>
<td><b>Mobile Number</b></td>
<td><b>Model Name</b></td>
<td><b>Vehicle Number</b></td>
</tr>
<tr>

<td><h4><%=session.getAttribute("name")%></td></h4>
<td><h4><%=session.getAttribute("addr")%></td></h4>
<%-- <td><h4><%=session.getAttribute("date")%></td></h4> --%>
<td><h4><%=session.getAttribute("email")%></td></h4>
<td><h4><%=session.getAttribute("mob")%></td></h4>
<td><h4><%=session.getAttribute("model")%></td></h4>
<td><h4><%=session.getAttribute("vno")%></td></tr></h4>
</table>
<br>
<table border="1">
<h2><u>Product Details</u></h2>
<tr>
<td><b>Service</b></td>
<td><b>Description</b></td>
<td><b>Price</b></td>
</tr>
 <%
 	for(demo1 d : plist)
  {
  	//out.print(d.getDescription());
  	 //out.print(d.getService());
 %>
<tr>
<td><h4><%out.print(d.getService()); %></td></h4>
<td><h4><%out.print(d.getDescription()); %></td></h4>
<td><h4><%out.print(d.getPrice()); %></td></h4>
</tr>
<%
	}

%> 
<tr><td><h4>Total Price:<%=session.getAttribute("pr") %></td></tr></h4>

</table>
<div class="footer_section">
<%@include file="footer.jsp"%>
</div>
</body>
</html>