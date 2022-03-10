<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="regstyle.css" type="text/css">
<script>  
	function formValidation()
	{
	    var usrnm = document.registration.username;
		var pswrd = document.registration.password;
		var firstname = document.registration.fname;
		var lastname = document.registration.lname;
		var usremail = document.registration.email;
		var msex = document.registration.male;
		var fsex = document.registration.female;
		if(username_validation(usrnm))
			{
			if(password_validation(pswrd,6,16))
				{
				if(firstname_validation(firstname))
					{
					if(lastname_validation(lastname))
						{
						if(ValidateEmail(usremail))
							{
							if(validsex(msex,fsex))
							{
								
							}
							}
						}
					}
				}
			}
		return false;
	}
	function username_validation(usrnm)
	{
	var letters =  /^[a-z0-9_\.]+$/
	if(usrnm.value.match(letters))
	{
		return true;
	}
	else {
	alert("Username should not be empty /  Usernames can only have Lowercase Letters (a-z),Numbers (0-9),Dots (.),Underscores (_)");
	usrnm.focus();
	return false;
	}
	}
	function password_validation(pswrd,mx,my)
	{
	var letters = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
	if(pswrd.value.match(letters))
	{
		return true;
	
	}
	else {
		alert("Password should not be empty / length be between "+mx+" to "+my+" / Password should contain atleast one number and one special character");
		pswrd.focus();
		return false;
	}
	}
	function firstname_validation(firstname)
	{ 
	var letters = /^[A-Za-z]+$/;
	if(firstname.value.match(letters))
	{
	return true;
	}
	else
	{
	alert("Firstname should not be empty / Must have alphabet characters only");
	firstname.focus();
	return false;
	}
	}
	
	function lastname_validation(lastname)
	{ 
	var letters = /^[A-Za-z]+$/;
	if(lastname.value.match(letters))
	{
	return true;
	}
	else
	{
	alert("Lastname should not be empty / Must have alphabet characters only");
	lastname.focus();
	return false;
	}
	}
	function ValidateEmail(usremail)
	{
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if(usremail.value.match(mailformat))
	{
	return true;
	}
	else
	{
	alert("You have entered an invalid email address!");
	usremail.focus();
	return false;
	}
	}
	function validsex(msex,fsex)
	{
	x=0;

	if(msex.checked) 
	{
	x++;
	} if(fsex.checked)
	{
	x++; 
	}
	if(x==0)
	{
	alert("Select Male/Female");
	msex.focus();
	return false;
	}
	else
	{
	return true;}
	}

	
</script>
</head>
<body onload="document.registration.username.focus();">
	<header>
		<div class="main">
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">About Us</a></li>
				<li><a href="#">Contact Us</a></li>
				<li><a href="#">Register</a></li>
			</ul>
		</div>

		<div class="box">
			<h2>Signup Here</h2>
			<form id="register" name="registration"
				onsubmit="return formValidation()">
				<label>Username : </label> <br> <input type="text"
					name="username" placeholder="Enter Username" id="username">
				<br> <br> <label>Password : </label> <br> <input
					type="password" name="password" placeholder="Enter Password"
					id="password"> <br> <br> <label>First
					Name : </label> <br> <input type="text" name="fname"
					placeholder="Enter Your First Name" id="fname"> <br> <br>
				<label>Last Name : </label> <br> <input type="text"
					name="lname" placeholder="Enter Your Last Name" id="lname">
				<br> <br> <label>Email : </label> <br> <input
					type="email" name="email" placeholder="Enter Your Email" id="email">
				<br> <br> <label id="gender">Gender : </label> <br>
				&nbsp;&nbsp;&nbsp; <input type="radio" name="gender" id="male"
					value="male"> &nbsp; <label for="male">Male</label>
				&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="gender"
					id="female" value="female"> &nbsp; <label for="female">Female</label>
				<br> <br> <label>Age : </label> <br> <input
					type="text" name="age" placeholder="Enter Your Age" id="age">
				<br> <br> <label>Phone : </label> <br> <input
					type="text" name="phone" placeholder="Enter Your Phone No"
					id="phone"> <br> <br> <input type="submit"
					value="Register" name="register" id="register">
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