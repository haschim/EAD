<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    	try {
    		String action = request.getParameter("choice");
    		if(action.equals("add"))
    			response.sendRedirect("addBook.jsp");
    		else if(action.equals("find"))
    			response.sendRedirect("findBook.jsp");
    		else if(action.equals("del"))
    			response.sendRedirect("deleteBook.jsp");
    		else if(action.equals("view"))
    			response.sendRedirect("viewAllBooks.jsp");
    	}catch(Exception e){
    		String exp = e.getMessage(); // getParameter() throws IOException
    	}
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Option</title>
</head>
<body>

	<h1>Welcome to ABC Library System</h1>
	<form method="post">
		<b>Select your choice</b><br>
		<input type="radio" name="choice" value="add">Add a new Book<br>
		<input type="radio" name="choice" value="find">Search a Book<br>
		<input type="radio" name="choice" value="del">Delete a Book<br>
		<input type="radio" name="choice" value="view">View All Books<br>
		<input type="submit" value="Submit">
	</form>

</body>
</html>