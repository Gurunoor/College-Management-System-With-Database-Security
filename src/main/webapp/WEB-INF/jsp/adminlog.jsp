<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header1.jsp"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<title>Admin Log</title>
</head>
<style>
body {
	background-image:
		url("https://cdn.pixabay.com/photo/2015/03/26/09/44/books-690219__340.jpg");
	background-repeat: no-repeat;
	background-position: top;
	background-size: cover;
		background-size: 100% 100%;
	
}
</style>
<body>
	<div class="col-md-3">
		<div><h1>Welcome ${name}</h1></div>
		<h5>
		<div>
			<a href="addteacher" style="color:black" class="button">Add Employee Detail</a>
		</div><br>
		<div>
			<a href="addstudent" style="color:black" class="button">Add Student Detail</a>
		</div><br>
		<div>
			<a href="addcircular" style="color:black" class="button">Add Circular Detail</a>
		</div><br>
		<div>
			<a href="addbook" style="color:black" class="button">Add Book Details</a>
		</div><br>
		<div>
			<a href="report" style="color:black" class="button">Report</a>
		</div><br>
		<div>
				<a href="newadminlogin" style="color:red" class="button">NEW USER</a>
		</div>
		</h5>
	</div>
</html>