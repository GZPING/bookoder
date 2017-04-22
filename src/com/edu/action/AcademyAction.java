package com.edu.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.DirtiesContext.ClassMode;

import com.edu.model.Academy;
import com.edu.model.Major;
import com.edu.service.AcaService;

@SuppressWarnings("serial")
public class AcademyAction extends BaseAction {
	
	@Autowired
	private AcaService acaService;
	
	private int id;
	private List<Academy> academyList;
	private List<Major> majorList;
	private List<ClassMode> classList;
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
		try {
			majorList=acaService.searchMajor(null);
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
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String deleteClass(){
		try {
			acaService.seleteClass(id);
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
}
