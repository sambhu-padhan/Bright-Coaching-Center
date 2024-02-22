package com.sambhu.rdx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sambhu.rdx.model.Student;
import com.sambhu.rdx.service.StudentService;

@Controller
public class StudentListController {

	@Autowired
	StudentService studentservice;

	@GetMapping(value = "/studentDelete")
	public String deleteStudentById(@ModelAttribute Student student, ModelMap model) {
		studentservice.deleteStudentById(student.getStudentid());
		List<Student> students = studentservice.getAllStudents();
		model.addAttribute("students", students);
		return "studentList";
	}

	@PostMapping(value = "/updateStudent")
	public String updateStudent(@RequestParam String oldStudentId, @ModelAttribute Student student, ModelMap model) {
		try {
			Student newstudent = studentservice.getStudentByStudentId(student.getStudentid());
			if (newstudent != null) {
				studentservice.updateStudent(student);
				List<Student> students = studentservice.getAllStudents();
				model.addAttribute("students", students);
				model.addAttribute("msg", "Data of " + student.getStudentname() + " successfully updated..!");
			} else {

				studentservice.deleteStudentById(oldStudentId);
				studentservice.updateStudent(student);
				List<Student> students = studentservice.getAllStudents();
				model.addAttribute("students", students);
				model.addAttribute("msg", "Data of " + student.getStudentname() + " successfully updated..!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "studentList";
	}
}
