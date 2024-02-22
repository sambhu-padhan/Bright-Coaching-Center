<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Teacher Home Page</title>
</head>
<style>
header {
	background-color: black;
	color: white;
	text-align: center;
	font-size: 2.5em;
	padding: 10px 0px;
}

.navbar {
	display: flex;
	flex-direction: row-reverse;
	background-color: green;
	padding-right: 5px;
}

.container {
	background-color: grey;
	height: 560px;
	display: flex;
}

h4 {
	margin: 0px;
	padding: 0px;
}

h3 {
	margin: 0px;
	padding: 0px;
}

.navbutton:hover {
	background-color: grey;
	color: white;
	cursor: pointer;
}

h2 {
	margin-right: 20px;
	margin-top: 5px;
	margin-bottom: 0px;
}

.container_in {
	background-color: aqua;
	margin: 20px 20px;
	display: grid;
	width: 500px;
}

#examSection {
	background-color: rgb(0, 4, 255);
	height: fit-content;
	text-align: center;
}

#setExamBtn {
	background-color: rgb(160, 180, 174);
	padding: 5px 0px;
	text-decoration: underline;
	margin: 5px 0px;
	font-weight: bold;
}
#setExamBtn:hover {
	background-color: #34495E;
	color:white;
}
#studentSection {
    background-color: rgb(0, 4, 255);
	height: fit-content;
	text-align: center;
}
#studentList {
	background-color: rgb(160, 180, 174);
	padding: 5px 0px;
	text-decoration: underline;
	margin: 5px 0px;
	font-weight: bold;
}
#studentList:hover {
	background-color: #34495E;  
	color:white;
}
#downloadSection {
    height: fit-content;
    text-align: center;
	background-color: rgb(0, 4, 255);
}
.downloadLink {
    background-color: aqua;
    margin: 5px;
    font-size: 1rem;
    font-weight: bold;
    padding: 5px 0px;
}
.downloadLink:hover {
    background-color: #34495E;  
	color:white;
}
</style>
<body>
	<header>Bright Coaching Centre</header>
	<div class="navbar">
		<nav id="navbar">
			<h4>${loggedInTeacher}</h4>
			<button class="navbutton">update</button>
			<a href="/teacherlogInPage"><button class="navbutton">logout</button></a>
		</nav>
		<h2>Teacher Dashboard</h2>
		
	</div>
	<div class="container">
		<div class="container_in" id="examSection">
			<h3>Exam Section</h3>
			<a href="/setExam" id="setExamBtn">Set Exam</a>
		</div>

		<div class="container_in" id="studentSection">
			<h3>Student Section</h3>
			<a href="/studentList" id="studentList">Student List</a>
		</div>

		<div class="container_in" id="downloadSection">
			<h2>download Section</h2>
			<a href="#" class="downloadLink" id="timeTable">Time Table</a> 
            <a href="#" class="downloadLink" id="syllabus">Syllabus</a> 
            <a href="#" class="downloadLink" id="notes">Notes</a>
		</div>

	</div>
</body>
</html>