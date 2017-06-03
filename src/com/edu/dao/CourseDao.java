package com.edu.dao;

import java.util.List;

import com.edu.model.Course;

public interface CourseDao {
	/*
	 * 查看所有的用户
	 */
	public List<Course> findAll(Course course) throws Exception;

	public List<Course> selectVerCourse(Course course)  throws Exception;

	public void addCourse(Course course)throws Exception;

	public void updateCourse(Course course)throws Exception;

	public Course selectCourseById(int id)throws Exception;

	public void deleteCourse(int id)throws Exception;


}
