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
        String HotelId=request.getParameter("HotelId");
		String Location=request.getParameter("Location");
        String HotelName=request.getParameter("HotelName");
        String ContactNo=request.getParameter("ContactNo");
		String HotelClass=request.getParameter("HotelClass");
		String Rent=request.getParameter("Rent");
		PreparedStatement ps;
        Connection con;
        ResultSet rs= null;
       	Class.forName("com.mysql.cj.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3307/ncp","root","qwerty");
       
       	ps=con.prepareStatement("insert into ADD_HOTEL values(?,?,?,?,?,?)");
		ps.setString(1,HotelId);
		ps.setString(2,Location);
		ps.setString(3,HotelName);
		ps.setString(4,ContactNo);
		ps.setString(5,HotelClass);
		ps.setString(6,Rent);
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