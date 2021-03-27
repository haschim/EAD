<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="sale" class="sale.SalesBean" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SalesEntry1</title>
</head>
<body>
	<jsp:setProperty property="id" 
					 name="sale" 
					 value="<%= Integer.parseInt(request.getParameter("id")) %>"/>

	<jsp:setProperty property="desc" 
					 name="sale" 
					 value="<%= request.getParameter("desc") %>"/>
					 
	<jsp:setProperty property="price" 
				 name="sale" 
				 value="<%= Double.parseDouble(request.getParameter("price")) %>"/>

	<form>
	<table border="1">
		<tr>
			<th>Item ID</th>
			<th>Description</th>
			<th>Price</th>
		</tr>
		<tr>
			<td><jsp:getProperty property="id" name="sale"/></td>
			<td><jsp:getProperty property="desc" name="sale"/></td>
			<td><jsp:getProperty property="price" name="sale"/></td>
		</tr>
	</table>
	</form>
	<a href="SaleEntry2.jsp" target="_self">SaleEntry2</a>
</body>
</html>