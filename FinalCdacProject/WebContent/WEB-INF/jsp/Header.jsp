<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- <marquee style="color: white;"><h1 ><u>Online Vehicle Repair And Services</u></h1></marquee> -->
<div class="hmenu">
<menu>
<ul class="ul-cls">

<!-- <li><a href="h">Home</a></li> -->
<li><a href="ser">Services</a></li>
<li><a href="buy">Products</a></li>
<li><a href="abt">About Us</a></li>
<li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>

<li style="float: right;">
<a href="${pageContext.request.contextPath}/"> Log Out</a>

</li>
<h3 style="float: right; background-color:orange; ">Welcome <%=
session.getAttribute("username")
%></h3>
</ul>
</menu>
</div>	
</body>
</html>











