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
<title>Online Vehical Service</title>
<link rel="stylesheet" href="css/slider.css">
<script type="text/javascript" src="C:/Users/Kamble/Desktop/BootStrap/bootstrap-3.3.5/bootstrap-3.3.5/js/modal.js"></script>
<style type="text/css">
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
<body bgcolor="#ccccb3">  <!-- style="background-image: url('https://s3.ap-south-1.amazonaws.com/ekdaavproject/images+for+project/index.jpg')" -->
<!-- <marquee><h1><u>Online Vehicle Repair And Services</u></h1></marquee> -->
<div style="width:25%;height:90px;margin-left:5%;margin-top:0px; ">
<h1 style="margin:0px; padding: 0px;">
<img alt="" src="images/logo.jpg" style="width:200px;height:70px;margin-top:10px;"></h1>
</div>
<div class="header">
<%@include file="Header.jsp"%>
</div>
<marquee><h1 style="color:red "><u>Online Vehicle Repair And Services</u></h1></marquee>
<div class="hmenu">
<menu>
<!-- <li><a href="h">Home</a></li>
<li><a href="ser">Services</a></li>
<li><a href="buy">Products</a></li>
<li><a href="abt">About Us</a></li>
<li><a href="#">Contact</a></li> -->

<li style="float: right;"><%
String name=request.getParameter("user");  
//out.print("Welcome "+name);
 
%><!-- <a href="m"> Log Out</a></li> -->

</menu>
</div>
<%-- <h3 style="text-align:center;">Welcome 
<%
String name1=request.getParameter("user");  
out.print(name1);
session.setAttribute("user", name1);
//session.setAttribute("user",name); 

%> To CarAuto.com </h3> --%>

<%
//String name=request.getParameter("name");
//HttpSession httpSession=request.getSession();

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sp","root","root");
	
	
	Statement ps=con.createStatement();
	ResultSet rs=ps.executeQuery("select * from register where name='"+name+"'");
	  session.setAttribute("name","p");

	while (rs.next())
	{
  session.setAttribute("name", rs.getString(1));
	 session.setAttribute("pass", rs.getString(2));
	  session.setAttribute("addr", rs.getString(3));
	 /*  session.setAttribute("date", rs.getDate(4)); */
	  session.setAttribute("email", rs.getString(4));
	  session.setAttribute("mob", rs.getLong(5));
	  session.setAttribute("model", rs.getString(6));
	  session.setAttribute("vno", rs.getString(7));
	}
%>

<%-- <%=session.getAttribute("name") %> --%>
<div id="container"> 

<div class="clear"></div>
<div class="body_section">
<div class="slider_div">
<div class="slider-container">
  <div class="slider">
    <div class="slider__item">
      <img src="images/imgfront1.jpg" alt="" class="slider-img-cls">
      <span class="slider__caption"><a href=""></a> </span>
    </div>
    <div class="slider__item">
      <img src="images/imgfront3.jpeg" alt="" class="slider-img-cls">
      <span class="slider__caption">2 Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa, facilis.</span>
    </div>
    <div class="slider__item">
      <img src="images/imgfront2.jpg" alt="" class="slider-img-cls">
      <span class="slider__caption">3 Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit, culpa!</span>
    </div>
  </div>
    <div class="slider__switch slider__switch--prev" data-ikslider-dir="prev">
      <span><svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 20 20"><path d="M13.89 17.418c.27.272.27.71 0 .98s-.7.27-.968 0l-7.83-7.91c-.268-.27-.268-.706 0-.978l7.83-7.908c.268-.27.7-.27.97 0s.267.71 0 .98L6.75 10l7.14 7.418z"/></svg></span>
    </div>
    <div class="slider__switch slider__switch--next" data-ikslider-dir="next">
      <span><svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 20 20"><path d="M13.25 10L6.11 2.58c-.27-.27-.27-.707 0-.98.267-.27.7-.27.968 0l7.83 7.91c.268.27.268.708 0 .978l-7.83 7.908c-.268.27-.7.27-.97 0s-.267-.707 0-.98L13.25 10z"/></svg></span>
    </div>
</div>

<script src="js/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/jquery-1.11.1.min.js"><\/script>')</script>

<script src="js/slider.js"></script>
<script>
$(".slider-container").ikSlider({
  speed: 100
});
$(".slider-container").on('changeSlide.ikSlider', function (evt) { console.log(evt.currentSlide); });

</script>

</div>
</div>
<div class="clear"></div>
<div class="footer_section">
<%@include file="footer.jsp"%>
</div>
</div>
</body>
</html>