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
	text-decoration: none;
	text-align: center;
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
</style>
<title>Welcome to BCC</title>
</head>

<body>
	<nav id="navbar">Bright Coaching Centre</nav>
	<div class="container">
		<!-- Student login section -->
		<div class="items">
			<h4 style="color: blue">${Msg}</h4>
			<h2>Student Register</h2>
			<form action="/addStudent" method="post">
				<div class="form-group">
					<label for="studentid">Student ID:</label> <input type="text"
						id="studentid" name="studentid" required>
				</div>
				<div class="form-group">
					<label for:"studentName">Name :</label>
				    <input type="text" id="studentName" name="studentname" required>
				</div>
				<div class="form-group">
					<label for="studentMail">mailId :</label>
					<input type="text" id="studentMail" name="studentmailid" required>
				</div>
				<div class="form-group">
					<label for="studentPassword">Password:</label> <input
						type="password" id="studentPassword" name="studentpassword"
						required>
				</div>
				<div class="form-group">
					<label for="studentmobile">Mobile No:</label> <input
						type="text" id="studentmobile" name="studentmobile"
						required>
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