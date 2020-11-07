<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Coin Toss</title>
</head>
<body>
	<%
		// set default value to '0' if session is new
		if(session.isNew()){
			session.setAttribute("heads", new Integer(0));
			session.setAttribute("tails", new Integer(0));
		}
	
		//randomize number and determine winner 
		String winner="";
		if(Math.random() < 0.5){
			winner="heads";
		} else {
			winner="tails";
		}

		
		//increment the winner
		int oldValue = ((Integer)session.getAttribute(winner)).intValue();
		session.setAttribute(winner, new Integer(oldValue+1));
	%>
	<h1>Current Headings</h1>
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
</body>
</html>