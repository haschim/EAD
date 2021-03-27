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
		<table>
			<tr>
				<td></td>
				<td><b>Loan calculator</b></td>
			</tr>
			<tr>
				<td><h:outputLabel for="salary">Salary: </h:outputLabel></td>
				<td><h:inputText id="salary" value="#{loanMB.salary}" /></td>
			</tr>
			<tr>
				<td><h:outputLabel for="experience">Experience: </h:outputLabel></td>
				<td>
					<h:selectOneRadio value="#{loanMB.experience}" style="display:inline-table;">
						<f:selectItem itemLabel="Less than 10 years" itemValue="<10years" />
						<f:selectItem itemLabel="At least 10 years" itemValue=">=10years" />
					</h:selectOneRadio>
				</td>
			</tr>
			<tr>
				<td></td>
				<td><h:commandButton  value="Calculate" action="#{loanMB.calculate()}" /></td>
			</tr>
			<tr>
				<td><h:outputLabel for="maxAmount">Maximum amount: </h:outputLabel></td>
				<td><h:inputText id="maxAmount" value="#{loanMB.maxAmount}" /></td>
			</tr>		
			<tr>
				<td><h:outputLabel for="interestRate">Interest Rate: </h:outputLabel></td>
				<td><h:inputText id="interestRate" value="#{loanMB.interestRate}" /></td>
			</tr>			
		</table>
	</h:form>
</f:view>
</body>
</html>