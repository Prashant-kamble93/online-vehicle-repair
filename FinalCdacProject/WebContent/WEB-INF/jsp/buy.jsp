<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/main.css" rel="stylesheet" type="text/css" >
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

<div style="float: left;">
<p><h2><u>Products</u></h2></p>
<table>
  <tr>
    <th>Product Id</th>
    <th>Type of Product</th>
    <th align="center">Product Description</th>
    <th>Price</th>
    <th></th>
  </tr>
  <%
  double p=0;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sp","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from routine");
while(rs.next())
{
	%>
	<tr><td><%= rs.getInt(1) %></td><td><%= rs.getString(2) %></td><td><%= rs.getString(3) %></td><td><%= rs.getDouble(4) %></td>
	<td><button>
	<a href="p?id=<%=rs.getInt(1)%>">Add To Cart</a></button>
	</td>
	</tr>
	<% 

}
%>
  <%session.getAttribute("name") ;%>

</table>
</div>
<div>

</div>
<div class="clear"></div>
<div class="footer_section">
<%@include file="footer.jsp"%>
</div>
</body>
</html>