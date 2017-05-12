package com.edu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.edu.dao.OrderDao;
import com.edu.model.Cart;
import com.edu.model.Order;
import com.edu.service.OrderService;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	OrderDao orderDao;

	@Override
	public List<Order> searchAllOrder(Order order) throws Exception {
		return orderDao.selectOrder(order);
	}

	@Override
	public void addOrder(Order order) throws Exception {
		orderDao.addOrder(order);
		
	}

	@Override
	public void editOrder(Order order) throws Exception {
		orderDao.updateOrder(order);
		
	}

	@Override
	public Order searchOrderById(int id) throws Exception {
		return orderDao.selectOrderById(id);		
	}

	@Override
	public void editOrderStatus(Order order) throws Exception {
		orderDao.updateOrderStatus(order);
		
	}

	@Override
	public List<Order> searchApprovaled(Order order) throws Exception {
		
		return orderDao.selectApprovaled(order);
	}

	@Override
	public void editOrderCart(Order order) throws Exception {
		orderDao.updateOrderCart(order);
	}

	@Override
	public List<Cart> searchCart(Cart cart) throws Exception {
		return orderDao.selectCart(cart);
	}

	@Override
	public void addCart(Cart cart) throws Exception {
		orderDao.insertCart(cart);
		
	}

	@Override
	public List<Order> searchOrderListByCart(int id) throws Exception {
	
		return orderDao.selectOrderByCart(id);
	}

	@Override
	public void editCartStatus(Cart cart) throws Exception {
		orderDao.updateCartStatus(cart);
		
	}

	@Override
	public List<Order> searchAppOrder(Order order) throws Exception {
		
		return orderDao.selectAppOrder(order);
	}

	@Override
	public List<Order> searchMyOrder(Order order) throws Exception {
		return orderDao.selectMyOrder(order);
	}

	@Override
	public void deleteOrder(int id) throws Exception {
		orderDao.deleteOrder(id);
	}
	

}
