<%@ page language="java" errorPage="/errorDisplay.jsp" %>
<%@ include file="/globalFunctions.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UOM Grading System</title>
</head>
<body>
	<%
		Boolean submitted = Boolean.parseBoolean(request.getParameter("isSubmitted"));
		double mark1 = 0.0;
		double mark2 = 0.0;
		double mark3 = 0.0;
		double mark4 = 0.0;

		if(submitted){
			mark1 = Double.parseDouble(request.getParameter("module1"));
			mark2 = Double.parseDouble(request.getParameter("module2"));
			mark3 = Double.parseDouble(request.getParameter("module3"));
			mark4 = Double.parseDouble(request.getParameter("module4"));
		}
	%>

	<h4 style="text-align:center">Student Information System</h4>
	<p>Enter the Student marks in the following table:</p>
	<form action="index.jsp" method="post">
		<input type="hidden" name="isSubmitted" value="true">
		<table border="1">
			<tr>
				<th>Module Code</th>
				<th>Marks</th>
			</tr>
			<tr>
				<td>Module 1</td>
				<td>
					<% if(!submitted) { %>
						<input type="text" name="module1">
					<% } else { %>
						<%= grade(mark1) %>
					<% } %>
				</td>
			</tr>
			<tr>
				<td>Module 2</td>
				<td>
					<% if(!submitted) { %>
						<input type="text" name="module2">
					<% } else { %>
						<%= grade(mark2) %>
					<% } %>
				</td>
			</tr>
			<tr>
				<td>Module 3</td>
				<td>
					<% if(!submitted) { %>
						<input type="text" name="module3">
					<% } else { %>
						<%= grade(mark3) %>
					<% } %>
				</td>
			</tr>
			<tr>
				<td>Module 4</td>
				<td>
					<% if(!submitted) { %>
						<input type="text" name="module4">
					<% } else { %>
						<%= grade(mark4) %>
					<% } %>
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>