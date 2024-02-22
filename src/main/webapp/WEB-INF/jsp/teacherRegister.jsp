<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.container {
	display: flex;
	justify-content: center;
	background-color: rgb(231, 224, 224);
	padding: 20px;
	min-height: 100vh;
	/* Full height */
	box-sizing: border-box;
}

.items {
	background-color: rgb(161, 141, 141);
	width: 350px;
	/* Adjusted width */
	height: fit-content;
	margin-top: 100px;
	margin-left: 70px;
	padding: 20px;
	box-sizing: border-box;
}

h2 {
	text-align: center;
}

form {
	display: flex;
	flex-direction: column;
}

.form-group {
	margin-bottom: 10px;
	margin-right: 20px;
}

.form-group label {
	display: block;
	margin-bottom: 5px;
}

.form-group input {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.button {
	display: inline-block;
	width: 40%;
	padding: 10px;
	background-color: #007bff;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
}

.button:hover {
	background-color: #a1afbe;
}

#navbar {
	font-size: 50px;
	color: white;
	text-align: center;
	background-color: rgb(48, 36, 36);
	padding: 10px;
}
h3 {
	color: lightgreen;
}
</style>
<title>Welcome to BCC</title>
</head>

<body>
	<nav id="navbar">Welcome to Bright Coaching Centre</nav>
	<div class="container">
		<!-- Student login section -->
		<div class="items">
			<h3>${msg}</h3>
			<h2>Teacher Register</h2>
			<form action="/teacherRegister" method="post">
				<div class="form-group">
					<label for="teacherId">Teacher ID:</label> <input type="text"
						id="teacherId" name="teacherid" required>
				</div>
				<div class="form-group">
					<label for="teacherName">Teacher Name:</label> <input type="text"
						id="teacherName" name="teachername" required>
				</div>
				<div class="form-group">
					<label for="teacherMail">teacher Mail:</label> <input type="text"
						id="teacherMail" name="teachermail" required>
				</div>
				<div class="form-group">
					<label for="teacherMobile">teacher Mobile:</label> <input type="text"
						id="teacherMobile" name="teachermobile" required>
				</div>
				<div class="form-group">
					<label for="teacherPassword">Teacher Password:</label> <input type="text"
						id="teacherPassword" name="teacherpassword" required>
				</div>
				<div>
					<button type="submit" class="button">Register</button>
					<a href="/logInPage" class="button">Back</a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>