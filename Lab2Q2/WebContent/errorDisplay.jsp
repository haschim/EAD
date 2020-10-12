<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error page</title>
</head>
<body>
	<h1>This is the error page. The following error occurs:-</h1><br/>
	<%= exception.toString() %>
</body>
</html>