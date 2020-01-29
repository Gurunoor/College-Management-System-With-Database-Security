<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Books</title>
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
		url("https://cdn.pixabay.com/photo/2016/05/20/14/14/open-spiral-notebook-1405082__340.png");
	background-repeat: no-repeat;
	background-position: top;
	background-size: cover;	
		background-size: 100%;
	
}
</style>

</head>
<body>
<div><a href="report" style="color:red" class="button"><h4> Back</h4></a></div>
<br><br><br><br><br>
<%
try {
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/college", "root", "1234");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from book");
//out.print("record inserted");
%>
<table border="1" align="center">
<tr>
<TD>Title</TD>
<TD>Department</TD>
<TD>Book Name</TD>
</tr>
<%
while (rs.next()) {
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2) %>
<td><a href='<%=rs.getString(3)%>'>Download</a></td>
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