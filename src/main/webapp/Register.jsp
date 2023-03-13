<%-- 
    Document   : Register
    Created on : 08-Mar-2023, 10:08:42 pm
    Author     : tinke
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file = "Complnents.jsp" %>
        <link rel="stylesheet" href="Css/Register.css"
    </head>
    <body>
	<div class="container">
		<h1>Register On Here</h1>
		<form action="RegisterServlet" method="post">
			<label for="name">Name:</label>
			<input type="text" id="name" name="name" required>

			<label for="email">Email:</label>
			<input type="email" id="email" name="email" required>

			<label for="password">Password:</label>
			<input type="password" id="password" name="password" required>

			<label for="confirm_password">Confirm Password:</label>
			<input type="password" id="confirm_password" name="confirm_password" required>

			<label for="phone">Phone:</label>
			<input type="tel" id="phone" name="phone"  required>

			<label for="address">Address:</label>
			<input type="text" id="address" name="address" required>

			<input type="submit" value="Register">
		</form>
		<p>Already have an account? <a href="Login.jsp">Sign in here</a>.</p>
	</div>
</body>

</html>
