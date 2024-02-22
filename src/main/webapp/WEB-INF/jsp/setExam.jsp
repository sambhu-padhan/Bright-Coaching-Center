<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>setexam</title>
</head>
<style>
#quesnumber {
	background-color: black;
	color: white;
}

#successMessage {
	color: #007700;
	font-weight: bold;
	border: 2px solid #007700;
	padding: 10px;
	border-radius: 5px;
	display: none; /* Initially hidden */
}

.questions {
	background-color: turquoise;
	display: flex;
	flex-direction: row;
}

#container1 {
	background-color: turquoise;
	width: 100%;
}

#container1 input {
	width: 100%;
}

#container1 .btn {
	width: 30%;
}

#container2 {
	display: grid;
	width: 100%;
	text-align: center;
	margin-left: 30px;
	height: fit-content;
}

#container2 form {
	background-color: rgb(41, 143, 133);
	margin-top: 50px;
	margin-left: 40px;
	display: flex;
	flex-direction: column;
	width: 80%;
	border-radius: 10px;
	align-items: center;
}

#container2 label {
	font-size: 1.2rem;
}

#container2 input {
	width: 90%;
	height: 25px;
}

#container2 .btn {
    width : 100%;
	margin-top: 5px;
	border-radius: 5px;
}
</style>
<body>
	<div class="questions">
		<div id="container1">
			<h2>Set Questions</h2>
			<h3>${msg}</h3>
			<form action="teachertHome" method="get">
				<button style="float:right;margin-bottom: 15px;">Back To Teacher HomePage</button>
			</form>
			<c:if test="${empty examCreated}">
			<c:if test="${empty noquestion}">
			<a href="/deleteAllQuestions">Delete All Questions</a>
				<form action="/setAllQuestions" method="post" id="myForm">
					<c:forEach var="question" items="${questions}" varStatus="status">
						<div>
							<label for="question_${status.index}" id="quesnumber">Question
								${status.index + 1}:</label> <a href="/deleteQuestionById?questionid=${question.questionid}">Delete</a> <input type="text"
								name="questions[${status.index}].questionname"
								value="${question.questionname}" required="required"><br>

							<label for="answer_${status.index}">Answer:</label> <input
								type="text" name="questions[${status.index}].questionans"
								value="${question.questionans}" required="required"><br>

							<label for="option1_${status.index}">Option 1:</label> <input
								type="text" name="questions[${status.index}].questionansoption1"
								value="${question.questionansoption1}" required="required"><br>

							<label for="option2_${status.index}">Option 2:</label> <input
								type="text" name="questions[${status.index}].questionansoption2"
								value="${question.questionansoption2}" required="required"><br>

							<label for="option3_${status.index}">Option 3:</label> <input
								type="text" name="questions[${status.index}].questionansoption3"
								value="${question.questionansoption3}" required="required"><br>

							<label for="option4_${status.index}">Option 4:</label> <input
								type="text" name="questions[${status.index}].questionansoption4"
								value="${question.questionansoption4}" required="required"><br>
						</div>
						<hr>
					</c:forEach>
					<input type="submit" id="submitButton" value="Submit" class="btn">
					<input type="reset" id="resetButton" value="Reset" class="btn">
				</form>
				</c:if>
				</c:if>

		</div>
		<c:if test="${empty examCreated}">
			<div id="container2">
				<form action="/addNewQuestion" method="post">
					<h3>Add New Question</h3>
					<label for="addquestionname">questionname : </label> 
					<input	type="text" name="questionname" id="quesname">
					 <label	for="addquestionans">questionanswer : </label>
					  <input type="text" name="questionans" id="questionans">
					   <label for="addquestionansoption1">Option-1	: </label>
					    <input type="text" name="questionansoption1" id="questionansoption1">
					     <label	for="addquestionansoption2">Option-2 : </label> 
						<input type="text"	name="questionansoption2" id="questionansoption2">
						 <label for="addquestionansoption3">Option-3 : </label> 
						 <input type="text" name="questionansoption3" id="questionansoption3"> 
						 <label	for="addquestionansoption4">Option-4 : </label> 
						 <input type="text"	name="questionansoption4" id="questionansoption4">
						 
						  <div>
							<button type="submit" id="submitButton" class="btn">Submit</button>
							<button type="reset" id="resetButton" class="btn">Reset</button>
						  </div>
				</form>
			</div>
		</c:if>
	</div>
</body>
</html>