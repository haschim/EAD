<%@ page language="java"%>
<jsp:useBean id="calc" class="lab.CalculatorBean" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result Page</title>
</head>
<body>
	<%
		double num1 = Double.parseDouble(request.getParameter("num1"));
		double num2 = Double.parseDouble(request.getParameter("num2"));
		String choice = request.getParameter("choice");
	
		double result = 0.0;
		
		if(choice.equals("add")){
			result = calc.add(num1,num2);
		} else if (choice.equals("sub")) {
			result = calc.subtract(num1, num2);
		} else if (choice.equals("mul")) {
			result = calc.multiply(num1, num2);
		} else {
			result = calc.divide(num1, num2);
		}
	%>

	<p style="font-weight:bold;">
		The result is: 
		<span style="font-weight:normal;"> 
			<%= result %>
		</span>
	</p>

</body>
</html>