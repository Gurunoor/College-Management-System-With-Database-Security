<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
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
<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
<title>Add Books</title>
</head>
<style>
body {
	background-image:
		url("https://cdn.pixabay.com/photo/2017/08/23/11/25/notebook-2672549__340.jpg");
	background-repeat: no-repeat;
	background-position: top;
	background-size: cover;
}
</style>
<body>
<div><a href="adminlog" style="color:red" class="button"><h4> Back</h4></a></div>
	<div class="col-md-3">
		<form:form  action="savebookfile" method="post" enctype="multipart/form-data">
			<h3>${filesuccess}</h3>
			<div class="form-group">
				<label>Title:</label> <input type="text" name="title"
					class="form-control" placeholder="title" required>
			</div>
			<div class="form-group">
				<label>Select Department:</label> <select name="sdepartment">
				<option value=""></option>
					<option value="it">IT</option>
					<option value="cse">CSE</option>
					<option value="ece">ECE</option>
					<option value="ece">ECE</option>
				</select>
			</div>
			<div>
				<label>Upload File:</label> <input name="file" id="fileToUpload"
					type="file" class="form-control" required>
			</div>
			<input type="submit" value="UPLOAD">
		</form:form >
	</div>
</body>
</html>