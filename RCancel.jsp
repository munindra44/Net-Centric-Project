<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>

<body>
<%
	try
	{
    String UName = request.getParameter("UName");    
    String Email = request.getParameter("Email");
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ncp","root","qwerty");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("delete from BOOK_RESORT where UNAME='" + UName + "' and EMAIL='" + Email + "'");
    if(rs.next()) 
	{
		
        response.sendRedirect("index.html");
    } 
	else
		{
		response.sendRedirect("error.html");
		}
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>    
</body>
</html>