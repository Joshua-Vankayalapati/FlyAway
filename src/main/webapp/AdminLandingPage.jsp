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
/* Add your custom CSS styles here */

/* Body background style */
body {
	background: linear-gradient(135deg, #D9BBA9, #E9B58F);
}

/* Form container style */
.form-container {
	max-width: 400px;
	margin: 0 auto;
	padding: 20px;
	background: #FFFFFF;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

/* Form group label style */
.form-group label {
	font-weight: bold;
}

/* Form group input style */
.form-group input {
	width: 100%;
	padding: 10px;
	margin-top: 5px;
	border: 1px solid #6B3E26;
	border-radius: 5px;
}

/* Form group input focus style */
.form-group input:focus {
	outline: none;
	border-color: #E94F37;
}

/* Form group input placeholder style */
.form-group input::placeholder {
	color: #6B3E26;
}

/* Form group button style */
.form-group button {
	width: 100%;
	padding: 10px;
	background: #7D3C98;
	color: #FFFFFF;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

/* Form group button hover style */
.form-group button:hover {
	background: #4CAF50;
}

/* Purple button style */
.purple-button {
	background: #7D3C98;
	color: #FFFFFF;
}
</style>
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
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="form-container">
					<h3 class="mb-5">
						Add New Flights Details
						<hr class="my-7">
					</h3>

					<!-- Form for adding flight details -->
					<form action="InsertFlightServlet" method="post">
						<div class="form-group">
							<label for="name">Name</label> <input type="text" name="name"
								id="name" class="form-control" required
								placeholder="Enter your Name">
						</div>

						<div class="form-group">
							<label for="from">From</label> <input type="text" name="from"
								id="from" class="form-control" required
								placeholder="Your Location">
						</div>

						<div class="form-group">
							<label for="to">To</label> <input type="text" name="to" id="to"
								class="form-control" required placeholder="Your Destination">
						</div>

						<div class="form-group">
							<label for="departure">Departure</label> <input type="date"
								name="departure" id="departure" class="form-control" required>
						</div>

						<div class="form-group">
							<label for="time">Time</label> <input type="time" name="time"
								id="time" class="form-control" required>
						</div>

						<div class="form-group">
							<label for="price">Price</label> <input type="text" name="price"
								id="price" class="form-control" required
								placeholder="Enter the Price">
						</div>

						<div class="form-group">
							<button type="submit" class="btn btn-primary">Submit</button>
							<input type="reset" class="btn btn-success">
						</div>
					</form>
				</div>
			</div>
			<div class="col-md-4">
				<div class="text-center mt-3">
					<!-- Link to view the list of available flights -->
					<a href="CharterFlights.jsp" class="btn btn-primary purple-button">List
						of Flights Available</a>
				</div>
			</div>
		</div>
	</div>


	<%
	// Java code can be placed within this JSP scriptlet tag
	String message = (String) session.getAttribute("message");
	if (message != null) {
	%>
	<!-- Display a message if available -->
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
