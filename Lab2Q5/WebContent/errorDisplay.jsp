<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Page</title>
</head>
<body>
	This is the Error page. The following error occurs:-<br>
	<%= exception.toString() %>
</body>
</html>