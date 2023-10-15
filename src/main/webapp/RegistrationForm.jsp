<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
.gradient-custom-3 {
	/* Gradient background style for a section */
	/* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 0.5),
		rgba(143, 211, 244, 0.5));
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to right, rgba(132, 250, 176, 0.5),
		rgba(143, 211, 244, 0.5);
}

.gradient-custom-4 {
	/* Gradient background style for a button */
	/* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 1),
		rgba(143, 211, 244, 1));
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to right, rgba(132, 250, 176, 1),
		rgba(143, 211, 244, 1));
}
</style>
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand"><b>FlyAway</b></a>
			<form class="d-flex input-group w-auto">
				<div class="d-flex align-items-center">
					<a href="User.jsp"><button type="button"
							class="btn btn-primary px-3 me-2">Login</button></a>| <a
						class="btn btn-dark px-3" href="AdminLoginPage.jsp" role="button">Admin
						Login</a>
				</div>
			</form>
		</div>
	</nav>
	<br>
	<!-- Registration section with a background image -->
	<section class="vh-100 bg-image"
		style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp');">
		<div class="mask d-flex align-items-center h-100 gradient-custom-3">
			<div class="container h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-12 col-md-9 col-lg-7 col-xl-6">
						<div class="card" style="border-radius: 15px;">
							<div class="card-body p-5">
								<h2 class="text-uppercase text-center mb-5">Create an
									account</h2>
								<!-- Registration form -->
								<form action="RegistrationServlet" method="post">
									<div class="form-outline mb-4">
										<input type="text" name="name" id="name"
											class="form-control form-control-lg" /> <label
											class="form-label" for="name">Name</label>
									</div>
									<div class="form-outline mb-4">
										<input type="tel" name="phno" id="phno"
											class="form-control form-control-lg" /> <label
											class="form-label" for="phno">Phone</label>
									</div>
									<div class="form-outline mb-4">
										<input type="email" name="email" id="email"
											class="form-control form-control-lg" /> <label
											class="form-label" for="email">Email</label>
									</div>
									<div class="form-outline mb-4">
										<input type="password" name="password" id="pass"
											class="form-control form-control-lg" /> <label
											class="form-label" for="pass">Password</label>
									</div>
									<div class="form-check d-flex justify-content-center mb-5">

										<label class="form-check-label" for="form2Example3g">
											<input class="form-check-input me-2" type="checkbox" value=""
											id="form2Example3cg" /> I agree all statements in <a
											href="#!" class="text-body">Terms of service</a>
										</label>
									</div>
									<div class="d-flex justify-content-center">
										<button type="submit"
											class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Register</button>
									</div>
									<p class="text-center text-muted mt-5 mb-0">
										Have already an account? <a href="User.jsp"
											class="fw-bold text-body">Login here</a>
									</p>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
