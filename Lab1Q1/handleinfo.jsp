<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% String firstName = request.getParameter("txtFirstName"); 
		String lastName = request.getParameter("txtLastName");
		String email = request.getParameter("txtEmail");
	%>
	
	Hi <%= firstName %> <%= lastName %>!, your submitted email is <%= email %>.
</body>
</html>