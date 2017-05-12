package com.edu.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.edu.model.Store;
import com.edu.model.StoreIO;
import com.edu.service.StoreService;
import com.edu.util.UtilUser;

@SuppressWarnings("serial")
public class StoreAction extends BaseAction {

	@Autowired
	private StoreService storeService;

	private List<Store> storeList;
	private List<StoreIO> storeIOList;
	private Store store;
	private StoreIO storeIO;
	private int id;
	private String place;

	/*
	 * index
	 */
	public String searchAllStore() {
		try {
			storeList = storeService.searchStore(store);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	/*
	 * 添加
	 */
	public String addStore() {
		if (id == 1) {
			if (!UtilUser.isLogin()) {
				this.setAjaxResult("error");
				return SUCCESS;
			}
			if (store == null) {
				this.setAjaxResult("error");
				return SUCCESS;
			} else {
				try {
					StoreIO storeio =new StoreIO();
					storeio.setBookId(store.getBookId());
					storeio.setNumber(store.getNumber());
					storeio.setDescription(store.getDescription());
					storeio.setPlace(store.getPlace());
					storeio.setPersonId(UtilUser.getUser().getId());
					storeService.storein(storeio);
					storeService.addStore(store);
					this.setAjaxResult("success");
				} catch (Exception e) {
					this.setAjaxResult("error");
					e.printStackTrace();
				}
			}
		} else {
			if (!UtilUser.isLogin()) {
				return LOGIN;
			}
		}
		return SUCCESS;
	}

	/*
	 * 存储操作信息
	 */
	public String storeIO() {
		try {
			storeIO = new StoreIO();
			storeIO.setBookId(id);
			storeIO.setPageNum(5);
			storeIO.setPlace(place);
			storeIOList = storeService.searchStoreIO(storeIO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	/*
	 * 入库
	 */
	public String storein() {
		try {
			storeIO = new StoreIO();
			storeIO.setStatus(1);
			storeIOList = storeService.searchStoreIO(storeIO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	/*
	 * 出库
	 */
	public String storeout() {
		try {
			storeIO = new StoreIO();
			storeIO.setStatus(2);
			storeIOList = storeService.searchStoreIO(storeIO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public String editStore() {
		try {
			storeService.editStore(store);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public List<Store> getStoreList() {
		return storeList;
	}

	public void setStoreList(List<Store> storeList) {
		this.storeList = storeList;
	}

	public Store getStore() {
		return store;
	}

	public void setStore(Store store) {
		this.store = store;
	}

	public StoreIO getStoreIO() {
		return storeIO;
	}

	public void setStoreIO(StoreIO storeIO) {
		this.storeIO = storeIO;
	}

	public List<StoreIO> getStoreIOList() {
		return storeIOList;
	}

	public void setStoreIOList(List<StoreIO> storeIOList) {
		this.storeIOList = storeIOList;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

}
