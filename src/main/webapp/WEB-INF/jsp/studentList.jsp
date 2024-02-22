<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>manage-students</title>
<link rel="stylesheet" href="/static/css/studentlist.css">
</head>
<style>
.popup {
	display: none;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border: 1px solid #ccc;
	padding: 20px;
	background-color: #fff;
	z-index: 1;
}

.popup-content {
	text-align: center;
}

.close {
	color: #aaa;
	float: right;
	font-size: 20px;
	font-weight: bold;
	cursor: pointer;
}

.close:hover {
	color: black;
}
</style>
<body>
	<header>Bright Coaching Centre</header>
	<div class="navbar">
		<nav id="navbar">
			<h4>${loggedInTeacher}</h4>
			<a href="teachertHome"><button class="navbutton">Teacher
					HomePage</button></a>
			<button class="navbutton">update</button>
			<a href="/logInPage"><button class="navbutton">logout</button></a>
		</nav>
		<h2>Manage Students</h2>
	</div>
	<div class="container" id="tableData">
		<h3>All Student Details</h3>
		<c:if test="${empty msg}">
			<h3>${msg}</h3>
		</c:if>
		<c:if test="${not empty msg}">
			<h3>${msg}</h3>
		</c:if>
		<table id="studentTable">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Password</th>
				<th>MailId</th>
				<th>MobileNo</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="student" items="${students}" varStatus="status">
				<tr>
					<td>${student.studentid}</td>
					<td>${student.studentname}</td>
					<td>${student.studentpassword}</td>
					<td>${student.studentmailid}</td>
					<td>${student.studentmobile}</td>
					<td><button class="updateButton"
							onclick="showPopup('${student.studentid}','${student.studentname}','${student.studentpassword}','${student.studentmailid}','${student.studentmobile}')">
							Update</button></td>
					<td><a href="/studentDelete?studentid=${student.studentid}"><button
								onclick="return onDeleteButton('${student.studentname}');">Delete</button></a></td>
				</tr>

			</c:forEach>
		</table>
	</div>
	<div id="popup" class="popup">
		<h2>update student details</h2>
		<form action="/updateStudent" method="post">
			<input type="hidden" id="oldStudentId" name="oldStudentId"
				value="${student.studentid}" >
			<div class="form-group">
				<label for="studentid">Student ID:</label> <input type="text"
					id="studentid" name="studentid" value="${student.studentid}"
					required readonly>
			</div>
			<div class="form-group">
				<label for="studentName">Name :</label> <input type="text"
					id="studentName" name="studentname" value="${student.studentname}"
					required>
			</div>
			<div class="form-group">
				<label for="studentMail">mailId :</label> <input type="text"
					id="studentMail" name="studentmailid"
					value="${student.studentmailid}" required>
			</div>
			<div class="form-group">
				<label for="studentPassword">Password:</label> <input
					type="password" id="studentPassword" name="studentpassword"
					value="${student.studentpassword}" required>
			</div>
			<div class="form-group">
				<label for="studentmobile">Mobile No:</label> <input type="text"
					id="studentmobile" name="studentmobile"
					value="${student.studentmobile}" required>
			</div>
			<div>
				<button type="submit" class="button">Update</button>
			</div>
		</form>
		<button onclick="closePopup()">close</button>
	</div>

	<script type="text/javascript">
        function showPopup(studentId, studentName, studentPassword, studentMailId, studentMobile) {
            document.getElementById('popup').style.display = 'block';
            document.getElementById('oldStudentId').value = studentId;
            document.getElementById('studentid').value = studentId;
            document.getElementById('studentName').value = studentName;
            document.getElementById('studentPassword').value = studentPassword;
            document.getElementById('studentMail').value = studentMailId;
            document.getElementById('studentmobile').value = studentMobile;
        }

        function closePopup() {
            document.getElementById('popup').style.display = 'none';
        }

        function onDeleteButton(studentname) {
            return confirm("Are you sure to delete " + studentname + " ?");
        }
    </script>
</body>
</html>