<%@ page import="java.util.*, book.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<jsp:useBean id="bm" class="book.BookManager" scope="session" />
<%
	ArrayList<Book> books = bm.getAllBooks();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Books</title>
</head>
<body>
	<table>
		<tr>
			<td colspan="2">
				<h2>Existing Books</h2>
			</td>
		</tr>
		<tr>
			<td><h3>ISBN</h3></td>
			<td><h3>Title</h3></td>
		</tr>
		<%
			for(int i=0;i<books.size();i++){
				Book book = books.get(i);
		%>
		<tr>
			<td><%= book.getIsbn() %></td>
			<td><%= book.getTitle() %></td>
		</tr>
		<% } %>
	</table>

<br>
<a href="form.jsp">Back to Main Menu</a>
</body>
</html>