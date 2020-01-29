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
	<title>Report</title>
</head>
<style>
body {
	background-image:
		url("https://cdn.pixabay.com/photo/2016/11/21/14/12/books-1845614__340.jpg");
	background-repeat: no-repeat;
	background-position: top;
	background-size: cover;
		background-size: 100% 100%;
	
}
</style>
<body>
<div><a href="adminlog" style="color:red" class="button"><h4> Back</h4></a></div>
<h1>Report</h1>
	<div class="col-md-3">
		<h5>
		<div>
			<a href="showteacher" style="color:black" class="button">Employee Details</a>
		</div><br>
		<div>
			<a href="showreportbook" style="color:black" class="button">Book Details</a>
		</div><br>
		<div>
			<a href="showstudent" style="color:black" class="button">Student Details</a>
		</div><br>
		<div>
			<a href="showcircular" style="color:black" class="button">Circular Details</a>
		</div><br>
		</h5>
	</div>
</html>