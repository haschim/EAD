<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="bm" class="book.BookManager" scope="session"/>
	
	<%
		int success = 0;
		boolean submitted = Boolean.parseBoolean(request.getParameter("submitted"));
		
		if(submitted){
			int isbn = Integer.parseInt(request.getParameter("isbn"));
			success = bm.deleteBook(isbn);
		}
	%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Book</title>
</head>
<body>
	<h1>Welcome to ABC Library System</h1>
	<form action="deleteBook.jsp" method="post">
		Enter ISBN<input type="text" name="isbn">
		<input type="hidden" value="true" name="submitted">
		<input type="submit" value="Delete">
	</form>
	
	<%
		if(submitted){
			if(success==1){ %>
				<h3>Book has been deleted</h3>
			<% } else { %>
				<h3>Book has NOT been deleted</h3>
		<% }
		} 
	%>

	<!-- Use to view updated table -->
	<jsp:include page="viewAllBooks.jsp" />
</body>
</html>