<%@ page language="java"%>
<%@ page import="pkg.*" %>
<%
	boolean isSubmitted = Boolean.parseBoolean(request.getParameter("isSubmitted"));
	
	EmployeeManager empManagerObj = new EmployeeManager();
	Employee empObj = new Employee();
	int id;
	
	if(isSubmitted){
		id = Integer.parseInt(request.getParameter("id"));
		empObj = empManagerObj.findEmployee(id);		
	}

%>
<!DOCTYPE html>
<html>
	<head>
		<title>Employee Management System</title>
	</head>
<body>
	<form action="findEmployees.jsp" method="POST">
		<h3>Employee Management System</h3>
		
		<label for="id">Enter Employee Id:</label>
		<input type="text" name="id">
		
		<input type="hidden" value="true" name="isSubmitted">
		<input type="submit" value="Find">
	</form>
	
	<br />
	
	<% if(empObj.getName() != null) {%>
		<b>Employee Found</b>
		
		<table>
			<tr>
				<td><b>ID</b></td>
				<td><b>Name</b></td>
				<td><b>Address</b></td>
			</tr>
			<tr>
				<td><%= empObj.getId() %></td>
				<td><%= empObj.getName() %></td>
				<td><%= empObj.getAddress() %></td>
			</tr>
		</table>
	<% } else {%>
		<b>Employee Not Found</b>
	<% } %>
				
</body>
</html>