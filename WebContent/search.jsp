<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
 {
  font-family: sans-serif; 
}

.content-table {
  border-collapse: collapse;
  margin: 25px 0;
  font-size: 21px;
  text-align:center;
  min-width: 400px;
  border-radius: 5px 5px 0 0;
  overflow: hidden;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
  
 
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center ><b style="color: navy;font-size: 25px;font-style: italic;font-weight: bold;" ><u>Welcome <%=session.getAttribute("uname")%></u></b></center>

<center><table border="1" class="content-table">
<thead>
			<tr bgcolor=black>
				<td style="color:white;">Product ID</td>
				<td style="color:white;">Product Name</td>

			</tr>	
</thead>
<%

try
{	String name=request.getParameter("pname");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/demoDb", "shoeb","");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from Product where ProduName='"+name+"'");
	while(rs.next())
	{
		%>
		<tbody>
			<tr>
				<td><%=rs.getString("ProdId") %></td>
				<td><%=rs.getString("ProduName") %></td>

				</tr>
		</tbody>
		<%
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>

</center>
</table>
<a href="Display.jsp"><b style="color: navy;font-size: 25px;font-weight: bold;">Display All Product</b></a><br><br>
</body>
</html>