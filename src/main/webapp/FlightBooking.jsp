<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
/* Add your custom CSS styles here */
</style>
<title>FlyAway</title>
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand"><b>FlyAway</b></a>
			<form class="d-flex input-group w-auto">
				<div class="d-flex align-items-center">
					<a class="btn btn-dark px-3" href="AdminLoginPage.jsp"
						role="button">Admin Login</a>
				</div>
			</form>
		</div>
	</nav>
	<br>


	<%
	// Check if user session exists
	@SuppressWarnings("unchecked")
	HashMap<String, String> user = (HashMap<String, String>) session.getAttribute("user");
	if (user == null) {
		// If user session does not exist, redirect to User.jsp
		response.sendRedirect("User.jsp");
	}
	%>
	<p align="center"
		style="color: green; font-size: 40px; font-weight: bold">Flight
		Booked Successfully</p>

	<!-- Include Bootstrap JavaScript (jQuery and Popper.js) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>