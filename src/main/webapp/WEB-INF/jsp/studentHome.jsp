<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>student Dashboard</title>
<style>
header {
	background-color: black;
	text-align: center;
	padding: 10px;
	font-size: 2.3em;
	color: rgb(87, 143, 247);
}

.navbar {
	background-color: rgb(101, 68, 136);
	display: flex;
	align-items: center;
	flex-direction: row-reverse;
}

.navbar p {
	color: white;
	margin: 0px;
	margin-right: 30px;
	font-size : 30px;
	padding: 0px;
	font-size: 30px;
}

.navbar h4 {
	margin: 0px;
	margin-right: 5px;
	color: red;
}

.navbar button:hover {
	background-color: red;
	color: white;
	cursor: pointer;
}

.container {
	display: flex;
	background-color: rgb(231, 224, 224);
	height: 600px;
}

#download {
	text-align: center;
	background-color: gray;
	margin-top: 50px;
	margin-left: 250px;
	height: 370px;
}

#download button {
	background-color: aqua;
	display: grid;
	padding: 5px 0px;
	box-sizing: border-box;
	font-size: 1.5em;
	width: 400px;
	margin-top: 10px;
}

.examButton {
	background-color: #80461b;
	height: 150px;
	width: 200px;
	border-radius: 20px;
	text-align: center;
	font-size: 2em;
	margin-top: 190px;
	margin-left: 300px;
}

.examButton:hover {
	background-color: activeborder;
	color: white;
	cursor: pointer;
}

#download button:hover {
	background-color: lime;
	color: white;
	cursor: pointer;
}
</style>

</head>

<body>
	<div class="Dashboard">
		<header> Bright Coaching Centre</header>
		<nav class="navbar">
			<form action="/studentLoginPage" method="get"><button>logout</button></form>
			<button>Update</button>
			<h4>${loggedInStudentName}</h4>
			<p>Student Dashboard</p>
		</nav>
		<div id="dash" class="container">
		<form action="/gotoExam" method="get"><button class="examButton">Exam/Quiz</button></form>
			<div id="download" class="items">
				<h2>Download Section</h2>
				<button>Notes</button>
				<button>Time Table</button>
				<button>Syllabus</button>
				<button>Notes</button>
				<button>Time Table</button>
				<button>Syllabus</button>
			</div>
			
		</div>
	</div>

    <script>
        history.pushState(null, null, location.href);
        window.onpopstate = function () {
            history.go(1);
        };
    </script>
</body>
</html>