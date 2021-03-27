<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <jsp:useBean id="myBean" class="book.StatelessCounter" scope="request"></jsp:useBean>
 
 <!-- useBean scope attribute observation 
	 a. page - count remains 1 (reloads count/ reset state)
	 b. request - count remains 1 on both page  (maintain previous state onto next page)
	 c. session - count increments (different figures/instances-states for each client/browser)
	 d. application - count increments (same figure/instance/state for different client/browser)
 -->

<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Counter Page</title>
</head>
<body>
	<% myBean.incrementCount(); %>
	<% myBean.incrementCount(); %>
	<% myBean.incrementCount(); %>
	<% myBean.incrementCount(); %>
	<% myBean.incrementCount(); %>
	<%= myBean.getCount() %>
	
	<jsp:forward page="newPage.jsp"></jsp:forward>
	
</body>
</html>