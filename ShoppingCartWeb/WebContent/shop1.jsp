<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shop1</title>
</head>
<body>
	<jsp:useBean id="cart" class="cart.CartBean" scope="session"/>
	
	<%-- 
		<%
			Boolean submitted1 = Boolean.parseBoolean(request.getParameter("Submitted1"));
			if(submitted1){
				String itemNames[] = request.getParameterValues("checkboxes1");
				
				for(int i = 0; i < itemNames.length; i++){
					cart.addItem(itemNames[i]);
				}
				
				response.sendRedirect("shop2.jsp");
			}
		%>
	--%>

	<form method="post" action="shop2.jsp">
		<table border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td><font size="16">Select Items: </font></td>
			</tr>
			<tr>
				<td align="center">                   
					<input type="checkbox" name="checkBoxes1" value="ITEM 1"/>ITEM 1.<br>
					<input type="checkbox" name="checkBoxes1" value="ITEM 2"/>ITEM 2.<br>			
					<input type="checkbox" name="checkBoxes1" value="ITEM 3"/>ITEM 3.<br>
					<input type="checkbox" name="checkBoxes1" value="ITEM 4"/>ITEM 4.<br>
					<input type="checkbox" name="checkBoxes1" value="ITEM 5"/>ITEM 5.<br><br>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="Next Page" /></td>
			</tr>
		</table>
	</form>
	
</body>
</html>