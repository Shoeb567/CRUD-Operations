

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#text{width:600px;
      height:30px;
      border:1px solid white;
      }


#button{height:30px; width:80px;
        background:white;
        margin:-1;
        border:0px solid white;}

#tr{border:0px;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center><b style="color: navy;font-size: 25px;font-style: italic;font-weight: bold;"><u>Welcome <%=session.getAttribute("uname") %></u></b></center>
<br><center>
<form action="Update" method="post">
<table border="5" style="text-decoration-line: 5 ; line-height: 2.5;border-radius: 25px;padding: 15px;background-color: white">
	<tr style="border:10px solid red;">
		<td colspan="2" style="padding: 20px;color: navy;font-size: 25px;font-style: italic;font-weight: bold;vertical-align: super;font:bold italic; "><center><u>Update Product</u></td>
	</tr>
	<tr id="tr">
		<td id="tr" style="padding: 20px;color: navy;font-size: 25px;font-weight: bold;vertical-align: super;font:bold italic; "><u>ProductId::</u></td>
		<td id="tr" ><input type="text" name="pid"  required style="box-sizing: border-box;margin: 8px 0;width: 100%;border:2px solid ;height: 35px;border-radius: 7px;color: "> </td>
	</tr>
	<tr id="tr">
		<td id="tr" style="padding: 20px;color: navy;font-size: 25px;font-weight: bold;vertical-align: super;font:bold italic; "><u>Product Name::</u></td><td id="tr"><input type="text" 
			name="pname" required style="box-sizing: border-box;margin: 8px 0;width: 100%;border:2px solid ;height: 35px;border-radius: 7px;color: "></td>
	</tr>
	<tr>
				<td><input type="hidden" name="oldPid" value=<%=request.getParameter("pid") %>></td>
			
	<tr id="tr">
		<td id="tr" colspan="2"><center><input type="Submit" name="Submit" value="Update Product" style="background-color: black;border:none;
		color: white;padding: 15px 55px;text-decoration:none;display: inline-block;font-size: 20px;border-radius: 5px;display: inline-block;;cursor: pointer;color: white
		"></td>
	</tr>
	
</table>
</form>
</center></h2>

</body>
</html>