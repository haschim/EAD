<%@ page language="java" %>
<jsp:useBean id="myBean" class="book.TaxCalculator" scope="session" />
<%
	boolean isSubmitted = Boolean.parseBoolean(request.getParameter("isSubmitted"));

	int threshold = 0;
	double tax = 0.0;
	
	if(isSubmitted){
		
		// input
		double salary = Double.parseDouble(request.getParameter("salary")); 
		String category = request.getParameter("category");
		
		threshold = myBean.calculateThreshold(category);
		tax = myBean.calculateTax(threshold, salary);
	}
%>
<!DOCTYPE html>
<html>
<head>
<title>Tax Calculator Past Exams 2018 JSP</title>
</head>
<body>

	<!-- Fixed -->
	<form action="index.jsp" method="post">
		<h3>Monthly Tax Calculator</h3>
	
		<!-- Input salary -->
		<label for="salary">Monthly Salary: </label>
		<input type="text" name="salary"/><br/>
		
		<!--  Input category -->
		<label for="category">Category: </label>
		<input type="radio" name="category" value="A"/>A
		<input type="radio" name="category" value="B"/>B
		<input type="radio" name="category" value="C"/>C
		<input type="radio" name="category" value="D"/>D<br/>
		
		<!-- HTML Comment -->
		<!-- Hidden button to check if user has clicked on the button -->
		<input type="hidden" value="true" name="isSubmitted"/>
		<input type="submit" value="Calculate"/><br/>
		
		<label for="threshold">Threshold: </label>
		<input type="text" name="threshold" value="<%= threshold %>" /><br/>
	
		<label for="tax">Tax Payable: </label>
		<input type="text" name="payable" value="<%= tax %>"/>
	</form>

</body>
</html>