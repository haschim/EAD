<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.*, hospital.*" %>
    
<jsp:useBean id="dm" class="hospital.DoctorManager" scope="session" />
<jsp:useBean id="pm" class="hospital.PatientManager" scope="session" />
<jsp:useBean id="cm" class="hospital.ConsultationManager" scope="session" />

<%
	ArrayList<Doctor> doctors = dm.getAllDoctors();
	ArrayList<Patient> patients = pm.getAllPatients();
	
	int lastCID = cm.getLastCID(); 
	
	boolean submitted = Boolean.parseBoolean(request.getParameter("submitted"));
	if(submitted){
		int cId = ++lastCID;
		int dId = Integer.parseInt(request.getParameter("doctors"));	
		int pId = Integer.parseInt(request.getParameter("patients"));
		String conComments = request.getParameter("conComments");
		
		cm.AddVisit(cId, dId, pId, conComments);
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Visit Page</title>
</head>
<body>

	<h1>Consultation</h1>
	<form action="addVisit.jsp" method="post">
	
		<select name="doctors" multiple>
		<%  for(Doctor doc : doctors){ %>
				<option value="<%= doc.getDocId() %>"><%= doc.getDocName() %></option>	
		<% } %>
		</select>
		
		<select name="patients" multiple>
		<%  for(Patient pat : patients){ %>
				<option value="<%= pat.getPatId() %>"><%= pat.getPatName() %></option>	
		<% } %>
		</select>
		
		<input type="text" name="conComments">
		
		<input type="hidden" value="true" name="submitted">
		<input type="submit" value="Submit">
	</form>

	<jsp:include page="viewAllConsultations.jsp" />
</body>
</html>