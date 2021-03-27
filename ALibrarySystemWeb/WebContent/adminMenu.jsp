<%@ page language="java"%>
<% 
	boolean isSubmitted = Boolean.parseBoolean(request.getParameter("isSubmitted"));
	if(isSubmitted){
		String option = request.getParameter("option");
		
		if(option.equals("displayAllBooks")){
			response.sendRedirect("http://localhost:8080/ALibrarySystemJSF/faces/displayAllBooks.jsp");
		} else if(option.equals("searchBook")) {
			response.sendRedirect("http://localhost:8080/ALibrarySystemJSF/faces/searchBook.jsp");
		} else if(option.equals("addBook")){
			response.sendRedirect("http://localhost:8080/ALibrarySystemJSF/faces/addBook.jsp");
		} else if(option.equals("updateBook")){
			response.sendRedirect("http://localhost:8080/ALibrarySystemJSF/faces/updateBook.jsp");
		} else if(option.equals("deleteBook")){
			response.sendRedirect("http://localhost:8080/ALibrarySystemJSF/faces/deleteBook.jsp");
		} else {
			response.sendRedirect("http://localhost:8080/ALibrarySystemJSF/faces/salary.jsp");
		}
	}
	
	boolean isLogout  = Boolean.parseBoolean(request.getParameter("isSubmitted"));
	if(isLogout){
		session.invalidate();
	}	
%>
<!DOCTYPE html>
<html>
<head>
	<title>Administrator Menu</title>
	<link rel="stylesheet" href="./assets/style.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
</head>
<body>
	<h3 class="page__heading">Administrator Menu</h3>
	<form action="" method="post" class="form flex--column center--horizontal">
		<div class="padding--vertical">
			<input type="radio" name="option" value="displayAllBooks" class="padding--top" checked="checked"> Display All Books<br/>
			<input type="radio" name="option" value="searchBook"> Search Book<br/>
			<input type="radio" name="option" value="addBook"> Add Book<br/>
			<input type="radio" name="option" value="updateBook"> Update Book<br/>
			<input type="radio" name="option" value="deleteBook"> Delete Book<br/>
			<input type="radio" name="option" value="salary"> Calculate Salary<br/>
		</div>
		
		<input type="hidden" name="isSubmitted" value="true">
		<input type="submit" value="Go to selected page" class="form__button yellow--btn">
	</form>

	<form action="http://localhost:8080/ALibrarySystemWeb/login.jsp" method="post">
		<input type="hidden" name="isLogout" value="true">
		<input type="submit" value="Logout" class="form__hyperlink">
	</form>
</body>
</html>