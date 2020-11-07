<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="account" class="account.AccountBean" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WebCLient page</title>
</head>
<body>
	<%
		double amt = Double.parseDouble(request.getParameter("amt"));
		String choice = request.getParameter("choice");
		
		if(choice.equals("dep"))
			account.deposit(amt);
		else
			account.withdraw(amt);	
	%>


	<p>The transaction is complete</p>
	<b>Your Current Balance is:</b><span><jsp:getProperty property="balance" name="account"/></span><br>
	<b>Your last transaction amount</b><span><jsp:getProperty property="amount" name="account"/></span><br>
	<a href="form.jsp">Back to Main Menu</a>
</body>
</html>