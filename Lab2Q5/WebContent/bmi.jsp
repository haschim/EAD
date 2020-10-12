<%@ page language="java" errorPage="displayError.jsp" %>
<%@ include file="/globalFunctions.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BMI Calculator</title>
</head>
<body>
	<%
		Boolean submitted = Boolean.parseBoolean(request.getParameter("isSubmitted"));
		double height = 0.0;
		double weight = 0.0;
		double BMI = 0.0;
		String classification = null;
		if(submitted){
			height = Double.parseDouble(request.getParameter("height"));
			weight = Double.parseDouble(request.getParameter("weight"));
			BMI = calcBMI(height,weight);
			classification = calcClassification(BMI);
		}
	%>
	
	
	<form action="bmi.jsp" method="post">			
	    <input type="hidden" name="isSubmitted" value="true">	
	    <table style="display:block;width:500px;">	
	        <tr>
	            <td colspan="2" style="text-align:center;">
	                <h1>BMI Calculator</h1>
	            </td>
	        </tr>		
	        <tr>
	            <td>Height (in meters): </td>
	            <td>
	                <% if(!submitted) { %>
	                    <input type="text" name="height">
	                <% } else { %>
	                    <input type="text" name="height" value="<%= height %>">
	                <% } %>
	            </td>
	        </tr>
	        <tr>
	            <td>Weight (in kg): </td>
	            <td>
	                <% if(!submitted) { %>
	                    <input type="text" name="weight">
	                <% } else { %>
	                    <input type="text" name="weight" value="<%= weight %>">
	                <% } %>
	            </td>
	        </tr>	
	        <tr>
	            <td style="text-align:center" colspan="2">
	                <input type="submit" value="Calculate BMI">
	            </td>
	        </tr>
	        <tr>
	            <td colspan="2">BMI: <%= String.format("%.1f",BMI) %></td>
	        </tr>
	        <tr>
	            <td colspan="2">Classification: <%= classification %></td>			
	        </tr>
	    </table>
	</form>

</body>
</html>