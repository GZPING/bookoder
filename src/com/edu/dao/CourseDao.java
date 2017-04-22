package com.edu.dao;

import java.util.List;

import com.edu.model.Academy;
import com.edu.model.Course;

public interface CourseDao {
	/*
	 * 查看所有的用户
	 */
	public List<Course> findAll(Course course) throws Exception;

	public List<Course> selectVerCourse(Course course)  throws Exception;


}
