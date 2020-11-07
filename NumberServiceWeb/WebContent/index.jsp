<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="myBean" class="lab.NumberServiceBean" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Generate Numbers</title>
</head>
<body>
   <% 
  		double small = myBean.getNumber(10);
		double medium = myBean.getNumber(100); 
      	double big = myBean.getNumber(1000); 
	%>
	
	Small: (Range 0-10) - <%= small %><br>
	Medium: (Range 0-100) - <%= medium %><br>
	Big: (Range 0-100) - <%= big %>
	
</body>
</html>