package com.edu.dao;

import java.util.List;

import org.springframework.test.annotation.DirtiesContext.ClassMode;

import com.edu.model.Academy;
import com.edu.model.Major;

public interface AcaDao {

	public List<Academy> selectAcademy(Academy aca)throws Exception;

	public List<Major> selectMajorByAcaId(int acaId) throws Exception;

	public List<Major> selectMajor(Major major)throws Exception;

	public List<ClassMode> selectClassByMajId(int id) throws Exception;

	public void deleteAcaById(int id) throws Exception;

	public void deleteClassById(int id) throws Exception;

	public void deleteMajorById(int id) throws Exception;
}
