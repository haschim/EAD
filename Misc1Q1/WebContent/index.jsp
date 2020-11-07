<%-- index.jsp --%>
<%@ page errorPage="error.jsp" %>
<%@ include file="globalFunctions.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	<%
		Boolean isSubmitted = Boolean.parseBoolean(request.getParameter("isSubmitted"));
		double num1 = 0.0;
		double num2 = 0.0;
		double division = 0.0;
		if(isSubmitted){
			num1 = Double.parseDouble(request.getParameter("num1"));
			num2 = Double.parseDouble(request.getParameter("num2"));
			division = calcDiv(num1,num2);
		}
	%>
	
	<form action="index.jsp" method="post">
		<fieldset>
			<legend>Dividing Two Numbers</legend>
		
			<label for="num1">Num1: </label>
			<input type="text" name="num1" value="<%= num1 %>"><br>
			
			<label for="num2">Num2: </label>
			<input type="text" name="num2" value="<%= num2 %>"><br>
			
			
			<label for="output">Output: </label>
			<input type="text" name="output" value="<%= division %>"><br>
			
			<input type="hidden" name="isSubmitted" value="true">
			<input type="submit" value="Calculate">
		</fieldset>
	
	</form>
</body>
</html>