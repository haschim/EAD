<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forward Demo</title>
</head>
<body>
	<jsp:forward page="/forward.jsp">
		<jsp:param name="Name" value="John Smith"/>
		<jsp:param name="Age" value="18"/>
	</jsp:forward>
</body>
</html>