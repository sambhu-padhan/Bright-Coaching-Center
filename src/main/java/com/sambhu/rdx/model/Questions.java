package com.sambhu.rdx.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity
public class Questions {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer questionid;
	private String questionname;
	private String questionans;
	private String questionansoption1;
	private String questionansoption2;
	private String questionansoption3;
	private String questionansoption4;
	
	
	public Integer getQuestionid() {
		return questionid;
	}
	public void setQuestionid(Integer questionid) {
		this.questionid = questionid;
	}
	public String getQuestionname() {
		return questionname;
	}
	public void setQuestionname(String questionname) {
		this.questionname = questionname;
	}
	public String getQuestionans() {
		return questionans;
	}
	public void setQuestionans(String questionans) {
		this.questionans = questionans;
	}
	public String getQuestionansoption1() {
		return questionansoption1;
	}
	public void setQuestionansoption1(String questionansoption1) {
		this.questionansoption1 = questionansoption1;
	}
	public String getQuestionansoption2() {
		return questionansoption2;
	}
	public void setQuestionansoption2(String questionansoption2) {
		this.questionansoption2 = questionansoption2;
	}
	public String getQuestionansoption3() {
		return questionansoption3;
	}
	public void setQuestionansoption3(String questionansoption3) {
		this.questionansoption3 = questionansoption3;
	}
	public String getQuestionansoption4() {
		return questionansoption4;
	}
	public void setQuestionansoption4(String questionansoption4) {
		this.questionansoption4 = questionansoption4;
	}
	@Override
	public String toString() {
		return "Questions [questionid=" + questionid + ", questionname=" + questionname + ", questionans=" + questionans
				+ ", questionansoption1=" + questionansoption1 + ", questionansoption2=" + questionansoption2
				+ ", questionansoption3=" + questionansoption3 + ", questionansoption4=" + questionansoption4 + "]";
	}

	
	
}
