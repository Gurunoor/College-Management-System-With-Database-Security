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
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<title>Feedback</title>
</head>
<style>
body {
	background-image:
		url("https://cdn.pixabay.com/photo/2017/08/13/16/34/notebook-2637733__340.jpg");
	background-repeat: no-repeat;
	background-position: top;
	background-size: cover;
		background-size: 100% 100%;
	
}
</style>
<body>
	<h1> Feedback</h1>
	<div class="col-md-3">
		<div>
			<h1>${message}</h1>
		</div>
		<form action="mail" method="post">
			<div class="form-group">
				<label>NAME:</label> <input type="text" name="name" class="form-control" placeholder="Name" required>
			</div>
			<div class="form-group">
				<label>PHONE NO.:</label> <input type="text" name="phone" class="form-control" placeholder="Phone Number" pattern=".{10}" required title="Invalid entry">
			</div>
			<br>
			<div class="form-group">
				<label>EMAIL ID:</label> <input type="text" name="emailid" class="form-control" placeholder="Email Id" required>
			</div>
			<div>
			<label>COMMENT:</label></div>
			<div class="form-group">
				<textarea name="comment" rows="5" cols="45" placeholder="Comment" required></textarea>
			</div>
			<input type="submit" value="SUBMIT">
		</form>
	</div>
</body>
</html>