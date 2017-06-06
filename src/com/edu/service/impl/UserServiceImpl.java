package com.edu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.edu.dao.UserDao;
import com.edu.model.User;
import com.edu.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	
	public void addUser(User user) {
		userDao.insertUser(user);
	}

	public void updateUser(User user) throws Exception{
		userDao.updateUser(user);
	}
	
	public void deleteUser(Integer userId)  throws Exception {
		userDao.deleteUser(userId);
	}

	public User findUserById(Integer userId) {
		User user=new User();
		user=userDao.findUserByid(userId);
		if(user== null){
			User u=new User();
			u.setId(userId);
			user=userDao.selectAppUser(u).get(0);
		}
		return user;
	}

	public User login(User user) throws Exception{
		return userDao.userLogin(user);
	}

	@Override
	public void editAdmin(User user) throws Exception {
		userDao.editAdmin(user);
		
	}

	@Override
	public void editPwd(User user) throws Exception {
		userDao.editPwd(user);
	}

	@Override
	public List<User> findAllUser(User user) throws Exception {
		return userDao.selectUser(user);
	}

	@Override
	public void approvalUser(User user) throws Exception {
		userDao.updateUserStatus(user);
		
	}

	@Override
	public List<User> findAppUser(User user) throws Exception {
		
		return userDao.selectAppUser(user);
	}
}
