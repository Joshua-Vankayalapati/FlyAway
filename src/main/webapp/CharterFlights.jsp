<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Include Bootstrap CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<title>Flights List</title>
<style>
/* Add your custom CSS styles here */
body {
	background: linear-gradient(135deg, #D9BBA9, #E9B58F);
	text-align: center;
	font-family: Arial, sans-serif;
}

h1 {
	font-size: 36px;
	margin-top: 20px;
	color: #7D3C98;
}

table {
	width: 50%;
	margin: 0 auto;
	border-collapse: collapse;
	background: #FFFFFF;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

table, th, td {
	border: 1px solid #6B3E26;
}

th, td {
	padding: 10px;
	text-align: center;
}

th {
	background: #7D3C98;
	color: #FFFFFF;
}

tr:nth-child(even) {
	background: #F2F2F2;
}

tr:nth-child(odd) {
	background: #FFFFFF;
}

a {
	color: #7D3C98;
	text-decoration: none;
	font-size: 16px;
	font-weight: bold;
}

.btn-book {
	background: #7D3C98;
	color: #FFFFFF;
	border: none;
	padding: 10px 40px; /* Larger padding for a bigger button */
	border-radius: 5px;
	text-decoration: none;
	display: inline-block;
	/* Ensures button size is determined by padding, not content */
	width: 25%;
	align: center;
}

/* Adjusted background */
body {
	background: linear-gradient(135deg, silver, white);
}
</style>
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand"><b>FlyAway</b></a>
			<form class="d-flex input-group w-auto">
				<div class="d-flex align-items-center">
					<!-- Empty div, potentially for additional elements -->
				</div>
			</form>
		</div>
	</nav>
	<br>
	<br>
	<%
	// Get the list of flights from the session
	@SuppressWarnings("unchecked")
	List<String[]> flights = (List<String[]>) session.getAttribute("flights");
	if (flights != null) {
	%>
	<h3 class="mb-5">
		Available Flights
		<hr class="my-7">
	</h3>
	<table border="1">
		<tr>
			<th>Name</th>
			<th>Time</th>
			<th>Price</th>
		</tr>

		<%
		// Loop through the flights and display them in the table
		for (String[] flight : flights) {
		%>
		<tr>
			<td><%=flight[0]%></td>
			<td><%=flight[1]%></td>
			<td><%=flight[2]%></td>
		</tr>
		<%
		}
		%>
	</table>
	<hr class="my-7">
	<a href="FlightBooking.jsp" class="btn-book">Book Ticket</a>
	<br>
	<%
	} else {
	%>
	<h1>There are no Flights available</h1>
	<%
	}
	%>

	<!-- Include Bootstrap JavaScript (jQuery and Popper.js) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
