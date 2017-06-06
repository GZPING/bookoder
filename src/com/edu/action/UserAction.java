package com.edu.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.edu.model.User;
import com.edu.service.UserService;
import com.edu.util.Context;
import com.edu.util.UtilUser;

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
	private String oldPwd;
	
	private ArrayList<Integer> ids;

	/*
	 * 登录系统
	 */
	public String login() {
		try {
			user.setPassword(UtilUser.getMD5(user.getPassword()));
			user=userService.login(user);
			if(user==null){
				this.setAjaxResult("error");
				return SUCCESS;
			}
			if(user.getStatus()==0){
				this.setAjaxResult("unverified");
			}else{
				HttpSession session = ServletActionContext.getRequest().getSession(); 
				session.setAttribute(Context.USER_INFO, user);
				if(user.getAdmin()==101){
					this.setAjaxResult("school");
				}else if(user.getAdmin()==102){
					this.setAjaxResult("academy");
				}else if(user.getAdmin()==103){
					this.setAjaxResult("teacher");
				}else if(user.getAdmin()==100){
					this.setAjaxResult("business");
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			this.setAjaxResult("error");
		}
		return SUCCESS;
	}
	
	public String index(){
		if(!UtilUser.isLogin()){
			return LOGIN;
		}
		return SUCCESS;
	}
	
	public String userApproval(){
		if(!UtilUser.isLogin()){
			return LOGIN;
		}
		user=new User();
		user.setStatus(1);
		if(UtilUser.getUser().getAdmin()==100){
			user.setAdmin(100);
		}
		try {
			if(UtilUser.getUser().getAdmin()==100){
				userList = userService.findAppUser(user);
			}else{
				userList = userService.findAllUser(user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String approvalUser(){
		user=new User();
		for(int i=0;i<ids.size();i++){
			user.setId(ids.get(i));
			try {
				userService.approvalUser(user);
				this.setAjaxResult(SUCCESS);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return SUCCESS;
	}
	
	public String  logout(){
		HttpSession session = ServletActionContext.getRequest().getSession();  
		session.invalidate(); 
		this.setAjaxResult("success");
		return SUCCESS;
	}

	public String searchAllUser(){
		if(!UtilUser.isLogin()){
			return "login";
		}
		user=new User();
		if(id==103){
			user.setAdmin(103);
		}
		if(UtilUser.getUser().getAdmin()==100){
			user.setAdmin(100);
		}
		try {
			if(UtilUser.getUser().getAdmin()==100){
				userList = userService.findAppUser(user);
			}else{
				userList = userService.findAllUser(user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	public String searchUser(){
		user=new User();
		if(id==103){
			user.setAdmin(103);
		}
		
		try {
			userList = userService.findAllUser(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	/*
	 * 修改用户信息
	 */
	public String updateUser() {
		if(!UtilUser.isLogin()){
			return "login";
		}
		try {
			userService.updateUser(user);
			if(id==1){
				User u=UtilUser.getUser();
				u.setName(user.getName());
				u.setSex(user.getSex());
				u.setPhone(user.getPhone());
				u.setMail(user.getMail());
				u.setDescription(user.getDescription());
				HttpSession session = ServletActionContext.getRequest().getSession(); 
				session.setAttribute(Context.USER_INFO, u);
			}
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
		//id==1 表示添加用户
		if(id==1){
			try {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
				user.setStatus(0);
				user.setUpersonId(1300301);
				user.setUpersonId(user.getId());
				if(user.getPassword().equals("")||user.getPassword()==null){
					user.setPassword(user.getId()+"");
				}
				user.setPassword(UtilUser.getMD5(user.getPassword()));
				userService.addUser(user);
				this.setAjaxResult("success");
			} catch (Exception e) {
				e.printStackTrace();
				this.setAjaxResult("error");
			}
		}
		return SUCCESS;
	}
/*
 * 删除用户
 */
	public String deleteUser() {
		if(!UtilUser.isLogin()){
			return "login";
		}
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
		try {
			userService.updateUser(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String editAdmin(){
		if(!UtilUser.isLogin()){
			return "login";
		}
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
		if(!UtilUser.isLogin()){
			return "login";
		}
		try {
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
	/*
	 * 用户信息显示
	 */
	public String userInfo(){
		if(!UtilUser.isLogin()){
			return "login";
		}
		HttpSession session = ServletActionContext.getRequest().getSession(); 
		user=(User) session.getAttribute(Context.USER_INFO);
		return SUCCESS;
	}
	
	public String userEidtPwd(){
		if(!UtilUser.isLogin()){
			return "login";
		}
		return SUCCESS;
	}
	/*
	 * 修改密码
	 */
	public String editPwd(){
		if(!UtilUser.isLogin()){
			return "login";
		}
		//验证用户密码
			oldPwd=UtilUser.getMD5(oldPwd);
			String password=user.getPassword();
			try {
				user=userService.findUserById(user.getId());
				if(user.getPassword()!=null&&oldPwd!=null&&oldPwd.equals(user.getPassword())){
					user.setPassword(UtilUser.getMD5(password));
					userService.editPwd(user);
					this.setAjaxResult("success");
				}else{
					this.setAjaxResult("errorPwd");
				}
			} catch (Exception e) {
				e.printStackTrace();
				this.setAjaxResult("error");
			}
		return SUCCESS;
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
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

	public String getOldPwd() {
		return oldPwd;
	}

	public void setOldPwd(String oldPwd) {
		this.oldPwd = oldPwd;
	}

	public ArrayList<Integer> getIds() {
		return ids;
	}

	public void setIds(ArrayList<Integer> ids) {
		this.ids = ids;
	}
	
}
