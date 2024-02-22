package com.sambhu.rdx.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.sambhu.rdx.model.Teachers;
import com.sambhu.rdx.service.TeacherService;

@Controller
public class TeacherRegistrationController {

	@Autowired
	private TeacherService teacherService;

	@PostMapping("/teacherRegister")
	public String addNewTeacher(@ModelAttribute Teachers teacher, ModelMap model) {

		Teachers checkteacher = teacherService.getTeacherByTeacherId(teacher.getTeacherid());
		if (checkteacher != null && checkteacher.getTeacherid().equals(teacher.getTeacherid())) {
			model.addAttribute("msg", "teacher already exist, try with new id");
			return "teacherRegister";
		} else {
			Teachers count = teacherService.addNewTeacher(teacher);
			if (count != null) {
				model.addAttribute("msg", "new teacher added successfully");
				return "teacherRegister";
			}
		}
		return "teacherRegister";
	}
	
}
