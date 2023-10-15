<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
/* Custom CSS styles */

/* Overall styling */
body {
	background: linear-gradient(135deg, #f4f4f4, #fafafa9d);
	text-align: center;
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

/* Navbar styling */
.navbar {
	background: #7D3C98;
	color: #FFFFFF;
}

/* Header styling */
.header {
	background: #7D3C98;
	color: #FFFFFF;
	padding: 20px;
}

/* Container styling */
.container {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	min-height: 100vh;
}

/* Search container styling */
.search-container {
	background: #FFFFFF;
	border-radius: 10px;
	padding: 20px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
	width: 80%;
	max-width: 600px;
	margin: 20px 0;
}

/* Form group styling */
.form-group {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	margin-bottom: 10px;
}

/* Form label styling */
.form-group label {
	font-weight: bold;
	flex: 1;
}

/* Form input styling */
.form-group input {
	flex: 2;
	width: 100%;
	padding: 10px;
	margin-top: 5px;
	border: 1px solid #6B3E26;
	border-radius: 5px;
}

/* Form input focus styling */
.form-group input:focus {
	outline: none;
	border-color: #f2f7f7;
}

/* Form input placeholder styling */
.form-group input::placeholder {
	color: #6B3E26;
}

/* Search button styling */
.btn-search {
	background: #7D3C98;
	color: #FFFFFF;
	border: none;
	padding: 10px 20px;
	border-radius: 5px;
	cursor: pointer;
}

/* Reset button styling */
.btn-reset {
	background: #4CAF50;
	color: #FFFFFF;
	border: none;
	padding: 10px 20px;
	border-radius: 5px;
	cursor: pointer;
}
</style>
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand"><b>FlyAway</b></a>
			<form class="d-flex input-group w-auto">
				<div class="d-flex align-items-center">
					<!-- Links to other pages -->
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

	<div class="header">
		<h1>Welcome to FlyAway!</h1>
	</div>
	<div class="container">
		<div class="search-container">
			<!-- Form for searching charter flights -->
			<form action="CharterFlightsListServlet" method="post">
				<div class="form-group">
					<label for="from">From</label> <input type="text" name="from"
						id="from" class="form-control"
						placeholder="Enter departure location" required>

				</div>
				<div class="form-group">
					<label for="to">To</label> <input type="text" name="to" id="to"
						class="form-control" placeholder="Enter destination" required>
				</div>
				<div class="form-group">
					<label for="departure">Journey Date</label> <input type="date"
						name="departure" id="departure" class="form-control" required>
				</div>
				<div class="form-group">
					<label for="travellers">Passengers</label> <input type="number"
						name="travellers" id="travellers" class="form-control" min="1">
				</div>
				<button type="submit" class="btn btn-search">Search</button>
				<button type="reset" class="btn btn-reset">Reset</button>
			</form>
		</div>
	</div>


	<!-- Footer section -->
	<div class="footer">
		<p>&copy; 2023 FlyAway. All rights reserved.</p>
	</div>

	<!-- Include Bootstrap JavaScript (jQuery and Popper.js) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
