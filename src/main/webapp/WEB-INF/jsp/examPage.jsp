<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Exam Page</title>
<!-- Add any additional CSS or JS here -->
</head>
<body>
	<h2>Exam Questions</h2>
	<h3>
		<c:if test="${not empty score}">
			<h1 style="color: orange">Your score is: ${score} out of ${totalquestions} </h1>
		</c:if>
	</h3>
	<c:if test="${empty examSubmitted}">
	<form action="examSubmit" method="post">
		<c:forEach var="question" items="${questions}" varStatus="status">
			<!-- Added varStatus -->
			<div>
				<p>Question ${status.index + 1}: ${question.questionname}</p>
				<!-- Display question number -->
				<input type="radio" id="option1_${question.questionid}"
					name="answer_${question.questionid}"
					value="${question.questionansoption1}"> <label
					for="option1_${question.questionid}">${question.questionansoption1}</label><br>

				<input type="radio" id="option2_${question.questionid}"
					name="answer_${question.questionid}"
					value="${question.questionansoption2}"> <label
					for="option2_${question.questionid}">${question.questionansoption2}</label><br>

				<input type="radio" id="option3_${question.questionid}"
					name="answer_${question.questionid}"
					value="${question.questionansoption3}"> <label
					for="option3_${question.questionid}">${question.questionansoption3}</label><br>

				<input type="radio" id="option4_${question.questionid}"
					name="answer_${question.questionid}"
					value="${question.questionansoption4}"> <label
					for="option4_${question.questionid}">${question.questionansoption4}</label>
			</div>
			<hr>
		</c:forEach>
		<input type="submit" value="Submit Exam" id="submitButton"> <input
			type="reset" value="Reset Answers" id="resetButton">
	</form>
	</c:if>
	<form action="studentHome" method="get">
		<button>Back To Student HomePage</button>
	</form>
		<c:if test="${not empty examSubmitted}">
			<h2>Answer Sheet</h2>
			<c:forEach var="question" items="${ans}" varStatus="status">
				<div>
					<p>Question ${status.index + 1}: ${question.questionname}</p>
					<p>Correct Answer: ${question.questionans}</p>
				</div>
				<hr>
			</c:forEach>
		</c:if>

</body>
</html>
