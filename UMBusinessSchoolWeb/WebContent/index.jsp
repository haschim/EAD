<%@ page language="java" %>
<jsp:useBean  class="book.Enrolment" id="enrol" scope="session" />

<%
	String grade1 = request.getParameter("grade1");
	String grade2 = request.getParameter("grade2");
	String programme = request.getParameter("programme"); 
	
	int totalMarks = 0;
	boolean isEligible = false;

	boolean isSubmitted = Boolean.parseBoolean(request.getParameter("isSubmitted"));

	if(isSubmitted){
		totalMarks = enrol.totalMarks(grade1, grade2);
		isEligible = enrol.checkQualifications(totalMarks, programme);
	}
%>

<!DOCTYPE html>
<html>
	<head>
		<title>UM Business School</title>	
	</head>
<body>
	<form action="index.jsp" method="POST">
		<h1>UM Business School</h1>
		Grade for Main Subject 1: <input type="text" name="grade1"><br>
		Grade for Main Subject 2: <input type="text" name="grade2"><br>
		Programme: <input type="radio" name="programme" value="diploma">Diploma
					<input type="radio" name="programme" value="degree">Degree<br>
		<input type="hidden" name="isSubmitted" value="true">
		<input type="submit" value="Check Qualification"><br>
	</form>
	Total Marks: <%= totalMarks %><br>
	Eligible: <%= isEligible %>
</body>
</html>