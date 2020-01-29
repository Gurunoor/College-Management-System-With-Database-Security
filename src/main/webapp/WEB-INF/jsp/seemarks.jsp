<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>See Marks</title>
<head>
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
body {
	background-image:
		url("https://cdn.pixabay.com/photo/2017/08/23/11/25/notebook-2672549__340.jpg");
	background-repeat: no-repeat;
	background-position: top;
	background-size: cover;	
}
</style>

</head>
<body>
<div><a href="studentlog" style="color:red" class="button"><h4> Back</h4></a></div>
<%
try {
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/college", "root", "1234");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from marks");
//out.print("record inserted");
%>
<table border="1">
<tr>
<TD>Mark Id</TD>
<TD>Marks Obtain</TD>
<TD>Total Marks</TD>
<TD>Percentage</TD>
<td>Status</td>
<td>Description</td>
</tr>
<%
while (rs.next()) {
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2) %>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
</tr>
<%
}
} catch (Exception obj) {
out.print("error" + obj.getMessage());
}
%>
</table>

</body>
</html>