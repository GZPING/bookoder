package com.edu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.edu.dao.CourseDao;
import com.edu.model.Academy;
import com.edu.model.Course;
import com.edu.service.CourseService;

@Service
@Transactional
public class CourseServiceImpl implements CourseService {
	
	@Autowired
	private CourseDao courseDao;
	
	@Override
	public List<Course> findAllCourse(Course course) throws Exception {
		return courseDao.findAll(course);
	}

	public CourseDao getCourseDao() {
		return courseDao;
	}

	public void setCourseDao(CourseDao courseDao) {
		this.courseDao = courseDao;
	}

	@Override
	public List<Course> searchVerCourse() throws Exception {
		return courseDao.selectVerCourse(null);
	}

	@Override
	public Course searchCourseById(int id) throws Exception {
		Course course=new Course();
		course.setId(id);
		return courseDao.selectVerCourse(course).get(0);
	}

}
