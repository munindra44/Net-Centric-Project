<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.mysql.jdbc.Driver" %>

<%
	String hotelid=request.getParameter("hotelid");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>MODIFY HOTEL</title>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="service1.jsp" class="page-scroll">Home</a></li>
		  </ul>
        </div>
      </div>
    </nav>

</head>

<body>
<body background="img/Gallery/02.jpg">
<form name="form1" action="add_hotel2.jsp" method="post">
<center>
<h3>Fill-Up To Modify Details</h3>
</center>

<%
	try
	{
        Connection con;
        Statement stmt;
		ResultSet rs= null;
       	Class.forName("com.mysql.cj.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3307/ncp","root","qwerty");
       	
		stmt=con.createStatement();
		rs=stmt.executeQuery("SELECT * FROM ADD_HOTEL WHERE HOTELID='" + hotelid + "'");
		while(rs.next())
		{
%>

<table align="center">
	<tr>
    	<td>
        	<br/>HotelId:
        </td>
        <td>
        	<br/><input type="text" name="HotelId" value=<%=rs.getString("HOTELID")%> readonly>
        </td>
    </tr>
	<td>
        	<br/>Location:
        </td>
        <td>
        	<br/><input type="text" name="Location" placeholder="Enter Location" value=<%=rs.getString("LOCATION")%>>
        </td>
    </tr>
    <tr>
    	<td>
        	<br/>HotelName:
        </td>
        <td>
        	<br/><input type="text" name="HotelName" placeholder="Hotel Name" value=<%=rs.getString("HOTELNAME")%>>
        </td>
    </tr>
    <tr>
    	<td>
        	<br/>ContactNo:
        </td>
        <td>
  			<br/><input type="number" name="ContactNo" placeholder="ContactNo" value=<%=rs.getString("CONTACTNO")%>>     
        </td>
    </tr>
    <tr>
    	<td>
        	<br/>HotelClass:
        </td>
        <td>
        	<br/><input type="text" name="HotelClass" placeholder="Hotel Class" value=<%=rs.getString("HOTELCLASS")%>>
        </td>
    </tr>
    <tr>
    	<td>
        	<br/>Rent/Day:
        </td>
        <td>
  			<br/><input type="text" name="Rent" placeholder="Rent/Day" value=<%=rs.getString("RENT")%>>      
        </td>
    </tr>
    
</table><br/>
	<center>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit"  name="Submit"  value="MODIFY">&nbsp;&nbsp;&nbsp;<input type="reset" name="cancel" value="Cancel">
	</center>
</form>

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
