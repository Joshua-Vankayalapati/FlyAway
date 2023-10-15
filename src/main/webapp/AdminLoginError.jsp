<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- Check if there's an error message in the request scope -->
	<c:if test="${not empty requestScope.errorMessage}">
		<!-- Display the error message in red -->
		<p style="color: red">${requestScope.errorMessage}</p>
	</c:if>

</body>
</html>