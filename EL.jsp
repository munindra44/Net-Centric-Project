<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.mysql.jdbc.Driver" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<marquee behavior="alternate" scroll amount="10" onMouseOver="stop()" onMouseOut="start()"><h1>HOTEl  LIST  IN  YOUR  DESTINATION</h1></marquee>
	<style type="text/css">
#oval{
	background:green;
	color:snow;
	float:left;
	font:normal 18px times new roman;
	line-height:16px;
	height:24px;
	padding-left:11px;
	text-decoration:none;
	width:80px;
	border-radius:60px;
	}
</style>

	</head>
	<body width="1024px" height="500px" background="img/Gallery/15.jpg">
        <form name="form1" action="EL2.jsp" method="post">
        <br/><br/><br/><br/><table align="center">
        <tr>
            <td><h3>Location:</h3></td>
            <td>
                <select name="Location">

<%
	try
	{
        Connection con;
        Statement stmt;
		ResultSet rs= null;
       	Class.forName("com.mysql.cj.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3307/ncp","root","qwerty");
       	
		stmt=con.createStatement();
		rs=stmt.executeQuery("SELECT distinct(LOCATION) FROM ADD_EL");
		while(rs.next())
		{
%>
			<option value="<%=rs.getString("LOCATION")%>"><%=rs.getString("LOCATION")%></option>
<%         
		}
	   	con.close();
       	
    }
	catch(Exception e)
	{
		out.print(e);
	}
%>
                   <option selected="selected">-Select One-</option>
                   </select>
                </td>
				<td><input id="oval" type="submit" name="submit" value="Search"></td>
			</tr>
			</table>	
		</form>
	</body>

</html>