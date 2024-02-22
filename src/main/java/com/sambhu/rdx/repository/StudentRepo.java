package com.sambhu.rdx.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sambhu.rdx.model.Student;

@Repository
public interface StudentRepo extends JpaRepository<Student, String> {

	Student findByStudentname(String studentname);

}
