package com.edu.service;

import java.util.List;

import com.edu.model.User;

public interface UserService {

	public abstract void addUser(User user);

	public abstract void updateUser(User user) throws Exception;

	public abstract void deleteUser(Integer userId)  throws Exception;

	public abstract User findUserById(Integer userId) throws Exception;

	public abstract List<User> findAllUser();

	public abstract User login(User user);

	public abstract void editAdmin(User user) throws Exception;

}