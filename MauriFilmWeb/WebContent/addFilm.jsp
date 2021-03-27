<%@ page language="java"%>
<jsp:useBean id="myBean" class="book.FilmManager" scope="session"/>
<%
	boolean isSubmitted = Boolean.parseBoolean(request.getParameter("isSubmitted"));

	int rowCount = 0;

	if(isSubmitted){
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		String starCast = request.getParameter("starCast");
		int rate = Integer.parseInt(request.getParameter("rate"));
		
		rowCount = myBean.addFilm(id, title, starCast, rate);
	}
%>
<!DOCTYPE html>
<html>
<head>
	<title>MauriFilm Page</title>
</head>
<body>
	<form action="addFilm.jsp" method="post">
		<h3>Welcome to MauriFilm Rental System</h3>
		
		<label for="id">Id: </label>
		<input type="text" name="id"><br/>
		
		<label for="title">Title: </label>
		<input type="text" name="title"><br/>
		
		<label for="starCast">Star Cast</label>
		<input type="text" name="starCast"><br/>
		
		<label for="rate">Rate: </label>
		<input type="text" name="rate"><br/>
		
		<input type="hidden" name="isSubmitted" value="true">
		<input type="submit" value="Insert"><br/><br/>
		
		<!-- Not part of the question  -->
		<h3>
			<% if(isSubmitted && rowCount == 1){ %>
				Record inserted!!!	
			<% } %>
		</h3>
	</form>
</body>
</html>