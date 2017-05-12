package com.edu.model;

import java.util.Date;

public class Cart {

	private int id;
	private int personId;
	private String person;
	private int price;
	private int status;
	private String personMail;
	private String personPhone;
	private int totalNum;
	private Date date;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPersonId() {
		return personId;
	}

	public void setPersonId(int personId) {
		this.personId = personId;
	}

	public String getPerson() {
		return person;
	}

	public void setPerson(String person) {
		this.person = person;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getPersonMail() {
		return personMail;
	}

	public void setPersonMail(String personMail) {
		this.personMail = personMail;
	}

	public String getPersonPhone() {
		return personPhone;
	}

	public void setPersonPhone(String personPhone) {
		this.personPhone = personPhone;
	}

	public int getTotalNum() {
		return totalNum;
	}

	public void setTotalNum(int totalNum) {
		this.totalNum = totalNum;
	}
}
