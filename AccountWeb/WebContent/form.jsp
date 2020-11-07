<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bank transaction</title>
</head>
<body>
	<form action="WebClient.jsp" method="post">
		<p>Bank Transaction Request Form</p>
		<span>Enter the amount in rupees:</span>
		<input type="text" name="amt"><br>
		<b>Select your choice:</b><br>
		<input type="radio" name="choice" value="dep">Deposit<br>
		<input type="radio" name="choice" value="wit">Withdraw<br>
		<input type="submit" value="Deposit">
		<input type="submit" value="Withdraw">
	</form>
</body>
</html>