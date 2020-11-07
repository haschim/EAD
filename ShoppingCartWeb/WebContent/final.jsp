<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<jsp:useBean id="cart" class="cart.CartBean" scope="session"/>
<%
	String ItemNames1[] = ((String[])session.getAttribute("checkBoxes1"));
	String ItemNames2[] = ((String[])session.getAttribute("checkBoxes2"));

	String ItemNames3[] = request.getParameterValues("checkBoxes3");
	
	if(!(ItemNames1 == null || ItemNames2 == null || ItemNames3 == null)){
		for(int i=0;i<ItemNames1.length;i++){
			cart.addItem(ItemNames1[i]);
		}
		
		for(int i=0;i<ItemNames2.length;i++){
			cart.addItem(ItemNames2[i]);
		}
		
		for(int i=0;i<ItemNames3.length;i++){
			cart.addItem(ItemNames3[i]);
		}
	}
	
	ArrayList<String> items = cart.getAllItems();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Final</title>
</head>
<body>
	<table align="left" border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td><font size="16">You selected following items:</font></td>
		</tr>
		<% for(int i=0;i<items.size();i++){ %>
			<tr>
				<td><%= items.get(i) %></td>
			</tr>
		<% } %>
	</table>
</body>
</html>