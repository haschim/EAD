<%@ page language="java"%>
<jsp:useBean id="myBean" class="pkg.AppreciationCalculator" scope="session"/>
<%
	boolean isSubmitted = Boolean.parseBoolean(request.getParameter("isSubmitted"));

	double rate = 0.0;
	double actualValue = 0.0;

	if(isSubmitted){
		String location = request.getParameter("location");
		rate = myBean.Rate(location);
		
		double initialValue = Double.parseDouble(request.getParameter("initialValue"));
		int years = Integer.parseInt(request.getParameter("years"));
		
		actualValue = myBean.ActualValue(initialValue, rate, years);	
	}
%>
<!DOCTYPE html>
<html>
<head>
	<title>Appreciation Page</title>
</head>
<body>
	 <form action="appreciation.jsp" method="post">
	 	<h3>Land Appreciation Calculator</h3>
	 	
	 	<label for="initialValue">Initial Value: </label>
	 	<input type="text" name="initialValue"><br/>
	 
	 	<label for="location">Location: </label>
	 	<input type="text" name="location"><br/>
	 	
	 	<label for="years">Years: </label>
	 	<input type="text" name="years"><br/>
	 	
	 	<input type="hidden" name="isSubmitted" value="true">
	 	<input type="submit" value="Calculate Appreciation"><br/><br/>
	 
	 	<label for="rate">Rate: </label>
	 	<span><%= rate  %></span><br/>
	 
	 	<label for="actualValue">Actual Value: </label>
	 	<span><%= actualValue %></span>
	 </form>
</body>
</html>