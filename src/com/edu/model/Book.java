package com.edu.model;

public class Book {
	private int id;
	private String name;
	private String auth;
	private String pub;
	private int price;
	private String image;
	private String description;
	private int pageNum;
	
	public Book(int id, String name, String auth, String pub, int price, String description) {
		super();
		this.id = id;
		this.name = name;
		this.auth = auth;
		this.pub = pub;
		this.price = price;
		this.description = description;
	}
	
	public Book(){
		
	}
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
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	public String getPub() {
		return pub;
	}
	public void setPub(String pub) {
		this.pub = pub;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	
}
