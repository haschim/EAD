<%@ page language="java"%>
<jsp:useBean id="myBean" class="book.StudentManager" scope="session"/>
<%
	boolean isSubmitted = Boolean.parseBoolean(request.getParameter("isSubmitted"));
	
    int rowCount = 0;
    
    int id = 0;
	String name = "";
	String code = "";
    
    if(isSubmitted){
    	id = Integer.parseInt(request.getParameter("id"));
    	name = request.getParameter("name");
    	code = request.getParameter("code");
    	
    	rowCount = myBean.addStudent(id, name, code);
	}
%>
<!DOCTYPE html>
<html>
<head>
	<title>Register Page</title>
</head>
<body>
	<form action="register.jsp" method="post">
		<h3>Module Registration System</h3>
	
		<label for="id">Id: </label>
		<input type="text" name="id"><br/>
		
		<label for="name">Name: </label>
		<input type="text" name="name"><br/>
		
		<label for="code">Code: </label>
		<input type="text" name="code"><br/>
		
		<input type="hidden" name="isSubmitted" value="true">
		<input type="submit" value="Register Student">
		
		<% if(isSubmitted && rowCount == 1) { %>
			<p>Thank You <%= name %>! You have successfully registered for the module <%= code %>.</p>
		<% } %>
	</form>
</body>
</html>
