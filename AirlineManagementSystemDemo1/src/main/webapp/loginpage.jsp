<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="logstyle.css">
</head>
<body>
	<header>
		<div class="main">
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">About Us</a></li>
				<li><a href="#">Contact Us</a></li>
				<li><a href="#">Register</a></li>
			</ul>
		</div>
		<div class="loginbox">
			<img alt="Login" src="images/Avatar-Transparent-Images.png"
				class="author">
			<h1>Login Here</h1>
			<script>
				function validateform() {
					var name = document.form1.uname.value;
					var password = document.form1.upassword.value;

					if (name == null || name == "") {
						alert("Field can't be empty");
						return false;
					} else if (password.length < 6) {
						alert("Password must be at least 6 characters long.");
						return false;
					}
				}
				function validatePassword() {
				    var newPassword = document.getElementById('changePasswordForm').newPassword.value;
				    var minNumberofChars = 6;
				    var maxNumberofChars = 16;
				    var regularExpression  = /^[a-zA-Z0-9!@#$%^&*]{6,16}$/;
				    alert(newPassword); 
				    if(newPassword.length < minNumberofChars || newPassword.length > maxNumberofChars){
				        return false;
				    }
				    if(!regularExpression.test(newPassword)) {
				        alert("password should contain atleast one number and one special character");
				        return false;
				    }
				}
			</script>
			<form action="" name="form1" onsubmit="return validateform()"
				onclick="return validatePassword()">
				<p>Username</p>
				<input type="text" name="uname" placeholder="Enter Username">
				<p>Password</p>
				<input type="password" name="upassword" placeholder="Enter Password">
				<input type="submit" name="submit" value="Login">
				<div class="g-signin2" data-onsuccess="onSignIn" id="myP"></div>
				<a href="#">Forgot your password?</a><br>
				<p>
					Don't have an account? <a href="#">Register</a>
				</p>
			</form>
		</div>
	</header>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>