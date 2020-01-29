<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header1.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>Add Student Marks</title>
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
<script type="text/javascript">
	function validate() {
		var id = document.nslogin.id.value;
		var mo = document.nslogin.marksobtain.value;
		var tm = document.nslogin.totalmark.value;
		var des = document.nslogin.description.value;
		if (id == "") {
			alert("Please Student Id");
			return false;
		}
		if (mo == "") {
			alert("Please Enter Marks");
			return false;
		}
		if (des == "") {
			alert("Description is Empty");
			return false;
		}
		if (pass.length<4||pass.length>12) {
			alert("Your Password Must Between 4 to 12 characters");
			return false;
		}
		if (uname.length<5||pass.length>20) {
			alert("Your Name Must Between 5 to 20 characters");
			return false;
		}
		if (email.length<8||email.length>20) {
			alert("Your email Must Between 8 to 20 characters");
			return false;
		}
		if (mo>0 || mo <= 500) {
			alert("Invalid Marks Entered");
			return false;
		}

	}
</script>

</head>
<style>
body {
	background-image:
		url("https://cdn.pixabay.com/photo/2017/07/01/19/48/background-2462431__340.jpg");
	background-repeat: no-repeat;
	background-position: top;
	background-size: cover;
	background-size: 100% 100%;
}
</style>
<body>
<div><a href="teacherlog" style="color:black" class="button"><h4> Back</h4></a></div>
	<div class="col-md-4">
		<form action="insertmarks" name="nslogin">
			<div>
				<h3>${message}</h3>
			</div>
			<h4>
			<div class="form-group">
				<label>Student Id:</label> <input type="text" name="id"
					class="form-control" placeholder="Student Id" required>
			</div>
			<div class="form-group">
				<label>Marks Obtain:</label> <input type="text" name="marksobtain"
					class="form-control" placeholder="450" required>
			</div>
			<div class="form-group">
				<label>Total Marks:</label> <input type="text" name="totalmark"
					 class="form-control" placeholder="500" required>
			</div>

			<div class="form-group">
				<label>Percentage:</label> <select name="per">
					<option value=""></option>
					<option value="A">A</option>
					<option value="B">B</option>
					<option value="C">C</option>
					<option value="D">D</option>
				</select>
			</div>

			<div class="form-group">
				<label>Status:</label> <select name="status">
					<option value="pass">Pass</option>
					<option value="false">False</option>
				</select>

			</div>
			<div class="form-group">
				<label>Description:</label> <input type="text" name="description"
					class="form-control" placeholder="Good Job" required>
			</div></h4>
			<input type="submit" value="SUBMIT">
		</form>
	</div>
</body>
</html>