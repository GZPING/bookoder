package com.edu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.test.annotation.DirtiesContext.ClassMode;
import org.springframework.transaction.annotation.Transactional;

import com.edu.dao.AcaDao;
import com.edu.model.Academy;
import com.edu.model.ClassModel;
import com.edu.model.Major;
import com.edu.service.AcaService;

@Service
@Transactional
public class AcaServiceImpl implements AcaService {

	@Autowired
	private AcaDao acaDao;

	@Override
	public List<Academy> searchAcademy(Academy aca) throws Exception {
		return acaDao.selectAcademy(aca);
	}

	@Override
	public List<Major> searchMajorByAcaId(int acaId) throws Exception {
		return acaDao.selectMajorByAcaId(acaId);
	}

	@Override
	public List<Major> searchMajor(Major major) throws Exception {
		return acaDao.selectMajor(major);
	}

	@Override
	public List<ClassMode> searchClassByMajId(int id) throws Exception {
		return acaDao.selectClassByMajId(id);
	}

	@Override
	public void seleteAca(int id) throws Exception {
		acaDao.deleteAcaById(id);

	}

	@Override
	public void seleteClass(int id) throws Exception {
		acaDao.deleteClassById(id);
	}

	@Override
	public void seleteMajor(int id) throws Exception {
		acaDao.deleteMajorById(id);
	}

	@Override
	public void addMajor(Major major) throws Exception {
		acaDao.addMajor(major);
	}

	@Override
	public void addClass(ClassModel classModel) throws Exception {
		acaDao.addClass(classModel);

	}

	@Override
	public void addAca(Academy aca) throws Exception {
		acaDao.insertAca(aca);
		
	}
}
