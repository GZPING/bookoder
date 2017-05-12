package com.edu.util;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.edu.model.User;

public class UtilUser {
	/*
	 * 判断用户是否登录
	 */
	public static boolean isLogin(){
		User user=getUser();
		if(user==null){
			return false;
		}
		return true;
	}
	public static User getUser(){
		HttpSession session = ServletActionContext.getRequest().getSession();  
		return (User) session.getAttribute(Context.USER_INFO); 
	}
}
