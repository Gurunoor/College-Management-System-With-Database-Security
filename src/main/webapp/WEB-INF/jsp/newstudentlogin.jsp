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
<script type="text/javascript">
	function validate() {
		var uname = document.nslogin.studentname.value;
		var pass = document.nslogin.studentpassword.value;
		var email = document.nslogin.emailid.value;
		var id = document.nslogin.studentid.value;
		if (uname == "") {
			alert("Please Your Name");
			return false;
		}
		if (pass == "") {
			alert("Please Your Password");
			return false;
		}
		if (email == "") {
			alert("Please Your Email");
			return false;
		}
		if (id == "") {
			alert("Please Your Id");
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

	}
</script>
<title>New Student Login</title>
</head>
<style>
body {
	background-image:
		url("https://cdn.pixabay.com/photo/2014/05/03/00/46/notebook-336634_960_720.jpg");
	background-repeat: no-repeat;
	background-position: top;
	background-size: cover;
		background-size: 100% 100%;
	
}
</style>
<body>
<div><a href="studentlogin" style="color:red" class="button"><h4> Back</h4></a></div>
<h1>New Student Login</h1>
	<div class="col-md-3">
		<form action="studentinsert" name="nslogin"
			onSubmit="return validate()">
			<div><h1>${message}</h1></div>
			<div class="form-group">
				<label>Student Id:</label> <input type="text" name="studentid"
					class="form-control" placeholder="Student Id">
			</div>
			<div class="form-group">
				<label>NAME:</label> <input type="text" name="studentname"
					class="form-control" placeholder="Student Name">
			</div>
			<div class="form-group">
				<label>EMAILID:</label> <input type="text" name="emailid"
					class="form-control" placeholder="Email Id">
			</div>
			<div class="form-group">
				<label>PASSWORD:</label> <input type="password"
					name="studentpassword" class="form-control" placeholder="Password">
			</div>
			<input type="submit" value="SUBMIT">
		</form>
	</div>
</html>