<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<body bgcolor="#ccccb3">
<marquee><h1><u>Online Vehicle Repair And Services</u></h1></marquee>
<div class="hmenu">
<menu>
<li><a href="index.jsp">Home</a></li>
<li><a href="Services.jsp">Services</a></li>
<li><a href="#">Products</a></li>
<li><a href="About.jsp">About Us</a></li>
<li><a href="#">Contact</a></li>
<li><a href="login.jsp">Login</a></li>
<li><a href="register.jsp">Registration</a></li>

</menu>
</div>
<div class="gallery">
  <a target="_blank" href="">
    <img src="C:/Users/Kamble/Pictures/project/Free-Cars-Full-HD-Images-1080p.jpg" alt="Image not found" width="300" height="200">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>

<div class="gallery">
  <a target="_blank" href="">
    <img src="C:/Users/Kamble/Pictures/project/Free-Download-HD-Car-Wallpapers-Desktop.jpg" alt="Image not found" width="600" height="400">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>

<div class="gallery">
  <a target="_blank" href="">
    <img src="C:/Users/Kamble/Pictures/project/mercedes_benz_mercedes_amg_front_view_silver_wood_100115_1920x1080.jpg" alt="Image not found" width="600" height="400">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>

<div class="gallery">
  <a target="_blank" href="">
    <img src="C:/Users/Kamble/Pictures/project/New-Sports-Cars-Supercars-HD-Wallpaper-610x343.jpg" alt="Image not found" width="600" height="400">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>


</body>
</html>