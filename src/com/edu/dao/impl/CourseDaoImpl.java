package com.edu.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.dao.CourseDao;
import com.edu.model.Course;
import com.edu.util.Context;

@Repository
public class CourseDaoImpl implements CourseDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Course> findAll(Course course) throws Exception {
		return sqlSessionTemplate.selectList(Context.SELECT_ALL_COURSE, course);
	}

	@Override
	public List<Course> selectVerCourse(Course course) throws Exception {
		return sqlSessionTemplate.selectList(Context.SELECT_VER_COURSE,course);
	}

	@Override
	public void addCourse(Course course) throws Exception {
		sqlSessionTemplate.selectList(Context.ADD_COURSE,course);
		
	}

	@Override
	public void updateCourse(Course course) throws Exception {
		sqlSessionTemplate.selectList(Context.UPDATE_COURSE,course);		
	}

	@Override
	public Course selectCourseById(int id) throws Exception {
		
		return sqlSessionTemplate.selectOne(Context.SELECT_COURSE_BYID, id);
	}


	
	
	
}
