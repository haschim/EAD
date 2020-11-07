<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shop2</title>
</head>
<body>
	<jsp:useBean id="cart" class="cart.CartBean" scope="session"/>
	
	<%
		String ItemNames1[] = request.getParameterValues("checkBoxes1");
		session.setAttribute("checkBoxes1", ItemNames1);
	%>
	
	<form method="post" action="shop3.jsp">
		<table border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td><font size="16">Select More Items: </font></td>
			</tr>
			<tr>
				<td align="center">                   
					<input type="checkbox" name="checkBoxes2" value="ITEM 6"/>ITEM 6.<br>
					<input type="checkbox" name="checkBoxes2" value="ITEM 7"/>ITEM 7.<br>			
					<input type="checkbox" name="checkBoxes2" value="ITEM 8"/>ITEM 8.<br>
					<input type="checkbox" name="checkBoxes2" value="ITEM 9"/>ITEM 9.<br>
					<input type="checkbox" name="checkBoxes2" value="ITEM 10"/>ITEM 10.<br><br>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="Next Page" /></td>
			</tr>
		</table>
	</form>
	
</body>
</html>