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
        String Amount=request.getParameter("Amount");
		String UName=request.getParameter("UName");
		String CardHolderName=request.getParameter("CardHolderName");
		String CardNo=request.getParameter("CardNo");
        String Bank=request.getParameter("Bank");
		String Branch=request.getParameter("Branch");
		
		PreparedStatement ps;
        Connection con;
        ResultSet rs= null;
       	Class.forName("com.mysql.cj.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3307/ncp","root","qwerty");
       
       	ps=con.prepareStatement("insert into PAY_PACK values(?,?,?,?,?,?)");
		ps.setString(1,Amount);
		ps.setString(2,UName);
		ps.setString(3,CardHolderName);
		ps.setString(4,CardNo);
		ps.setString(5,Bank);
		ps.setString(6,Branch);
		int insertResult = ps.executeUpdate();
        
		
		if(insertResult!=0)
        {
			response.sendRedirect("pack_final.html");
		}
    }
	catch(Exception e)
	{
		out.print(e);
	}
%>
</body>
</html>