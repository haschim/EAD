<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="sale" class="sale.SalesBean" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SaleEntry2</title>
</head>
<body>
	<jsp:setProperty name="sale"
					 property="id"
					 param="id" />
					 
	<jsp:setProperty name="sale"
					 property="desc"
					 param="desc" />

	<jsp:setProperty name="sale"
					 property="price"
					 param="price" />
					 
	<br>
	<table border="1">
		<tr>
			<th>Id</th>
			<th>Description</th>
			<th>Price</th>		
		</tr>
		<tr>
			<td><jsp:getProperty name="sale" property="id"/></td>
			<td><jsp:getProperty name="sale" property="desc"/></td>
			<td><jsp:getProperty name="sale" property="price"/></td>
		</tr>
	</table>
	<a href="SaleEntry3.jsp">SaleEntry3</a>
</body>
</html>