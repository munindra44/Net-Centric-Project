<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>

<body>
<%
	try
	{
		String PackageId=request.getParameter("PackageId");
		String Locations=request.getParameter("Locations");
        String Duration=request.getParameter("Duration");
        String Price=request.getParameter("Price");
		String Valid=request.getParameter("Valid");
        Connection con;
        Statement stmt;
		int rn= 0;
       	Class.forName("com.mysql.cj.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3307/ncp","root","qwerty");
		stmt=con.createStatement();
		rn=stmt.executeUpdate("UPDATE ADD_PACK SET LOCATIONS='"+ Locations +"',DURATION='" + Duration + "',PRICE='" + Price + "',VALID='" + Valid + "' WHERE PACKAGEID='" + PackageId + "'");
		if(rn>0)
		{
%>
			<center>
			<h1>Modified</h1>
			<a href="service1.jsp">Continue</a>
			</center>
<%	
		}
	   	con.close();
       	
    }
	catch(Exception e)
	{
		out.print(e);
	}
%>
</body>
</html>