<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>

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
	<title>Add Circular</title>
</head>
<style>
body {
	background-image:
		url("https://cdn.pixabay.com/photo/2017/01/18/13/06/winter-1989807__340.jpg");
	background-repeat: no-repeat;
	background-position: top;
	background-size: cover;
	background-size: 100% 100%;
}
</style>
<body>
<div><a href="adminlog" style="color:red" class="button"><h4> Back</h4></a></div>
	<div class="col-md-3">
		<form action="insertcircular">
		
		<h4>
			<div class="form-group">
				<label>Circular Id:</label> <input type="text" name="circularid"
					class="form-control" placeholder="123" required>
			</div>
			<div class="form-group">
				<label>Date Of Circular:</label> <input type="text" name="dateofcircular"
					class="form-control" placeholder="DD/MM/YYYY" required>
			</div>
			<div class="form-group">
				<label>Comment:</label>
			</div>
			<div class="form-group">
				<textarea name="comment" rows="5" cols="50" placeholder="Notice" required></textarea>
			</div>
			</h4>
			<input type="submit" value="SUBMIT">
		</form>
	</div>
</body>
</html>