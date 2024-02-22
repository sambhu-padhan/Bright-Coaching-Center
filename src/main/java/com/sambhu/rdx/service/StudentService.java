package com.sambhu.rdx.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sambhu.rdx.model.Student;
import com.sambhu.rdx.repository.StudentRepo;

import jakarta.servlet.http.HttpSession;

@Service
public class StudentService {

	@Autowired
	private StudentRepo studentRepo;

	public Student getStudentByStudentId(String studentid) {
		Optional<Student> student = studentRepo.findById(studentid);
		return student.orElse(null);
	}

	public Student addNewStudent(Student student) {
		studentRepo.save(student);
		return student;
	}

	public Student getLoggedInStudent(HttpSession session) {
		String studentName = (String) session.getAttribute("loggedInStudentName");
		return studentRepo.findByStudentname(studentName);
	}

	public List<Student> getAllStudents() {
		List<Student> student = studentRepo.findAll();
		return student;
	}

	public Student deleteStudentById(String studentid) {
		studentRepo.deleteById(studentid);
		return null;
	}

	public Student updateStudent(Student student) {
		studentRepo.save(student);
		return student;
		// TODO Auto-generated method stub
		
	}
}