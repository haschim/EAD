<%-- error.jsp --%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Page</title>
</head>
<body>
	<p>This is the error page. The following error occurs:-</p><br>
	<%= exception.toString() %>
</body>
</html>