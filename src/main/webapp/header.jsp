<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="navbar-brand" href="index.jsp">GURUNOOR</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="aboutus">ABOUT US</a></li>
			<li class="nav-item"><a class="nav-link" href="contactus">CONTACT US</a>
			</li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> LOGIN </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="teacherlogin">Teacher Login</a> 
					<a class="dropdown-item" href="studentlogin">Student Login</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="adminlogin">Admin Login</a>
				</div></li>
			<li class="nav-item"><a class="nav-link" href="feedback">Feedback</a></li>
		</ul>
	</div>
</nav>