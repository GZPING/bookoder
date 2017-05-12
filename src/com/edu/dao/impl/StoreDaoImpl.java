package com.edu.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.dao.StoreDao;
import com.edu.model.Store;
import com.edu.model.StoreIO;
import com.edu.util.Context;

@Repository
public class StoreDaoImpl implements StoreDao {

	@Autowired             
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public void insertStoreIn(StoreIO storeio) throws Exception {
		sqlSessionTemplate.insert(Context.INSERT_STORE_IN, storeio);
		
	}

	@Override
	public void updateStore(Store store) throws Exception {
		sqlSessionTemplate.update(Context.UPDATE_STORE, store);
		
	}

	@Override
	public void insertStore(Store store) throws Exception {
		sqlSessionTemplate.insert(Context.INSERT_STORE, store);
		
	}

	@Override
	public List<Store> selectStore(Store store) throws Exception {
		
		return sqlSessionTemplate.selectList(Context.SELECT_STORE, store);
	}

	@Override
	public List<StoreIO> selectStoreIO(StoreIO storeIO) throws Exception {
		return sqlSessionTemplate.selectList(Context.SELECT_STOREIO, storeIO);
	}

	@Override
	public void updateStoreNum(Store store) throws Exception {
		sqlSessionTemplate.update("updateStoreNum", store);
		
	}


	
}
