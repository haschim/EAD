<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forward Page</title>
</head>
<body>
	This page had 2 parameters forwarded to it!<br>
	<b>Name:</b><%= request.getParameter("Name") %><br>
	<b>Age:</b><%= request.getParameter("Age") %>
</body>
</html>