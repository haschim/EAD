<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form page</title>
</head>
<body>
	<h1>Calculator</h1>
	<form action="WebClient.jsp" method="POST">
		<label for="num1">Enter first value:</label>
		<input type="text" name="num1"><br><br>
		<label for="num2">Enter second value: </label>
		<input type="text" name="num2"><br><br>
		<b>Select your choice:</b><br>
		<input type="radio" name="choice" value="Addition">Addition<br>
		<input type="radio" name="choice" value="Subtraction">Subtraction<br>
		<input type="radio" name="choice" value="Multiplication">Multiplication<br>
		<input type="radio" name="choice" value="Division">Division<br><br>
		<input type="submit" value="Submit">
		<input type="reset" value="Reset">
	</form>
</body>
</html>