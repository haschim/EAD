<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Form Demo</title>
</head>
<body>
	<%
		Boolean isSubmitted = Boolean.parseBoolean(request.getParameter("isSubmitted"));
		if(isSubmitted){
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String email = request.getParameter("email");
			out.println("<p>Hi " 
					+ firstName + " " 
					+ lastName + "!, your submitted email is " 
					+ email + ".</p>");
		} else { %>		
			<fieldset>
				<legend>User Information</legend>
				<form action="index.jsp" method="post">
					<label for="firstName">First Name</label>
					<input type="text" name="firstName"><br/>
					<label for="lastName">Last Name</label>
					<input type="text" name="lastName"><br/>
					<label for="email">Email</label>
					<input type="text" name="email"><br/>
					<input type="hidden" name="isSubmitted" value="true">
					<input type="submit" value="submit">
				</form>
			</fieldset>
		<% } %>
</body>
</html>