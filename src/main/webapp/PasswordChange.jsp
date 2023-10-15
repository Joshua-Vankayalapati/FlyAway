<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
/* Add your custom CSS styles here */
</style>
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand"><b>FlyAway</b></a>
			<form class="d-flex input-group w-auto">
				<div class="d-flex align-items-center">
					<!-- Navigation links: Login, Sign up, Admin Login -->
					<a href="User.jsp"><button type="button"
							class="btn btn-primary px-3 me-2">Login</button></a>| <a
						href="RegistrationForm.jsp"><button type="button"
							class="btn btn-primary me-3">Sign up for free</button></a>| <a
						class="btn btn-dark px-3" href="AdminLoginPage.jsp" role="button">Admin
						Login</a>
				</div>
			</form>
		</div>
	</nav>
	<br>
	<!-- Main content container -->
	<div
		class="container d-flex justify-content-center align-items-center vh-100">
		<div class="card text-center" style="width: 300px;">
			<div class="card-header h5 text-white bg-primary">Password
				Reset</div>
			<div class="card-body px-5">
				<p class="card-text py-2">Enter your email address and reset
					your password.</p>
				<!-- Password reset form -->
				<form action="PasswordChangeServlet" method="post">
					<div class="form-group">
						<input type="email" name="email" id="typeEmail"
							class="form-control my-3" placeholder="Email" />
					</div>
					<div class="form-group">
						<input type="password" name="password" id="pass"
							class="form-control my-3" placeholder="New Password" />
					</div>
					<button type="submit" class="btn btn-primary w-100">Reset
						password</button>
				</form>
				<!-- Login and Register links -->
				<div class="d-flex justify-content-between mt-4">
					<a class="" href="User.jsp">Login</a> <a class=""
						href="RegistrationForm.jsp">Register</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Include Bootstrap JavaScript (jQuery and Popper.js) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
