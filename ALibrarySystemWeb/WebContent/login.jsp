<%@ page language="java" %>
<%@ page import="library.*, java.util.*" %>
<jsp:useBean id="user" class="library.LoginManager" scope="session" /> 
<%		
	boolean isUsernameEmpty = false;
	boolean isPasswordEmpty = false;
	boolean isInvalidUser = false;
	
	String username = "";
	String password = "";
	String role = "";
	
	String rememberMe = null; //cookies
	
	boolean isSubmitted = Boolean.parseBoolean(request.getParameter("isSubmitted"));
	if(isSubmitted){
		username = request.getParameter("username");
		password = request.getParameter("password");
		
		//Cookies section - experimental
		rememberMe = request.getParameter("rememberMe"); // null by default if not checked
		if(rememberMe != null) {
			Cookie c = new Cookie("userCookie", username);
		    c.setMaxAge(-1); //expiry when browser session closes
		    response.addCookie(c); //save cookie
		}
		//Cookies 
		
		if(username.equals("") || password.equals("")){
			if(username.equals("")) {
				isUsernameEmpty = true;	
			}
			
			if(password.equals("")){
				isPasswordEmpty = true;
			}
		} else {
			Login loginObj = user.login(username, password);

			if(loginObj.getUsername() == null) {
				isInvalidUser = true;
			} else {
				isInvalidUser = false;
				if(loginObj.getRole().equals("admin")){
					response.sendRedirect("adminMenu.jsp"); //JSP page
				} else {
					response.sendRedirect("http://localhost:8080/ALibrarySystemJSF/faces/displayAllBooks.jsp?username="+username); //JSF page
				}
			}
		}
	}
	
	//Cookies section - experimental
	boolean isRemembered = false;
	String uid = null;
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(int i = 0; i<cookies.length;i++){
			if(cookies[i].getName().equals("userCookie")){
				isRemembered = true;
				uid = cookies[i].getValue();
			}
		}
	}
	//Cookies 
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="./assets/style.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
</head>
<body>
	<jsp:include page="navbar.jsp" />
	<% if(isRemembered == true){ %>
		<h1 style="center--horizontal padding--top">Welcome back <%= uid %> again, using cookie!</h1>
	<% } %>
 	<section class="login">    
		<% if(isInvalidUser == true) { %>
	    	<span class="form__error">Wrong username or password entered!</span>
	    <% } %>
	    <form action="login.jsp" method="POST" class="form flex--column">
	        <b class="form__heading">Library portal</b>
	        <div class="form__info flex--column">
	            <div class="form__field flex--column">
	                <label for="username" class="form__label">Username</label>
	               	<input type="text" name="username" value="<% if(isSubmitted) { %><%= username %><% } %>" class="form__input">
	              	<% if(isUsernameEmpty){ %>
	               		<span class="validation__error">Username cannot be left empty.</span>
	        		<% } %>
	            </div>
	            <div class="form__field flex--column">
	                <label for="password" class="form__label">Password</label>
	                <input type="password" name="password" class="form__input">
	                <% if(isPasswordEmpty){ %>
	                	<span class="validation__error">Password cannot be left empty.</span>
	                <% } %>
	            </div>
	        </div>
        	<div class="form__rememberMe">
   				<input style="margin-right:1em" type="checkbox" name="rememberMe">
   				<label for="rememberMe">Remember Me</label>
   			</div>
	        <div class="form__buttons flex--column">
	            <input type="hidden" name="isSubmitted" value="true">
	            <input type="submit" value="Login" class="form__button submit">
	            <input type="reset" value="Clear" class="form__button reset">
	        </div>
       	    <a href="./register.jsp" class="form__hyperlink">No account yet? Register now.</a>      

	    </form>
	</section>
</body>
</html>