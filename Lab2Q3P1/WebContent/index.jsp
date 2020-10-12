<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Information</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>
				<jsp:include page="/header.jsp" flush="false">
					<jsp:param name="studID" value="1812020"/>
					<jsp:param name="studName" value="John Smith"/>
				</jsp:include> 
			</td>
		</tr>
	</table>
</body>
</html>