package com.edu.service;

import java.util.List;

import org.springframework.test.annotation.DirtiesContext.ClassMode;

import com.edu.model.Academy;
import com.edu.model.Major;

public interface AcaService {

	public List<Academy> searchAcademy(Academy aca) throws Exception;

	public List<Major> searchMajorByAcaId(int acaId) throws Exception;

	public List<Major> searchMajor(Major major) throws Exception;

	public List<ClassMode> searchClassByMajId(int id) throws Exception;

	public void seleteAca(int id) throws Exception;

	public void seleteClass(int id) throws Exception;

	public void seleteMajor(int id) throws Exception;
}
