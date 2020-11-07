<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="calculator" class="lab.CalculatorBean" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result page</title>
</head>
<body>
	<%
		double num1 = Double.parseDouble(request.getParameter("num1"));
		double num2 = Double.parseDouble(request.getParameter("num2"));
		String choice = request.getParameter("choice");
		
		double result=0.0;
		
		if(choice.equals("Addition")){
			result = calculator.add(num1,num2);
		} else if (choice.equals("Subtraction")) {
			result = calculator.subtract(num1, num2);
		} else if (choice.equals("Multiplication")) {
			result = calculator.multiply(num1, num2);
		} else {
			result = calculator.divide(num1, num2);
		}
	%>
	
	<b>The result is: </b><%= result %>
</body>
</html>