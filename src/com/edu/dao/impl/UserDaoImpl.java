package com.edu.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.dao.UserDao;
import com.edu.model.User;
import com.edu.util.Context;

@Repository
public class UserDaoImpl implements UserDao {

	private final String DELETE_USER = "deleteUser";

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	
	public void insertUser(User user) {
		sqlSessionTemplate.insert(Context.INSERT_USER, user);
	}

	public void updateUser(User user) throws Exception {
		sqlSessionTemplate.update(Context.UPDATE_USER, user);
	}

	@Override
	public void deleteUser(Integer userId) throws Exception{
		sqlSessionTemplate.delete(DELETE_USER, userId);
	}
	@Override
	public User findUserByid(Integer userId) {
		return sqlSessionTemplate.selectOne(Context.FIND_USER_BYID, userId);
	}

	public List<User> findAll() {
		return sqlSessionTemplate.selectList(Context.SELECT_ALL_USER );
	}

	public User userLogin(User user) {
		return sqlSessionTemplate.selectOne(Context.USER_LOGIN, user);
	}

	@Override
	public void editAdmin(User user) throws Exception {
		sqlSessionTemplate.update(Context.EDIT_ADMIN, user);
		
	}

	@Override
	public void editPwd(User user) throws Exception {
		sqlSessionTemplate.update(Context.EDIT_PWD, user);
		
	}

	@Override
	public List<User> selectUser(User user) throws Exception {
		return sqlSessionTemplate.selectList(Context.SELECT_ALL_USER ,user);
	}

	@Override
	public void updateUserStatus(User user) {
		sqlSessionTemplate.update("updateUserStatus", user);
	}

	@Override
	public List<User> selectAppUser(User user) {
		
		return sqlSessionTemplate.selectList("selectAppUser", user);
	}

}
