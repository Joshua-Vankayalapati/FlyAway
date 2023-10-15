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
body {
	background: #6e28d9;
	padding: 0 24px;
	margin: 0;
	height: 100vh;
	color: white;
	display: flex;
	justify-content: center;
	align-items: center;
}

.divider:after, .divider:before {
	content: "";
	flex: 1;
	height: 1px;
	background: #eee;
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>Login</title>
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand"><b>FlyAway</b></a>
			<form class="d-flex input-group w-auto">
				<div class="d-flex align-items-center"></div>
			</form>
		</div>
	</nav>
	<br>
	<section class="vh-100">
		<div class="container py-5 h-100">
			<div
				class="row d-flex align-items-center justify-content-center h-100">
				<div class="col-md-8 col-lg-7 col-xl-6">
					<img
						src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
						class="img-fluid" alt="Phone image">
				</div>
				<div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
					<form action="UserServlet" method="post">
						<!-- Title -->
						<h3 class="mb-4">Sign in to your Account</h3>

						<!-- Email input -->
						<div class="form-group">
							<input type="email" name="email" id="form1Example13"
								class="form-control form-control-lg" /> <label
								class="form-label" for="form1Example13">Email address</label>
						</div>

						<!-- Password input -->
						<div class="form-group">
							<input type="password" name="password" id="form1Example23"
								class="form-control form-control-lg" /> <label
								class="form-label" for="form1Example23">Password</label>
						</div>

						<div
							class="d-flex justify-content-between align-items-center mb-4">
							<!-- Checkbox -->
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value=""
									id="form1Example3" checked /> <label class="form-check-label"
									for="form1Example3"> Remember me </label>
							</div>
							<a href="PasswordChange.jsp">Forgot password?</a>
						</div>

						<!-- Submit button -->
						<button type="submit" class="btn btn-primary btn-lg btn-block">Login</button>

						<div class="divider d-flex align-items-center my-4">
							<p class="text-center fw-bold mx-3 mb-0 text-muted">OR</p>
						</div>

						<a class="btn btn-primary btn-lg btn-block"
							style="background-color: #3b5998" href="RegistrationForm.jsp"
							role="button"> <i class="fab fa-facebook-f me-2"></i>Create a
							New Account
						</a> <a class="btn btn-primary btn-lg btn-block"
							style="background-color: #3b5998" href="AdminLoginPage.jsp"
							role="button"> <i class="fab fa-facebook-f me-2"></i>Admin
							Login
						</a>

						<%
						String message = (String) session.getAttribute("message");
						if (message != null) {
						%>
						<p style="color: silver;"><%=message%></p>
						<%
						session.setAttribute("message", null);
						}
						%>
					</form>
				</div>
			</div>
		</div>

		<!-- Include Bootstrap JavaScript (jQuery and Popper.js) -->
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
