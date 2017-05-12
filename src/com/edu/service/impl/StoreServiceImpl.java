package com.edu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.edu.dao.StoreDao;
import com.edu.model.Store;
import com.edu.model.StoreIO;
import com.edu.service.StoreService;

@Service
@Transactional
public class StoreServiceImpl implements StoreService {

	@Autowired
	StoreDao storeDao;

	@Override
	public List<Store> searchStore(Store store) throws Exception {
		return storeDao.selectStore(store);
	}

	@Override
	public void addStore(Store store) throws Exception {
		List<Store> stores = searchStore(store);
		if (stores.size() > 0) {
			Store store1 = stores.get(0);
			store.setId(store1.getId());
			store.setNumber(store.getNumber() + store1.getNumber());
			storeDao.updateStore(store);
		}else{
			storeDao.insertStore(store);
		}
	}

	@Override
	public void editStore(Store store) throws Exception {
		storeDao.updateStore(store);

	}

	@Override
	public void storein(StoreIO storeio) throws Exception {
		storeio.setStatus(1);
		storeDao.insertStoreIn(storeio);

	}

	@Override
	public void storeout(StoreIO storeio) throws Exception {
		storeio.setStatus(2);
		Store store=new Store();
		store.setBookId(storeio.getBookId());
		store.setNumber(storeio.getNumber());
		storeDao.updateStoreNum(store);
		storeDao.insertStoreIn(storeio);
		
	}

	@Override
	public List<StoreIO> searchStoreIO(StoreIO storeIO) throws Exception {
		return storeDao.selectStoreIO(storeIO);
	}

}
