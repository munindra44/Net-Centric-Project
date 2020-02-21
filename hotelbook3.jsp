<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.mysql.jdbc.Driver" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>

<body>
<form name="form1" action="hotelbook4.jsp" method="post">
<%
	try
	{
        String Amount=request.getParameter("Amount");
		String CardHolderName=request.getParameter("CardHolderName");
        String CardNo=request.getParameter("CardNo");
        String Bank=request.getParameter("Bank");
		PreparedStatement ps;
        Connection con;
        ResultSet rs= null;
       	Class.forName("com.mysql.cj.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3307/ncp","root","qwerty");
       	ps=con.prepareStatement("insert into HOTEL_PAYMENT values(?,?,?,?)");
		ps.setString(1,Amount);
		ps.setString(2,CardHolderName);
		ps.setString(3,CardNo);
		ps.setString(4,Bank);
		int insertResult = ps.executeUpdate();
        if(insertResult!=0)
        {
			response.sendRedirect("hotel_book4.html");
		}
    }
	catch(Exception e)
	{
		out.print(e);
	}
%>
         
</body>
</html>