package com.edu.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.test.annotation.DirtiesContext.ClassMode;

import com.edu.dao.AcaDao;
import com.edu.model.Academy;
import com.edu.model.ClassModel;
import com.edu.model.Major;
import com.edu.util.Context;

@Repository
public class AcaDaoImpl implements AcaDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Academy> selectAcademy(Academy aca) throws Exception {
		return sqlSessionTemplate.selectList(Context.SELECT_ACADEMY, aca);
	}

	@Override
	public List<Major> selectMajorByAcaId(int acaId) throws Exception {
		return sqlSessionTemplate.selectList(Context.SELECT_MAJOR_BY_ACAID,acaId);
	}

	@Override
	public List<Major> selectMajor(Major major) throws Exception {
		return sqlSessionTemplate.selectList(Context.SELECT_MAJOR, major);
	}

	@Override
	public List<ClassMode> selectClassByMajId(int id) throws Exception {
		return sqlSessionTemplate.selectList(Context.SELECT_MAJOR_BY_MAJID, id);
	}

	@Override
	public void deleteAcaById(int id) throws Exception {
		sqlSessionTemplate.delete(Context.DELETE_ACA_BYID, id);
		
	}

	@Override
	public void deleteClassById(int id) throws Exception {
		sqlSessionTemplate.delete(Context.DELETE_CLASS_BYID, id);		
	}

	@Override
	public void deleteMajorById(int id) throws Exception {
		sqlSessionTemplate.delete(Context.DELETE_MAJOR_BYID, id);		
	}

	@Override
	public void addMajor(Major major) throws Exception {
		sqlSessionTemplate.insert(Context.INSERT_MAJOR, major);
		
	}

	@Override
	public void addClass(ClassModel classModel) throws Exception {
		sqlSessionTemplate.insert(Context.INSERT_CLASS, classModel);
		
	}

	@Override
	public void insertAca(Academy aca) {
		sqlSessionTemplate.insert("insertAca", aca);
	}
}
