package com.sambhu.rdx.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="student")
public class Student {

	@Id
	private String studentid;
	
	private String studentname;
	private String studentpassword;
	private String studentmailid;
	private String studentmobile;
	

	public String getStudentid() {
		return studentid;
	}
	public void setStudentid(String studentid) {
		this.studentid = studentid;
	}
	public String getStudentname() {
		return studentname;
	}
	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}
	public String getStudentpassword() {
		return studentpassword;
	}
	public void setStudentpassword(String studentpassword) {
		this.studentpassword = studentpassword;
	}
	public String getStudentmailid() {
		return studentmailid;
	}
	public void setStudentmailid(String studentmailid) {
		this.studentmailid = studentmailid;
	}
	
	public String getStudentmobile() {
		return studentmobile;
	}
	public void setStudentmobile(String studentmobile) {
		this.studentmobile = studentmobile;
	}
	@Override
	public String toString() {
		return "Student [studentid=" + studentid + ", studentname=" + studentname + ", studentpassword="
				+ studentpassword + ", studentmailid=" + studentmailid + ", studentmobile=" + studentmobile + "]";
	}

	private String oldstudentid;


	public String getOldstudentid() {
		return oldstudentid;
	}
	public void setOldstudentid(String oldstudentid) {
		this.oldstudentid = oldstudentid;
	}
	
	
	
}
