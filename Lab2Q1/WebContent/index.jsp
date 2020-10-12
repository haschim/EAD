<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Coin-Flip</title>
</head>
<body>
	<%	
		session.setMaxInactiveInterval(5);
	
		if(session.isNew()){
			session.setAttribute("heads", 0);
			session.setAttribute("tails", 0);	
		}
		else {
			String winner;
			if(Math.random() < 0.5)
				winner="heads";
			else
				winner="tails";
		
			int oldValue = ((Integer)session.getAttribute(winner)).intValue();
			session.setAttribute(winner, new Integer(oldValue+1));
		}
	%>
	
	<h1 style="text-align:center">Current standings</h1>
	<form action="/index.jsp" method="post">
		<table border="1">
			<tr>
				<th>Heads</th>
				<th>Tails</th>
			</tr>
			<tr>
				<td><%= session.getAttribute("heads") %></td>
				<td><%= session.getAttribute("tails") %></td>				
			</tr>
		</table>
	</form>
</body>
</html>