package com.edu.model;

import java.util.Date;

@SuppressWarnings("serial")
public class Order extends BaseModel{
	
	private int id;
	private int bookId;
	private int price;
	private int totalPrice;
	private int courseId;
	private String bookName;
	private  int bookPrice;
	private String courseName;
	private int number;
	private int cartId;
	private int personId;
	private String person;
	private int upersonId;
	private String uperson;
	private String academy;
	private int status;
	private String pub;
	private String description;
	private Date date;
	private Date udate;
	private int admin;
	private int storeNumber;
	private String storePlace;
	
	public int getUpersonId() {
		return upersonId;
	}
	public void setUpersonId(int upersonId) {
		this.upersonId = upersonId;
	}
	public String getUperson() {
		return uperson;
	}
	public void setUperson(String uperson) {
		this.uperson = uperson;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getPersonId() {
		return personId;
	}
	public void setPersonId(int personId) {
		this.personId = personId;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getPub() {
		return pub;
	}
	public void setPub(String pub) {
		this.pub = pub;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Date getUdate() {
		return udate;
	}
	public void setUdate(Date udate) {
		this.udate = udate;
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
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(int bookPrice) {
		this.bookPrice = bookPrice;
	}
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	public String getAcademy() {
		return academy;
	}
	public void setAcademy(String academy) {
		this.academy = academy;
	}
	public int getStoreNumber() {
		return storeNumber;
	}
	public void setStoreNumber(int storeNumber) {
		this.storeNumber = storeNumber;
	}
	public String getStorePlace() {
		return storePlace;
	}
	public void setStorePlace(String storePlace) {
		this.storePlace = storePlace;
	}
	
}
