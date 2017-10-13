<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">

function validateee(){
	var va1=document.getElementById("na").value;
	var va2=document.getElementById("phn").value;
	var va3=document.getElementById("ea").value;
	var va4=document.getElementById("ci").value;
	var va5=document.getElementById("are").value;

	var at=va3.indexOf("@");
	var dt=va3.lastIndexOf(".");
	
	
	if(va4==""||va5==""||va3==""||va2==""||va1=="")
	{
		alert("Please Fill All Personal Details....!!!!");
	}
	else
		{
		if(!isNaN(va1))
		{
			var aa=document.formC;
			aa.method="post";
			aa.action='Welcome';
			aa.submit();
			alert("INVALID NAME ....!!!!");
		}
		else
		{
			if(va2.length<10 || va2.length>10)
			{
				var pp=document.formC;
				pp.method="post";
				pp.action="Welcome";
				pp.submit();
				alert("INVALID PHONE NUMBER....!!!!");
			}
			else
			{
				if(at<1 || dt<at+2 || dt+2>=va3.length)
					{
					  var ee=document.formC;
					  ee.method="post";
					  ee.action='Welcome';
					  ee.submit();
					  alert("INVALID EMAIL ID");
					
					}
				else
					{
					
				
		var nm=document.formC;
		nm.method="post";
		nm.action='insert';
		nm.submit();
					}
			}
		}
				
		}//
	
}

</script>

<style type="text/css">

table {
    border-collapse: collapse;
    width: 100%;
    margin-left:500px;
    margin-top:0px;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #778899;}
tr:nth-child(odd){background-color: #C0C0C0;}
th {
    background-color: #4CAF50;
    color: white;
}

.bar {
	width: 100%;
	height: 1px;
	background: #fff ;
}
.bar i {
	width: 95%;
	margin: auto;
	height: 1px ;
	display: block;
	background: #d1d1d1;
}


.wrap {
	width:250px;
	height: auto;
	margin: auto;
	margin-top: 10%;
}


.wrap input {
	border: none;
	background: #fff;
  font-family:Lato ;
  font-weight:700 ;
	display: block;
	height: 40px;
	outline: none;
	width: calc(100% - 24px) ;
	margin: auto;
	padding: 6px 12px 6px 12px;
}


.wrap input[type="text"] {
	border-radius: 7px 7px 0px 0px ;
}

.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    
}
.wrap button {
	width: 100%;
	border-radius: 7px;
	background: #b6ee65;
	text-decoration: center;
	border: none;
	color: #51771a;
  margin-top:-5px;
	padding-top: 14px;
	padding-bottom: 14px;
	outline: none;
	font-size: 13px;	
	border-bottom: 3px solid #307d63;
	cursor: pointer;
	margin-left: 500px;
}
h1{
	text-shadow: 2px 2px orange;
	text-align: center;
}


</style>

</head>
<body>

<h1>ONLINE EMERGENCY VEHICLE REPAIRING SERVICES</h1>

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="Welcome" class="button">HOME</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="aboutus" class="button">ABOUT US</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="AdminLogin" class="button">ADMIN</a>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="feedback" class="button">FEEDBACK</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="services" class="button">SERVICES</a>
<form name="formC" method="post">
<div class="wrap">
<table>
<th colspan="2">PERSONAL INFORMATION</th>
<tr><td>Name:-</td><td><input type="text" id="na" name="Name"><div class="bar">
			<i></i>
		</div></td></tr>

<tr><td>PhoneNo:-</td><td><input type="text" id="phn" class="bar" name="PhoneNo"></td></tr>
<tr><td>Email:-</td><td><input type="text" id="ea" name="Email"></td></tr>
<tr><td>City:-</td><td><input type="text" id="ci" name="City"></td></tr>
<tr><td>Area:-</td><td><input type="text" id="are" name="Area"></td></tr>

</table>
<button onclick="validateee()">Submit</button>
</div>
<!-- <input type="submit" class="button" align="center" value="Submit" onclick="validateee()"> -->

</form>


</body>
</html>