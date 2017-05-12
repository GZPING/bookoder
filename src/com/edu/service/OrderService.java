package com.edu.service;

import java.util.List;

import com.edu.model.Cart;
import com.edu.model.Order;

public interface OrderService {

	public List<Order> searchAllOrder(Order order)throws Exception;

	public void addOrder(Order order) throws Exception;

	public void editOrder(Order order) throws Exception;

	public Order searchOrderById(int id) throws Exception;

	public void editOrderStatus(Order order) throws Exception;

	public List<Order> searchApprovaled(Order order)throws Exception;

	public void editOrderCart(Order order)throws Exception;
	
	public void addCart(Cart cart)throws Exception;
	
	public  List<Cart> searchCart(Cart cart)throws Exception;

	public List<Order> searchOrderListByCart(int id)throws Exception;

	public void editCartStatus(Cart cart)throws Exception;

	public List<Order> searchAppOrder(Order order)throws Exception;

	public List<Order> searchMyOrder(Order order)throws Exception;

	public void deleteOrder(int id)throws Exception;
	

}
