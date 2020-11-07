<%@ page language="java" %>

<%-- using <jsp:useBean></jsp:useBean> tag --%> 
<jsp:useBean id="helloBean" class="hello.HelloWorld" scope="session"></jsp:useBean>
<%= helloBean.sayHello("Haschim") %> 

<%-- part a | using bean as ordinary class --%>
<%--
	<%@ page import="hello.HelloWorld"%>
	<%! private HelloWorld demo = new HelloWorld(); %>
	<%= demo.sayHello("John") %>
--%>


<%-- part b | using EJB annotation --%>
<%--
	<%@ page import="hello.HelloWorld,javax.ejb.*"%>
	<%! @EJB private HelloWorld demo = new HelloWorld(); %>
	<%= demo.sayHello("Smith") %>
--%>