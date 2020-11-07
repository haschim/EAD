<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="bm" class="book.BookManager" scope="session"/>
    
<%
	int success = 0;

	boolean submitted = Boolean.parseBoolean(request.getParameter("submitted"));
	
	if(submitted){
		int isbn = Integer.parseInt(request.getParameter("isbn"));
		String title = request.getParameter("title");
		
		success = bm.createBook(isbn, title);
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Book</title>
</head>
<body>
	
	<h1>Welcome to ABC Library System</h1>
	<form action="addBook.jsp" method="post">
		Enter Details<input type="text" name="isbn">
		<input type="text" name="title">
		<input type="hidden" value="true" name="submitted">
		<input type="submit" value="add">
	</form>

	<%	if(submitted) {  
			if(success==1) {%>
				<h3>Record Saved</h3>	
		<% } else { %>
			  <h3>Record NOT Saved</h3>
		<% }
		} 
	%>
	
	<!-- Use to view updated table -->
	<jsp:include page="viewAllBooks.jsp" />

</body>
</html>