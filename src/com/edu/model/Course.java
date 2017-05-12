package com.edu.model;

import java.util.Date;

@SuppressWarnings("serial")
public class Course extends BaseModel {
	
	private Integer id; //课号
	private String name;    //课程名称
	private Integer majorId;  //专业的id
	private String  majorName;
	private Integer academyId;  //学院的id
	private String classId; 
	private String academy; 
	private String teacherName;
	private String bookName;
	private String bookId;
	private int bookPrice;
	private Integer teacherId;//教师的id
	private Date udate;
	private String uperson;
	private int personId;
	private int status;
	private String description; //描述
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getMajorId() {
		return majorId;
	}
	public void setMajorId(Integer majorId) {
		this.majorId = majorId;
	}
	public Integer getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(Integer teacherId) {
		this.teacherId = teacherId;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getClassId() {
		return classId;
	}
	public void setClassId(String classId) {
		this.classId = classId;
	}
	public String getAcademy() {
		return academy;
	}
	public void setAcademy(String academy) {
		this.academy = academy;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public String getUperson() {
		return uperson;
	}
	public void setUperson(String uperson) {
		this.uperson = uperson;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Integer getAcademyId() {
		return academyId;
	}
	public void setAcademyId(Integer academyId) {
		this.academyId = academyId;
	}
	public int getPersonId() {
		return personId;
	}
	public void setPersonId(int personId) {
		this.personId = personId;
	}
	
	public Date getUdate() {
		return udate;
	}
	public void setUdate(Date udate) {
		this.udate = udate;
	}
	public String getBookId() {
		return bookId;
	}
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	public String getMajorName() {
		return majorName;
	}
	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}
	public int getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(int bookPrice) {
		this.bookPrice = bookPrice;
	}
}
