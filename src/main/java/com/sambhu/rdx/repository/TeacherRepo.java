package com.sambhu.rdx.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sambhu.rdx.model.Teachers;

@Repository
public interface TeacherRepo extends JpaRepository<Teachers, String> {

}
