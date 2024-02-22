package com.sambhu.rdx.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.sambhu.rdx.model.Student;
import com.sambhu.rdx.service.StudentService;

@Controller
public class StudentRegistrationController {

	@Autowired
	StudentService studentService;

	@GetMapping("/backtoHome")
	public String getHomePage(Model model) {
		return "logInPage";
	}

	@PostMapping(value = "/addStudent")
	public String addStudent(@ModelAttribute Student student, ModelMap model) {

		try {
			Student st = studentService.getStudentByStudentId(student.getStudentid());
			if (st != null && st.getStudentid().equals(student.getStudentid())) {
				model.put("Msg", "Student already exist,try with new id & studentname");
				return "studentRegister";
			}
		} catch (Exception e) {
		}
		Student count = studentService.addNewStudent(student);
		if (count != null) {
			model.put("Msg", "Student registered successfully");

			return "studentRegister";
		}

		return "studentRegister";
	}

}
