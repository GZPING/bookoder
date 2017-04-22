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
		return userDao.findUserByid(userId);
	}

	public List<User> findAllUser() {
		return userDao.findAll();
	}

	public User login(User user) {
		return userDao.userLogin(user);
	}

	@Override
	public void editAdmin(User user) throws Exception {
		userDao.editAdmin(user);
		
	}
}
