<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form Page</title>
</head>
<body>
	<form action="WebClient.jsp" method="POST">
		<h1>Calculator</h1>
		<hr>
		<p>Enter first value:<input type="text" name="num1"></p>
		<p>Enter second value:<input type="text" name="num2"></p>
		<h4>Select your choice:</h4>
		<input type="radio" name="choice" value="add">Addition<br>
		<input type="radio" name="choice" value="sub">Subtraction<br>
		<input type="radio" name="chocie" value="mul">Multiplication<br>
		<input type="radio" name="choice" value="div">Division<br><br>
		<input type="submit" value="Submit">
		<input type="reset" value="Reset">
	</form>
</body>
</html>