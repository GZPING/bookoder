package com.edu.dao;

import java.util.List;

import com.edu.model.User;

public interface UserDao {

	public abstract void insertUser(User user);

	public abstract void updateUser(User user) throws Exception;

	public abstract void deleteUser(Integer userId) throws Exception;

	public abstract User findUserByid(Integer userId);

	public abstract List<User> findAll();

	public abstract User userLogin(User user);

	public abstract void editAdmin(User user)throws Exception;

}