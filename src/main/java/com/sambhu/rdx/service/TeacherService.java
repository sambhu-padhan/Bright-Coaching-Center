package com.sambhu.rdx.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sambhu.rdx.model.Teachers;
import com.sambhu.rdx.repository.TeacherRepo;

@Service
public class TeacherService {

	@Autowired
	private TeacherRepo teacherRepo;
	
	public Teachers getTeacherByTeacherId(String teacherid) {
		
		Optional<Teachers> teacher = teacherRepo.findById(teacherid);
		return teacher.orElse(null);
	}

	public Teachers addNewTeacher(Teachers teacher) {
		teacherRepo.save(teacher);
		return teacher;		
	}
	

}
