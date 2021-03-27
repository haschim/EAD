<%@ page language="java" import="book.Laptop,java.util.*"%>
<jsp:useBean id="myBean" class="book.LaptopManager" scope="session" />
<%
	boolean isSubmitted = Boolean.parseBoolean(request.getParameter("isSubmitted"));	
	
	String model = null;
	double price = 0.0;
	int storage = 0;
	int ram = 0;
	int quantity = 0;

	Laptop laptopObj = new Laptop();
	
	if(isSubmitted){
		String queryModel = request.getParameter("queryModel");
		
		laptopObj = myBean.findLaptop(queryModel);
		
		model = laptopObj.getModel();
		price = laptopObj.getPrice();
		storage = laptopObj.getStorage();
		ram = laptopObj.getRam();
		quantity = laptopObj.getQuantity();
	}
%>
<!DOCTYPE html>
<html>
<head>
	<title>Laptop Page</title>
</head>
<body>
	
	<form action="view.jsp" method="post">
		<h3>Welcome to MauLaptop</h3>
				
		<label for="queryModel">Enter model: </label>
		<input type="text" name="queryModel">
		<input type="hidden" name="isSubmitted" value="true">
		<input type="submit" value="find"><br/><br/>
		
		<% if(isSubmitted) { %>
			<% if(laptopObj.getModel() != null) { %>	
				<b>Laptop Found</b><br/>
			<% } else { %>
				<b>Laptop Not Found</b><br/>
			<% } %>
		<% } %>
		
		<label for="model">Model: </label>
		<%= model %><br/>

		<label for="price">Price: </label>
		<%= price %><br/>
	
		<label for="storage">Storage: </label>
		<%= storage %><br/>
			
		<label for="ram">RAM: </label>
		<%= ram %><br/>
		
		<label for="quantity">Quantity: </label>
		<%= quantity %>
	</form>
</body>
</html>