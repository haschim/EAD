<%@page import="book.StatelessCounter" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Page</title>
</head>
<body>
	<%= ((StatelessCounter)request.getAttribute("myBean")).getCount() %>
</body>
</html>