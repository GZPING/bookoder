package com.edu.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.edu.model.Course;
import com.edu.service.CourseService;

@SuppressWarnings("serial")
@Controller
@Scope("prototype")
public class CourseAction extends BaseAction {
	
	@Autowired
	private CourseService courseService;
	
	private Course course;
	private List<Course> courseList;
	private int id;
	
	/*
	 * 查找课程
	 */
	public String searchAllCourse(){
	try {
			courseList=courseService.findAllCourse(course);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String verCourse(){
		try {
			courseList=courseService.searchVerCourse();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String searchCourseById(){
		try {
			course=courseService.searchCourseById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	/*
	 * 添加课程界面
	 */
	public String addCourse(){
		return SUCCESS;
	}
	

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}
	
	public List<Course> getCourseList() {
		return courseList;
	}

	public void setCourseList(List<Course> courseList) {
		this.courseList = courseList;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
