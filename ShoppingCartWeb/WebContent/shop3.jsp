<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shop3</title>
</head>
<body>
	<jsp:useBean id="cart" class="cart.CartBean" scope="session"/>
	
	<%
		String ItemNames2[] = request.getParameterValues("checkBoxes2");
		session.setAttribute("checkBoxes2", ItemNames2);
	%>
	
	
	<form method="post" action="final.jsp">
		<table border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td><font size="16">Select More Items: </font></td>
			</tr>
			<tr>
				<td align="center">                   
					<input type="checkbox" name="checkBoxes3" value="ITEM 11"/>ITEM 11.<br>
					<input type="checkbox" name="checkBoxes3" value="ITEM 12"/>ITEM 12.<br>			
					<input type="checkbox" name="checkBoxes3" value="ITEM 13"/>ITEM 13.<br>
					<input type="checkbox" name="checkBoxes3" value="ITEM 14"/>ITEM 14.<br>
					<input type="checkbox" name="checkBoxes3" value="ITEM 15"/>ITEM 15.<br><br>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="Show All Purchases" /></td>
			</tr>
		</table>
	</form>

</body>
</html>