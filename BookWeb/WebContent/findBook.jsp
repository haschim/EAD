<%@ page import="java.util.*, book.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="bm" class="book.BookManager" scope="session"/>
<%
	int success = 0;

	Book book = null;
	
	boolean submitted = Boolean.parseBoolean(request.getParameter("submitted"));
	if(submitted){
		int isbn = Integer.parseInt(request.getParameter("isbn"));
		book = bm.findBook(isbn);
		
		if(book != null){
			success = 1;
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Book</title>
</head>
<body>
	<h1>Welcome to ABC Library System</h1>
	<form action="findBook.jsp" method="post">
		Enter ISBN<input type="text" name="isbn">
		<input type="hidden" value="true" name="submitted">
		<input type="submit" value="find">
	</form>
	
	<%
		if(submitted){
			if(success == 1){ %>
				<table>
					<tr>
						<td colspan="2"><h2>Book Found</h2></td>
					</tr>
					<tr>
						<td>ISBN</td>
						<td>Title</td>
					</tr>
					<tr>
						<td><%= book.getIsbn() %></td>
						<td><%= book.getTitle() %></td>						
					</tr>
				</table>
		<%  } else  { %>
				<h3>Book NOT Found</h3>		
		<% }
	 } %>

<br>
<a href="form.jsp">Back to Main Menu</a>
</body>
</html>