package com.edu.model;

import java.sql.Time;

@SuppressWarnings("serial")
public class User extends BaseModel {
	private int id;
	private String name;
	private String password;
	private int admin;
	private int status;
	private int upersonId;
	private String sex;
	private String adminName;
	private String academyName;
	private String academyId;
	private String phone;
	private String mail;
	private Time udate;
	private String uperson;
	private String description;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAcademyName() {
		return academyName;
	}
	public void setAcademyName(String academyName) {
		this.academyName = academyName;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Time getUdate() {
		return udate;
	}
	public void setUdate(Time udate) {
		this.udate = udate;
	}
	public String getUperson() {
		return uperson;
	}
	public void setUperson(String uperson) {
		this.uperson = uperson;
	}
	public String getAcademyId() {
		return academyId;
	}
	public void setAcademyId(String academyId) {
		this.academyId = academyId;
	}
	public int getUpersonId() {
		return upersonId;
	}
	public void setUpersonId(int upersonId) {
		this.upersonId = upersonId;
	}
	
}
