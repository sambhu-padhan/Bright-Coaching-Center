package com.sambhu.rdx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sambhu.rdx.model.Questions;
import com.sambhu.rdx.model.Student;
import com.sambhu.rdx.service.QuestionService;
import com.sambhu.rdx.service.StudentService;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class TeacherPageController {
	
	@Autowired
	QuestionService questionService;
	
	@Autowired
	StudentService studentService;
	
	@GetMapping(value = "/teacherlogInPage")
    public String teacherLogout(HttpSession session, HttpServletResponse response) {
		session.invalidate();
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Expires", "0");
        return "/logInPage";
    }
	@RequestMapping(value = "/logInPage", method = RequestMethod.GET)
	public String getbccHomePage() {
		return "logInPage";
	}
	
	@GetMapping(value = "/setExam")
	public String setExamPage(ModelMap model) {
		List<Questions> questions = questionService.getAllQuestions();
		if(questions.size() == 0)
			model.addAttribute("noquestion",false);
		model.addAttribute("questions", questions);
		return "setExam";
	}
	@GetMapping(value = "/studentList")
	public String getStudentList(ModelMap model) {
		List<Student> student = studentService.getAllStudents();
		model.addAttribute("students", student);
		return "studentList";
	}

}
