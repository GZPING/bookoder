package com.edu.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.edu.model.Course;
import com.edu.model.User;
import com.edu.service.CourseService;
import com.edu.util.UtilUser;

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
	public String searchAllCourse() {
		if(!UtilUser.isLogin()){
			return LOGIN;
		}
		course=new Course();
		
		if(id==1){
			User user=UtilUser.getUser();
			if(user.getAdmin()==103){
				course.setTeacherId(user.getId());
			}
		}
		try {
			courseList = courseService.findAllCourse(course);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public String verCourse() {
		try {
			courseList = courseService.searchVerCourse();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public String searchCourseById() {
		try {
			course = courseService.searchCourseById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	/*
	 * 添加课程
	 */
	public String addCourse() {
		if (!UtilUser.isLogin()) {
			this.setAjaxResult("login");
			return SUCCESS;
		}
		if (id == 1) {
			try {
				course.setPersonId(UtilUser.getUser().getId());
				courseService.addCourse(course);
				this.setAjaxResult("success");
			} catch (Exception e) {
				this.setAjaxResult("error");
				e.printStackTrace();
			}
		}
		return SUCCESS;
	}
	
	public String loadEditCourse(){
		try {
			course=courseService.searchCourseById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	/*
	 * 修改课程
	 */
	public String updateCourse() {
		if (!UtilUser.isLogin()) {
			this.setAjaxResult("login");
			return "login";
		}
		if (id == 1) {
			try {
				course.setPersonId(UtilUser.getUser().getId());
				courseService.updateCourse(course);
				this.setAjaxResult("success");
			} catch (Exception e) {
				this.setAjaxResult("error");
				e.printStackTrace();
			}
		}
		return SUCCESS;
	}
	
	/*
	 * 删除课程
	 */
	public String deleteCourse(){
		try {
			courseService.deleteCourse(id);
			this.setAjaxResult(SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
		}
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
