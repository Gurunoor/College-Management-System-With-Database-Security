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
	<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
	<title>Add Employee</title>
</head>
<style>
body {
	background-image:
		url("https://cdn.pixabay.com/photo/2017/07/26/13/31/paper-2541687__340.jpg");
	background-repeat: no-repeat;
	background-position: top;
	background-size: cover;
	background-size: 100% 100%;
}
</style>
<body>
<div><a href="adminlog" style="color:red" class="button"><h4> Back</h4></a></div>
	<div class="col-md-3">
		<form action="insertteacher">
		<h4>
			<div class="form-group">
				<label>TeacherId:</label> <input type="text" name="teacherid"
					class="form-control" placeholder="123" required>
			</div>
			<div class="form-group">
				<label>TeacherName:</label> <input type="text" name="teachername"
					class="form-control" placeholder="Vikram" required>
			</div>
			<div class="form-group">
				<label>Teacher Designation:</label>	 <select name="tdesignation" required>
					<option value="assistantprofessor">Assistant Professor</option>
					<option value="associateprofessor">Associate Professor</option>
					<option value="professor">Professor</option>
				</select>
			<div class="form-group">
				<label>Teacher Department:</label><br> <select name="tdepartment" required>
					<option value="it">IT</option>
					<option value="cse">CSE</option>
					<option value="ece">ECE</option>
					<option value="ece">ECE</option>
				</select>
			</div>
					<div>
			<label>Age:</label> <input type="text" name="age"
			class="form-control" placeholder="28" required></div>
			<div class="form-group">
			<label>Teacher Joining Date:</label>
			<input type="date" name="dateofjoining" class="form-control" placeholder="DD/MM/YYYY"required>
			</div>
			<div>
			<label>Salary:</label> <input type="text" name="salary"
			class="form-control" placeholder="40000" required></div>
			<div>
			<label>Phone Number:</label> <input type="text" name="teachernumber"
			class="form-control" placeholder="8383****19" placeholder="Phone Number" pattern=".{10}" required title="Invalid entry"></div></h4>
			<input type="submit" value="SUBMIT">
		</form>
	</div>
</body>
</html>