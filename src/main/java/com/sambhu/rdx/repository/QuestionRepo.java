package com.sambhu.rdx.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sambhu.rdx.model.Questions;

@Repository
public interface QuestionRepo extends JpaRepository<Questions, Integer> {

	
}
