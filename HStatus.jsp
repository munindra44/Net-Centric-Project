<%@ page import="com.mysql.jdbc.Driver" %>

<html>
<head>
<style type="text/css">
#oval{
	background:brown;
	color:white;
	float:left;
	font:normal 13px tahoma;
	line-height:16px;
	height:24px;
	padding-left:11px;
	text-decoration:none;
	width:60px;
	border-radius:60px;
	}
</style>
</head>
<body>
<form name="Login" action="HStatus1.jsp">
	<div style="width:auto; height:50px; background:Slateblue;">
	<br/>
	<table align="left">
	<tr>
	<td><a href="index.html" style="color:white">OTRS</a></td>
	</tr>
	</table>
	<table align="right">
    <tr>
        <td><strong>User Name:</strong></td>
        <td><input type="text" size="20" name="UName"></td>
		<td><strong>Email:</strong></td>
        <td><input type="text" size="20" name="Email"></td>
		<td><input id="oval" type="submit" value="Submit" name="submit"></td>
    `	<td><input id="oval" type="reset" value="Cancel" name="cancel"></td>
	</tr>
</table>
	</div>

	<div style="width:auto; height:500;">
	<img src="img/Gallery/6.jpg" width="100%" height="500">
	</div>
	<div style="width:auto; height:120px; background:skyblue;">
	<marquee behavior="alternate"   scrollamount="7" direction="left" onMouseOver="stop()" onMouseOut="start()">
<h1>SEARCH YOUR BOOKING THROUGH HERE</h1></marquee>
            </div>
			</form>
	</body>
</html>