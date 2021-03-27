<%@ page language="java" %>
<%@ page import="library.*" %>
<jsp:useBean id="client" class="library.RegisterManager" scope="session" /> 
<%-- <%@ page errorPage = "Oops.jsp" %> not in use - currently using try-catch --%>
<%
	boolean isSubmitted = Boolean.parseBoolean(request.getParameter("isSubmitted"));
	boolean isRegistrationSuccess = false; 
	boolean isUsernameUsed = false;
	
	String username = null;
	if(isSubmitted){
		username = request.getParameter("username");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String role = request.getParameter("role");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		Register regObj = new Register(username, firstname, lastname, role, email, password);
		
		try {
			isRegistrationSuccess = client.register(regObj);
			if(isRegistrationSuccess == true){
				response.sendRedirect("./registered.jsp");
			}
		}catch(Exception ex){
			isUsernameUsed = true;
		}
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="./assets/style.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
</head>
<body>
    <%@ include file="navbar.jsp" %>
    <section class="register">
    <% if(isSubmitted == true && isUsernameUsed == true) {%>
    	<span class="form__error">Username: "<%= username %>" is already taken!</span>
    <% } %>
        <form action="./register.jsp" method="POST" class="form flex--column">
            <h1 class="form__heading">Library portal</h1>
            <div class="form__info flex--column">
                <div class="form__field flex--column">
                    <label for="username" class="form__label">Username</label>
                    <input type="text" name="username" class="form__input" required="required">         
                </div>
                <div class="form__field flex--column">
                    <label for="firstname" class="form__label">Firstname</label>
                    <input type="text" name="firstname" class="form__input" required="required">
                </div>
                <div class="form__field flex--column">
                    <label for="lastname" class="form__label">Lastname</label>
                    <input type="text" name="lastname" class="form__input" required="required">
                </div>
                <div class="form__field flex--column">
                    <label for="role" class="form__label">Role</label>
                    <select name="role" class="form__input">
                    	<option value="admin">Administrator</option>
                    	<option value="student">Student</option>
                    </select>
                </div>
                <div class="form__field flex--column">
                    <label for="email" class="form__label">Email</label>
                    <input type="email" name="email" class="form__input" required="required">
                </div>
                <div class="form__field flex--column">
                    <label for="password" class="form__label">Password</label>
                    <input type="password" name="password" class="form__input" required="required">
                </div>
            </div>
            <div class="form__buttons flex--column">
                <input type="hidden" name="isSubmitted" value="true">
                <input type="submit" value="Register" class="form__button submit">
                <input type="reset" value="Clear" class="form__button reset">
            </div>
        </form>
    </section>
</body>
</html>