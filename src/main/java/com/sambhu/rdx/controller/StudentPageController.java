package com.sambhu.rdx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import com.sambhu.rdx.model.Questions;
import com.sambhu.rdx.service.QuestionService;

@Controller
public class StudentPageController {

	@Autowired
	QuestionService questionService;

	@GetMapping(value = "/studentLoginPage")
	public String studentLogInPage() {
		return "logInPage";
	}

	@GetMapping(value = "/gotoExam")
	public String gotoExam(ModelMap model) {
		List<Questions> questions = questionService.getAllQuestions();
		model.addAttribute("questions", questions);
		return "examPage";
	}

}
