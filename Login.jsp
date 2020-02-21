<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.mysql.jdbc.Driver" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>

<body>
<pre>&nbsp;</pre>
<p>
  <%
try{
    String UserId = request.getParameter("UserId");    
    String Password = request.getParameter("Password");
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ncp","root","qwerty");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from OTRS_REGISTER where USERID='" + UserId + "' and PASSWORD='" + Password + "'");
    if(rs.next()) {
		
        session.setAttribute("userid",UserId);
        response.sendRedirect("loggeduser.jsp");
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
</p>

</body>
</html>