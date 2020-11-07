<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SaleEntry3</title>
</head>
<body>
	<jsp:useBean id="sale" class="sale.SalesBean" scope="session" />
	<jsp:setProperty name="sale" property="*" />
	<br>
	<table border="1">
		<tr>
			<th>Item Id</th>
			<th>Description</th>
			<th>Price</th>
		</tr>
		<tr align="right">
			<td><jsp:getProperty name="sale" property="id"/></td>
			<td><jsp:getProperty name="sale" property="desc"/></td>
			<td><jsp:getProperty name="sale" property="price"/></td>
		</tr>
	</table>
</body>
</html>