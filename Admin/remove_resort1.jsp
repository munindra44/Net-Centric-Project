<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.mysql.jdbc.Driver" %>

<%
	String resortid=request.getParameter("resortid");
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<%
	try
	{
        Connection con;
        Statement stmt;
		int rn=0;
		
       	Class.forName("com.mysql.cj.jdbc.Driver");
        con =DriverManager.getConnection("jdbc:mysql://localhost:3307/ncp","root","qwerty");
       	
		stmt=con.createStatement();
		rn=stmt.executeUpdate("delete from ADD_RESORT where RESORTID='" + resortid + "'");
		if(rn>0)
		{
		 response.sendRedirect("service1.jsp");	
		}
		else
		{
		response.sendRedirect("../error.html");
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