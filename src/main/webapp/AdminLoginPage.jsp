<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap CSS -->
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

					<!-- Login and Sign-up buttons -->
					<a href="User.jsp"><button type="button"
							class="btn btn-primary px-3 me-2">Login</button></a>| <a
						href="RegistrationForm.jsp"><button type="button"
							class="btn btn-primary me-3">Sign up for free</button></a>|
				</div>
			</form>
		</div>
	</nav>
	<br>

	<!-- Admin Sign In Section -->
	<section class="vh-100" style="background-color: #508bfc;">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-12 col-md-8 col-lg-6 col-xl-5">
					<div class="card shadow-2-strong" style="border-radius: 1rem;">
						<div class="card-body p-5 text-center">
							<h3 class="mb-5">
								Admin Sign In
								<hr class="my-7">
							</h3>
							<!-- Admin Sign In Form -->
							<form action=AdminLoginServlet method=post>
								<!-- Email Input -->
								<div class="form-outline mb-4">
									<input type="email" name="email" id="email"
										class="form-control form-control-lg" /> <label
										class="form-label" for="email">Email</label>
								</div>
								<!-- Password Input -->
								<div class="form-outline mb-4">
									<input type="password" name="password" id="pass"
										class="form-control form-control-lg" /> <label
										class="form-label" for="pass">Password</label>
								</div>
								<!-- Checkbox for Remembering Password -->
								<div class="form-check d-flex justify-content-start mb-4">
									<input class="form-check-input" type="checkbox" value=""
										id="form1Example3" /> <label class="form-check-label"
										for="form1Example3"> Remember password </label>
								</div>
								<!-- Forgot Password Link -->
								<div class="form-check d-flex justify-content-end mb-4">
									<a href="PasswordChange.jsp" style="font-size: 15px;"
										target="_blank">Forgot password ?</a>
								</div>
								<!-- Login Button -->
								<a href="AdminLandingPage.jsp"><button
										class="btn btn-primary btn-lg btn-block" type="submit">Login</button></a>
								<hr class="my-4">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<%
	String message = (String) session.getAttribute("message");
	if (message != null) {
	%>
	<p style="color: silver;"><%=message%></p>
	<%
	session.setAttribute("message", null);
	}
	%>

	<!-- Bootstrap and jQuery JavaScript -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
