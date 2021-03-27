<%@ page language="java" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Loan Calculator</title>
	</head>
<body>
<f:view>
	<h:form>
		<b>Loan calculator</b><br/>
		
		<h:outputLabel for="salary">Salary: </h:outputLabel>
		<h:inputText id="salary" value="#{loanMB.salary}" /><br>
		
		<h:outputLabel for="experience">Experience: </h:outputLabel>
		<h:selectOneRadio value="#{loanMB.experience}" style="display:inline-table;">
				<f:selectItem itemLabel="Less than 10 years" itemValue="<10years" />
				<f:selectItem itemLabel="At least 10 years" itemValue=">=10years" />
		</h:selectOneRadio><br>

		<h:commandButton  value="Calculate" action="#{loanMB.calculate()}" /><br>
		
		<h:outputLabel for="maxAmount">Maximum amount: </h:outputLabel>
		<h:inputText id="maxAmount" value="#{loanMB.maxAmount}" /><br>		
		
		<h:outputLabel for="interestRate">Interest Rate: </h:outputLabel>
		<h:inputText id="interestRate" value="#{loanMB.interestRate}" />
	</h:form>
</f:view>
</body>
</html>