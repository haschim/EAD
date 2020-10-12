<%@ page errorPage="errorDisplay.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exception Demo</title>
</head>
<body>
	<%
		out.println("testing");
		String s = null;
		int i = Integer.parseInt(s);
	%>
</body>
</html>