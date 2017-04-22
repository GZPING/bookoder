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
	private final String INSERT_USER = "insertUser";
	private final String UPDATE_USER = "updateUser";
	private final String DELETE_USER = "deleteUser";
	private final String FIND_USER_BYID = "findUserById";
	private final String SELECT_ALL_USER = "selectAllUser";
	private final String USER_LOGIN = "userLogin";
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.pdsu.edu.dao.impl.UserDao#insertUser(com.pdsu.edu.domain.User)
	 */
	public void insertUser(User user) {
		sqlSessionTemplate.insert(INSERT_USER, user);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.pdsu.edu.dao.impl.UserDao#updateUser(com.pdsu.edu.domain.User)
	 */
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
		return sqlSessionTemplate.selectOne(USER_LOGIN, user);
	}

	@Override
	public void editAdmin(User user) throws Exception {
		sqlSessionTemplate.update(Context.EDIT_ADMIN, user);
		
	}
}
