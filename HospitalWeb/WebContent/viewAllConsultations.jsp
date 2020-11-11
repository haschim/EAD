<%@ page import="java.util.*, hospital.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <jsp:useBean id="cm" class="hospital.ConsultationManager" scope="session" />

<%
	ArrayList<Consultation> consultations = cm.getAllConsultations();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display All Consultations</title>
</head>
<body>
	<table>
		<tr>
			<td colspan="4">
				<h2>Preview</h2>
			</td>
		</tr>
		<tr>
			<td><h3>conId</h3></td>
			<td><h3>docId</h3></td>
			<td><h3>patId</h3></td>
			<td><h3>conComments</h3></td>
		</tr>
		<%	for(Consultation consult : consultations){ %>
			<tr>
				<td><%= consult.getConId() %></td>
				<td><%= consult.getDocId() %></td>
				<td><%= consult.getPatId() %></td>
				<td><%= consult.getConComments() %></td>
			</tr>
		<%	} %>
	</table>
</body>
</html>