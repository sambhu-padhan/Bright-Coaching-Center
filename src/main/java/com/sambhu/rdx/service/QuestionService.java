package com.sambhu.rdx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sambhu.rdx.model.Questions;
import com.sambhu.rdx.repository.QuestionRepo;

@Service
public class QuestionService {

	@Autowired
	QuestionRepo questionRepo;

	public List<Questions> getAllQuestions() {
		
		return questionRepo.findAll();
	}

	public  List<Questions> setAllQuestions(List<Questions> question) {
		return questionRepo.saveAll(question);		
	}
	
	public boolean deleteAllQuestions() {
		questionRepo.deleteAll();
		return true;
	}

	public Questions addNewQuestion(Questions question) {
		
		return questionRepo.save(question);
	}

	public void deleteQuestionById(Integer questionid) {
		
		questionRepo.deleteById(questionid);
		
	}

}
