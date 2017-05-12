package com.edu.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.dao.OrderDao;
import com.edu.model.Cart;
import com.edu.model.Order;
import com.edu.util.Context;

@Repository
public class OrderDaoImpl implements OrderDao {

	@Autowired             
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<Order> selectOrder(Order order) throws Exception {
		return sqlSessionTemplate.selectList(Context.SELECT_ORDER, order);
	}

	@Override
	public void addOrder(Order order) throws Exception {
		sqlSessionTemplate.insert(Context.ADD_ORDER, order);
	}

	@Override
	public void updateOrder(Order order) throws Exception {
		sqlSessionTemplate.update(Context.UPDATE_ORDER,order);
		
	}

	@Override
	public Order selectOrderById(int id) throws Exception {
		return sqlSessionTemplate.selectOne(Context.SELCT_ORDER_BYID, id);
	}

	@Override
	public void updateOrderStatus(Order order) throws Exception {
		sqlSessionTemplate.update(Context.UPDATE_STATUS, order);
		
	}

	@Override
	public List<Order> selectApprovaled(Order order) throws Exception {
		return sqlSessionTemplate.selectList(Context.SELECT_APPROVAL, order);
	}

	@Override
	public void updateOrderCart(Order order) throws Exception {
		sqlSessionTemplate.update(Context.UPDATE_ORDER_CAET, order);
	}

	@Override
	public List<Cart> selectCart(Cart cart) throws Exception {
		return sqlSessionTemplate.selectList(Context.SELECT_CART, cart);
	}

	@Override
	public void insertCart(Cart cart) throws Exception {
		sqlSessionTemplate.insert(Context.INSERT_CART, cart);
		
	}

	@Override
	public List<Order> selectOrderByCart(int id) throws Exception {
		return sqlSessionTemplate.selectList(Context.SELECT_ORDER_BYCART, id);
	}

	@Override
	public void updateCartStatus(Cart cart) throws Exception {
		sqlSessionTemplate.update("updateCartStatus", cart);
		
	}

	@Override
	public List<Order> selectAppOrder(Order order) throws Exception {
		
		return sqlSessionTemplate.selectList("selectAppOrder", order);
	}

	@Override
	public void deleteOrder(int id) {
		sqlSessionTemplate.delete("deleteOrder",id);
		
	}

	@Override
	public List<Order> selectMyOrder(Order order) {
		return sqlSessionTemplate.selectList("selectMyOrder", order);
	}
	
	
}
