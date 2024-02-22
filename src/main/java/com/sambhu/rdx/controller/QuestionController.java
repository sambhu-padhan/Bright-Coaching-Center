package com.sambhu.rdx.controller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.sambhu.rdx.model.Questions;
import com.sambhu.rdx.model.ListWrapper;
import com.sambhu.rdx.service.QuestionService;
import com.sambhu.rdx.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class QuestionController {

	@Autowired
	QuestionService questionService;

	@Autowired
	StudentService studentService;
	
	@PostMapping(value = "/examSubmit")
	public String examSubmit(HttpServletRequest request, Model model) {
        List<Questions> questions = questionService.getAllQuestions();
        int totalquestions = questions.size();
        int score = 0;
        
        for (Questions question : questions) {
            String selectedAnswer = request.getParameter("answer_" + question.getQuestionid());
            if (selectedAnswer != null && selectedAnswer.equals(question.getQuestionans())) {
                score++;
            }
        }
        model.addAttribute("totalquestions",totalquestions);
        model.addAttribute("score", score);
        model.addAttribute("ans",questions);
        model.addAttribute("examSubmitted",true);
		return "examPage";
	}
	
	@GetMapping(value = "/studentHome")
	public String studentHomePage() {
			return "studentHome";
	}
	@GetMapping(value = "/teachertHome")
	public String teachertHome(){
		return "teacherHome";
	}
	
	@PostMapping(value = "/setAllQuestions")
	public String setAllQuestions(@ModelAttribute ListWrapper wrapper,ModelMap model) {
		
		List<Questions>  quest;
		List<Questions> questions = wrapper.getQuestions(); 
		try {
			questionService.deleteAllQuestions();
			quest = questionService.setAllQuestions(questions);
			if(quest==null) {
				model.addAttribute("msg","please try again or database error");
				return "setExam";
			}
			
		} catch (Exception e) {
			System.out.println(e);
			
		}
		model.addAttribute("msg","Exam set successfully !");
		model.addAttribute("examCreated",true);
		return "setExam";
	}
	
	@PostMapping(value = "/addNewQuestion") 
	public String addNewQuestion(@ModelAttribute Questions question,ModelMap model) {
		questionService.addNewQuestion(question);
		List<Questions> questions = questionService.getAllQuestions();
		model.addAttribute("questions",questions);
		return "setExam";	
	}
	
	@GetMapping(value = "/deleteQuestionById")
	public String deleteQuestionById(@ModelAttribute Questions question, ModelMap model) {
		questionService.deleteQuestionById(question.getQuestionid());
		List<Questions> questions = questionService.getAllQuestions();
		if(questions.size() == 0)
			model.addAttribute("noquestion",false);
		model.addAttribute("questions",questions);
		return "setExam";
	}
	@GetMapping(value = "/deleteAllQuestions")
	public String deleteAllQuestions(ModelMap model) {
		questionService.deleteAllQuestions();				
		List<Questions> questions = questionService.getAllQuestions();
		model.addAttribute("questions",questions);
		model.addAttribute("noquestion",true);
		return "setExam";
	}
}
