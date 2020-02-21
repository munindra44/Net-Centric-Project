<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>ADD PACKAGE</title>
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
		PreparedStatement ps;
        Connection con;
        ResultSet rs= null;
       	Class.forName("com.mysql.cj.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3307/ncp","root","qwerty");
       
       	ps=con.prepareStatement("insert into ADD_PACK values(?,?,?,?,?)");
		ps.setString(1,PackageId);
		ps.setString(2,Locations);
		ps.setString(3,Duration);
		ps.setString(4,Price);
		ps.setString(5,Valid);
        int insertResult = ps.executeUpdate();
        if(insertResult!=0)
        {
			response.sendRedirect("successfullyadded.html");
		}
    }
	catch(Exception e)
	{
		out.print(e);
	}
%>
         
</body>
</html>