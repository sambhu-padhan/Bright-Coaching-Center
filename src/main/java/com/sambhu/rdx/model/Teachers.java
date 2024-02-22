package com.sambhu.rdx.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="teachers")
public class Teachers {

	@Id
	private String teacherid;
	
	private String teachername;
	private String teachermail;
	private String teacherpassword;
	private String teachermobile;
	
	public String getTeacherid() {
		return teacherid;
	}
	public void setTeacherid(String teacherid) {
		this.teacherid = teacherid;
	}
	public String getTeachername() {
		return teachername;
	}
	public void setTeachername(String teachername) {
		this.teachername = teachername;
	}
	public String getTeachermail() {
		return teachermail;
	}
	public void setTeachermail(String teachermail) {
		this.teachermail = teachermail;
	}
	public String getTeacherpassword() {
		return teacherpassword;
	}
	public void setTeacherpassword(String teacherpassword) {
		this.teacherpassword = teacherpassword;
	}
	public String getTeachermobile() {
		return teachermobile;
	}
	public void setTeachermobile(String teachermobile) {
		this.teachermobile = teachermobile;
	}
	@Override
	public String toString() {
		return "Teachers [teacherid=" + teacherid + ", teachername=" + teachername + ", teachermail=" + teachermail
				+ ", teacherpassword=" + teacherpassword + ", teachermobile=" + teachermobile + "]";
	}
	
}
