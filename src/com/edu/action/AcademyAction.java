package com.edu.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.DirtiesContext.ClassMode;

import com.edu.model.Academy;
import com.edu.model.ClassModel;
import com.edu.model.Major;
import com.edu.service.AcaService;
import com.edu.util.UtilUser;

@SuppressWarnings("serial")
public class AcademyAction extends BaseAction {
	
	@Autowired
	private AcaService acaService;
	
	private int id;
	private Major major;
	private ClassModel classModel;
	private Academy aca;
	private List<Academy> academyList;
	private List<Major> majorList;
	private List<ClassMode> classList;
	
	private int status=0;
	
	/*
	 * 查看学院信息
	 */
	public String searchAcademy(){
		try {
			academyList=acaService.searchAcademy(null);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	/*
	 * 查看专业信息
	 */
	public String searchMajorByAcaId(){
		try {
			majorList=acaService.searchMajorByAcaId(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	/*
	 * 查看专业信息
	 */
	public String searchMajor(){
		if(!UtilUser.isLogin()){
			return LOGIN;
		}
		if(UtilUser.getUser().getAdmin()==102){
		major=new Major();
		major.setAcademyId(UtilUser.getUser().getAcademyId());
		}
		try {
			majorList=acaService.searchMajor(major);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String searchClassByMajId(){
		try {
			classList=acaService.searchClassByMajId(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String deleteAca(){
		try {
			acaService.seleteAca(id);
			this.setAjaxResult("success");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String deleteMajor(){
		try {
			acaService.seleteMajor(id);
			this.setAjaxResult("success");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String deleteClass(){
		try {
			acaService.seleteClass(id);
			this.setAjaxResult("success");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	/*
	 * 添加学院
	 */
	public String addAca(){
		try {
			acaService.addAca(aca);
			this.setAjaxResult(SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	/*
	 * 添加专业
	 */
	public String addMajor(){
		//等于0的时候实行页面的加载
		if(status==0){
			return SUCCESS;
		}
		try {
			acaService.addMajor(major);
			this.setAjaxResult("success");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	/*
	 * 添加班级
	 */
	public String addClass(){
		//等于0的时候实行页面的加载
		if(status==0){
			return SUCCESS;
		}
		try {
			acaService.addClass(classModel);
			this.setAjaxResult("success");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public List<Academy> getAcademyList() {
		return academyList;
	}

	public void setAcademyList(List<Academy> academyList) {
		this.academyList = academyList;
	}

	public List<Major> getMajorList() {
		return majorList;
	}

	public void setMajorList(List<Major> majorList) {
		this.majorList = majorList;
	}

	public List<ClassMode> getClassList() {
		return classList;
	}

	public void setClassList(List<ClassMode> classList) {
		this.classList = classList;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Major getMajor() {
		return major;
	}
	public void setMajor(Major major) {
		this.major = major;
	}
	public ClassModel getClassModel() {
		return classModel;
	}
	public void setClassModel(ClassModel classModel) {
		this.classModel = classModel;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Academy getAca() {
		return aca;
	}
	public void setAca(Academy aca) {
		this.aca = aca;
	}
	
}
