<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>

<head>
<meta charset="ISO-8859-1">
<title>furniGologin or register</title>
<link type="text/css" rel="stylesheet" href="css/styleslogin.css">
</head>

<body>
	<script src="js/login-registr-forgotpassword-validation.js"></script>

	<div class="login-wrap">
		<div class="login-html">
			<%
			String msg = request.getParameter("msg");
			if ("valid".equals(msg)) {
			%>
			<h2 style="text-align: center; color: yellow;">PLEASE LOGIN</h2>
			<%
			}
			%>
			<%
			if ("invalid".equals(msg)) {
			%>
			<h2 style="text-align: center; color: white;">SOMETHING WRONG</h2>
			
			<h3 style="text-align: center; color: yellow;">PLEASE SIGN UP !</h3>
			<%
			}
			%>
			<%
			if ("notexist".equals(msg)) {
			%>
			<h2 style="text-align: center; color: white;">INCORRECT CREDENTIALS</h2>
			
			<h3 style="text-align: center; color: yellow;"> PLEASE LOG IN AGAIN !</h3>
			<%
			}
			%>
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
				for="tab-1" class="tab">Sign In</label> <input id="tab-2"
				type="radio" name="tab" class="sign-up"><label for="tab-2"
				class="tab">Sign Up</label>
			<div class="login-form">
				<div class="sign-in-htm">
					<!--form for sign-in-->
					<form action="loginAction.jsp" method="post" onsubmit="validations()">
						<div class="group">

							<label for="user" class="label">Email</label> <input id="user"
								type="email" class="input" name="email">
						</div>
						<div class="group">
							<label for="pass" class="label">Password</label> <input id="pass"
								type="password" class="input" data-type="password"
								name="password">
						</div>
						<br>
						<!-- <div class="group">
          <input id="check" type="checkbox" class="check" checked>
          <label for="check"><span class="icon"></span> Keep me Signed in</label>
        </div>-->
						<div class="group">
							<input type="submit" class="button" value="Sign in">
						</div>
						<div class="hr"></div>
						<div class="foot-lnk">
							<a href="forgotpassword.jsp">Forgot Password?</a>
						</div>
					</form>
				</div>
				<div class="sign-up-htm">
					<!--form for signup-->
					<form action="signupAction.jsp" method="post"
						onsubmit="validationsReg()">

						<div class="group">
							<label for="pass" class="label">Email Address</label> <input
								id="pass" type="text" class="input" name="emailReg">
						</div>

						<div class="group">
							<label for="pass" class="label">Password</label> <input id="pass"
								type="password" class="input" data-type="password"
								name="passwordReg">
						</div>
						<div class="group">
							<label for="pass" class="label">Repeat Password</label> <input
								id="pass" type="password" class="input" data-type="password"
								name="passwordRpt">
						</div>

						<div class="group">
							<input type="submit" class="button" value="Sign Up">
						</div>
						<div class="hr"></div>
						<div class="foot-lnk">
							<label for="tab-1">Already Member?</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>

</html>