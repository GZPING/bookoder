package com.edu.service;

import java.util.List;

import com.edu.model.Store;
import com.edu.model.StoreIO;

public interface StoreService {

	public List<Store> searchStore(Store store)throws Exception;

	public void addStore(Store store) throws Exception;

	public void editStore(Store store) throws Exception;

	public void storein(StoreIO storeio) throws Exception;

	public void storeout(StoreIO storeio)throws Exception;

	public List<StoreIO> searchStoreIO(StoreIO storeIO) throws Exception;

	
}
