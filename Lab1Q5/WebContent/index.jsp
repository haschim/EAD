<%@ include file="globalFunctions.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lab1Q5</title>
</head>
<body>
	<%
	Boolean isSubmitted = Boolean.parseBoolean(request.getParameter("isSubmitted"));
	double bmi = 0;
	String classification = "";
	if(isSubmitted){	
		double height = Double.parseDouble(request.getParameter("height"));
		double weight = Double.parseDouble(request.getParameter("weight"));
		bmi = calcBMI(height,weight);
		classification = calcClassification(bmi);
	}
	%>
	<h1>BMI Calculator</h1>
	<form action="index.jsp" method="post">
		<label for="height">Height (in meters)</label>
		<input type="text" name="height"><br/>
		<label for="weight">Weight (in kg)</label>
		<input type="text" name="weight"><br/>
		<input type="hidden" value="true" name="isSubmitted">
		<input type="submit" value="Calculate BMI"><br/>
	</form>				
	</body>
	
	<span>BMI: <%= String.format("%.1f",bmi)  %></span><br/>
	<span>Classification: <%= classification %></span>
	
</html>