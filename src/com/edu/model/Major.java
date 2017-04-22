package com.edu.model;
/*
 * 专业model
 */
@SuppressWarnings("serial")
public class Major extends BaseModel {
	private int id;
	private String name;
	private String academy;
	
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
	public String getAcademy() {
		return academy;
	}
	public void setAcademy(String academy) {
		this.academy = academy;
	}
	
}
