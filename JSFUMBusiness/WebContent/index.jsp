<%@ page language="java"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html>
<html>
<head>
	<title>UM Business page</title>
</head>
<body>
	<f:view>
		<h:form>
				<h3>UM Business School</h3>
				
				<h:outputLabel for="grade1">Grade 1: </h:outputLabel>
				<h:inputText id="grade1" value="#{enrolmentBean.grade1}"/>
				<br/>
				
				<h:outputLabel for="grade2">Grade 2: </h:outputLabel>
				<h:inputText id="grade2" value="#{enrolmentBean.grade2}"/>
				<br/>
				
				<h:outputLabel for="programme">Programme: </h:outputLabel>
				<h:selectOneRadio value="#{enrolmentBean.programme}" style="display:inline-table;">
					<f:selectItem itemValue="diploma" itemLabel="Diploma"/>
					<f:selectItem itemValue="degree" itemLabel="Degree"/>
				</h:selectOneRadio>
				<br/>
				
				<h:commandButton action="#{enrolmentBean.CheckQualification()}"
				value="Check Qualification"/>
				<br/>
				
				<h:outputLabel for="totalMark">Total Marks: </h:outputLabel>
				<h:outputText value="#{enrolmentBean.totalMarks}" />
				<br/>
				
				<h:outputLabel for="eligible">Eligible: </h:outputLabel>
				<h:outputText value="#{enrolmentBean.eligible}" />
		</h:form>
	</f:view>
</body>
</html>