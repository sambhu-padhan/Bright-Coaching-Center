package com.sambhu.rdx.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.sambhu.rdx.model.Student;
import com.sambhu.rdx.model.Teachers;
import com.sambhu.rdx.service.StudentService;
import com.sambhu.rdx.service.TeacherService;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {

	@Autowired
	StudentService studentService;
	@Autowired
	TeacherService teacherSevice;

	@GetMapping(value = "/")
    public String bccHome() {
        return "logInPage";
    }
	@PostMapping(value = "/studentHome")
	public String getStudentHomePage(HttpSession session, ModelMap model, @RequestParam String studentid,
			@RequestParam String studentpassword) {
		try {
			Student student = studentService.getStudentByStudentId(studentid);
			if (student.getStudentid().equals(studentid) && student.getStudentpassword().equals(studentpassword)) {
				model.addAttribute("student", student);
				session.setAttribute("loggedInStudentName", student.getStudentname());
				return "studentHome";
			}
		} catch (Exception e) {
		}
		model.addAttribute("errorMsg", "Please enter correct id and password !");
		return "logInPage";
	}

	@GetMapping(value = "/studentRegister")
	public String getStudentRegisterPage() {
		return "studentRegister";
	}

	@PostMapping(value = "/teacherHome")
	public String getTeacherHomePage(HttpSession session,@ModelAttribute Teachers teacher, Model model) {
		try {
			Teachers teacherlogin = teacherSevice.getTeacherByTeacherId(teacher.getTeacherid());
			if (teacher.getTeacherpassword().equals(teacherlogin.getTeacherpassword())) {
				session.setAttribute("loggedInTeacher",teacherlogin.getTeachername());
				return "teacherHome";
			}
		} catch (Exception e) {
		}
		model.addAttribute("msg","Plaese enter correct id and password !");
		return "logInPage";

	}

	@GetMapping(value = "/teacherRegister")
	public String getTeacherRegisterPage() {
		return "teacherRegister";
	}

}
