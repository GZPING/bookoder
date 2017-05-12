package com.edu.dao;

import java.util.List;

import com.edu.model.Cart;
import com.edu.model.Order;

public interface OrderDao {

	List<Order> selectOrder(Order order)throws Exception;

	void addOrder(Order order) throws Exception;

	void updateOrder(Order order) throws Exception;

	Order selectOrderById(int id)throws Exception;

	void updateOrderStatus(Order order) throws Exception;

	List<Order> selectApprovaled(Order order)throws Exception;

	void updateOrderCart(Order order)throws Exception;

	List<Cart> selectCart(Cart cart)throws Exception;

	void insertCart(Cart cart)throws Exception;

	List<Order> selectOrderByCart(int id)throws Exception;

	void updateCartStatus(Cart cart)throws Exception;

	List<Order> selectAppOrder(Order order)throws Exception;

	void deleteOrder(int id);

	List<Order> selectMyOrder(Order order);



}
