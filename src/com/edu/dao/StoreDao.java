package com.edu.dao;

import java.util.List;

import com.edu.model.Store;
import com.edu.model.StoreIO;

public interface StoreDao {

	void updateStore(Store store)throws Exception;

	void insertStore(Store store)throws Exception;

	List<Store> selectStore(Store store)throws Exception;

	List<StoreIO> selectStoreIO(StoreIO storeIO)throws Exception;

	void insertStoreIn(StoreIO storeio)throws Exception;

	void updateStoreNum(Store store)throws Exception;
	
}
