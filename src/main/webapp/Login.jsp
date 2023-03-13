<%-- 
    Document   : Login
    Created on : 08-Mar-2023, 10:44:24 pm
    Author     : tinke
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <%@include file = "Complnents.jsp" %>
        <link rel="StyleSheet" href="Css/Login.css"/>
    </head>
    <style>
        * {
	box-sizing: border-box;
}

body {
	background-color: #f2f3f4;
	font-family: Arial, sans-serif;
}

.login-page {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.form {
	background-color: #fff;
	padding: 40px;
	border-radius: 5px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	max-width: 400px;
	width: 100%;
}

.form h1 {
	color: #222;
	font-size: 32px;
	margin-bottom: 30px;
}

.form label {
	display: block;
	color: #666;
	font-size: 14px;
	font-weight: bold;
	margin-bottom: 10px;
}

.form input[type="text"],
.form input[type="password"] {
	width: 100%;
	padding: 10px;
	border-radius: 3px;
	border: 1px solid #ccc;
	margin-bottom: 20px;
	font-size: 16px;
}

.form input[type="submit"] {
	background-color: #FF9900;
	color: #fff;
	font-size: 16px;
	border: none;
	border-radius: 3px;
	padding: 10px 20px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.form input[type="submit"]:hover {
	background-color: #E68A00;
}

.form p {
	margin-top: 20px;
	font-size: 14px;
	color: #666;
	text-align: center;
}

.form a {
	color: #FF9900;
	text-decoration: none;
	transition: color 0.3s ease;
}

.form a:hover {
	color: #E68A00;
}
    
    </style>
    <body>
	<div class="login-page">

		<div class="form" >
                    
                    <h1>LogIn In TBAD</h1>
    <% 
String errorMessage = (String) session.getAttribute("errorMessage");
if (errorMessage != null) {
%>
    <div class="alert alert-danger" role="alert">
        <%= errorMessage %>
    </div>
<% 
} 
session.removeAttribute("errorMessage");
%>

<!--<h1>LogIn In TBAD</h1>-->


			<form class="login-form" action="login">
				<input type="text" placeholder="Email" name="email" />
				<input type="password" placeholder="Password" name="pass" />
				<button>Sign In</button>
				<p class="message">Not registered? <a href="Register.jsp">Create an account</a></p>
			</form>
		</div>
	</div>
</body>
</html>
