package com.edu.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.edu.model.User;
import com.edu.service.UserService;

@SuppressWarnings("serial")
@Controller
@Scope("prototype")
public class UserAction extends BaseAction {
	@Autowired
	private UserService userService;
	private User user;
	private List<User> userList;
	
	private int id;
	private int admin;
	private String ajaxResult;

	public String execute() throws Exception {
		return null;
	}

	public String login() {
		return SUCCESS;
	}

	public String searchAllUser(){
		userList = userService.findAllUser();
		return SUCCESS;
	}
	/*
	 * 修改用户信息
	 */
	public String updateUser() {
		try {
			userService.updateUser(user);
			this.setAjaxResult("success");
		} catch (Exception e) {
			e.printStackTrace();
			this.setAjaxResult("error");
		}
		return SUCCESS;
	}
/*
 * 添加用户
 */
	public String addUser() {
		return SUCCESS;
	}
/*
 * 删除用户
 */
	public String deleteUser() {
		
		try {
			userService.deleteUser(id);
			this.setAjaxResult("success");
		} catch (Exception e) {
			e.printStackTrace();
			this.setAjaxResult("error");
		}
		return SUCCESS;
	}

	public String update() {
	//	userService.updateUser(user);
		return SUCCESS;
	}
	
	public String editAdmin(){
		user.setId(id);
		user.setAdmin(admin);
		try {
			userService.editAdmin(user);
			setAjaxResult("success");
		} catch (Exception e) {
			e.printStackTrace();
			this.setAjaxResult("error");
		}
		return SUCCESS;
	}
	/*
	 * 加载修改界面，用户信息回显
	 */
	public String loadEditUser(){
		try {
			//int id=1300308;
			user=userService.findUserById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return SUCCESS;
	}
	/*
	 * 修改用户信息
	 */
	public String editUser(){
	//	user.setId(id);
		return SUCCESS;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String queryAllUser() {
		userList = userService.findAllUser();
		return "userList";
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAdmin() {
		return admin;
	}

	public void setAdmin(int admin) {
		this.admin = admin;
	}

	public String getAjaxResult() {
		return ajaxResult;
	}

	public void setAjaxResult(String ajaxResult) {
		this.ajaxResult = ajaxResult;
	}
	
}
