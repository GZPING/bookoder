package com.edu.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.edu.model.Cart;
import com.edu.model.Order;
import com.edu.model.StoreIO;
import com.edu.model.User;
import com.edu.service.OrderService;
import com.edu.service.StoreService;
import com.edu.util.UtilUser;

@SuppressWarnings("serial")
public class OrderAction extends BaseAction {

	@Autowired
	private OrderService orderService;
	
	@Autowired
	private StoreService storeService;

	private List<Order> orderList;
	private List<Cart> cartList;
	private Order order;
	private int id;
	private int status;
	private int cartId;
	private int total;
	private int totalNum = 0;
	private String time;
	private ArrayList<Integer> ids;
	
	private Cart cart;

	/*
	 * index
	 */
	public String searchAllOrder() {
		if (!UtilUser.isLogin()) {
			return LOGIN;
		}
		/*		User user = UtilUser.getUser();
		int admin = user.getAdmin();
		
		if (admin == 103) {
			order.setAdmin(103);
		} else if (admin == 102) {
			order.setAdmin(102);
		} else if (admin == 101) {
			order.setAdmin(101);
		} else {
			return LOGIN;
		}
		order.setPersonId(user.getId());
		*/
		order = new Order();
		order.setStatus(10);
		try {
			orderList = orderService.searchAllOrder(order);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public String myOrder(){
		if (!UtilUser.isLogin()) {
			return LOGIN;
		}
		order=new Order();
		try {
			order.setPersonId(UtilUser.getUser().getId());
			orderList=orderService.searchMyOrder(order);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String deleteOrder(){
		
		try {
			orderService.deleteOrder(id);
			this.setAjaxResult(SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	/*
	 * 添加
	 */
	public String addOrder() {
		if (!UtilUser.isLogin()) {
			return LOGIN;
		}
		if (id == 1) {
			try {
				order.setStatus(1);
				order.setPersonId(UtilUser.getUser().getId());
				order.setTotalPrice(order.getBookPrice() * order.getNumber());
				orderService.addOrder(order);
				this.setAjaxResult("success");
			} catch (Exception e) {
				this.setAjaxResult("error");
				e.printStackTrace();
			}
		}
		return SUCCESS;
	}

	/*
	 * 显示未审核订单
	 */
	public String loadApproval() {
		if (!UtilUser.isLogin()) {
			return LOGIN;
		}
		User user = UtilUser.getUser();
		int admin = user.getAdmin();
		order = new Order();
		if (admin == 102) {
			order.setAdmin(102);
			order.setStatus(1);
		} else if (admin == 101) {
			order.setAdmin(101);
			order.setStatus(2);
		} else {
			return LOGIN;
		}
		order.setPersonId(user.getId());
		try {
			orderList = orderService.searchAppOrder(order);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public String loadApprovaled() {
		if (!UtilUser.isLogin()) {
			return LOGIN;
		}
		int userId = UtilUser.getUser().getId();
		int admin = UtilUser.getUser().getAdmin();
		order = new Order();
		order.setPersonId(userId);
		order.setUpersonId(userId);
		if (admin == 103) {
			order.setStatus(1);
		} else if (admin == 102) {
			order.setStatus(2);
		} else if (admin == 101) {
			order.setStatus(3);
		}
		try {
			orderList = orderService.searchApprovaled(order);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	/*
	 * 审核
	 */
	public String approvalOrder() {
		if (!UtilUser.isLogin()) {
			return SUCCESS;
		}
		User user = UtilUser.getUser();
		int admin = user.getAdmin();
		if (order == null) {
			order = new Order();
		}
		if (status == 0) {
			order.setStatus(0);
		} else {
			if (admin == 103) {
				order.setStatus(1);
			} else if (admin == 102) {
				order.setStatus(2);
			} else if (admin == 101) {
				order.setStatus(3);
			} else {
				this.setAjaxResult(ERROR);
				return SUCCESS;
			}
		}
		try {
			if (id == 1) {
				orderService.editOrderStatus(order);

			} else if (id == 2) { // 批量审核
				for (int i = 0; i < ids.size(); i++) {
					System.out.println(ids.get(i));
					order.setId(ids.get(i));
					orderService.editOrderStatus(order);
				}
			}
			this.setAjaxResult(SUCCESS);
		} catch (Exception e) {
			this.setAjaxResult(ERROR);
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public String loadEdit() {
		try {
			order = orderService.searchOrderById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
	}

	/*
	 * 修改订单
	 */
	public String editOrder() {
		if (!UtilUser.isLogin()) {
			this.setAjaxResult(ERROR);
			return SUCCESS;
		}
		if (id == 1) {
			try {
				User user = UtilUser.getUser();
				order.setStatus(1);
				order.setTotalPrice(order.getPrice() * order.getNumber());
				order.setUpersonId(user.getId());
				orderService.editOrder(order);
				this.setAjaxResult(SUCCESS);
			} catch (Exception e) {
				this.setAjaxResult(ERROR);
				e.printStackTrace();
			}
		}
		return SUCCESS;
	}

	public String searchOrderInfo() {
		try {
			order = orderService.searchOrderById(id);
			order.setTotalPrice(order.getNumber() * order.getPrice());
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
	}

	public String createOrder() {
		if (!UtilUser.isLogin()) {
			return LOGIN;
		}
		order = new Order();
		order.setStatus(3);
		try {
			orderList = orderService.searchApprovaled(order);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return SUCCESS;
	}

	/*
	 * 详情订单
	 */
	public String orderCart() {
		if (!UtilUser.isLogin()) {
			return LOGIN;
		}
		HttpServletResponse response = ServletActionContext.getResponse();
		if (id != 1) {
			HttpServletRequest request = ServletActionContext.getRequest();
			Cookie[] cookies = request.getCookies();
			String[] oids = null;
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("ids")) {
					oids = cookie.getValue().split(":");
				}
			}
			total = 0;
			orderList = new ArrayList<Order>();
			try {
				for (int i = 0; i < oids.length; i++) {
					order = orderService.searchOrderById(Integer.parseInt(oids[i]));
					order.setTotalPrice(order.getPrice() * order.getNumber());
					total += order.getTotalPrice();
					totalNum += order.getNumber();
					orderList.add(order);
				}

				java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				java.util.Date currentTime = new java.util.Date();
				Random ran = new Random(System.currentTimeMillis());
				cartId = ran.nextInt(1000000);
				time = simpleDateFormat.format(currentTime).toString();
				Cookie cookie = new Cookie("cartId", cartId+"");
				cookie.setPath("/");
				cookie.setMaxAge(300);
				Cookie cookie1 = new Cookie("total", total+"");
				cookie1.setPath("/");
				cookie1.setMaxAge(300);
				response.addCookie(cookie);
				response.addCookie(cookie1);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return SUCCESS;
		}
		if (id == 1) {
			if (ids.size() > 0) {
				String oid = "";
				for (int i = 0; i < ids.size(); i++) {
					oid += ids.get(i) + ":";
				}
				System.out.println(oid);
				try {
					Cookie cookie = new Cookie("ids", oid);
					cookie.setPath("/");
					cookie.setMaxAge(300);
					response.addCookie(cookie);
					this.setAjaxResult("success");
				} catch (Exception e) {
					this.setAjaxResult("error");
					e.printStackTrace();
				}
			}
		}
		return SUCCESS;
	}

	/*
	 * 提交订单到数据库
	 */
	public String submitCart() {
		HttpServletRequest request = ServletActionContext.getRequest();
		Cookie[] cookies = request.getCookies();
		String[] oids = null;
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("ids")) {
				oids = cookie.getValue().split(":");
			}
			if (cookie.getName().equals("cartId")) {
				cartId=Integer.parseInt(cookie.getValue());
			}
			if (cookie.getName().equals("total")) {
				total=Integer.parseInt(cookie.getValue());
			}
		}
		Cart cart=new Cart();
		try {
			cart.setId(cartId);
			if(orderService.searchCart(cart).isEmpty()){
				cart.setPersonId(UtilUser.getUser().getId());
				cart.setPrice(total);
				cart.setTotalNum(totalNum);
				cart.setStatus(0);
				orderService.addCart(cart);
			}
			order=new Order();
			for (int i = 0; i < oids.length; i++) {
				order.setId(Integer.parseInt(oids[i]));
				order.setCartId(cartId);
				orderService.editOrderCart(order);
			}
			this.setAjaxResult(SUCCESS);
		} catch (Exception e) {
			this.setAjaxResult(ERROR);
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String cartIndex(){
		if (!UtilUser.isLogin()) {
			return LOGIN;
		}
		cart=new Cart();
		if(id==1){
			//占时使用totalNum 作为分页数据
			cart.setTotalNum(5);
		}
		try {
			cartList=orderService.searchCart(cart);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//供应商显示的页面
		if(id==1){
			return "cartForIndex";
		}
		if(UtilUser.getUser().getAdmin()==100){
			return "approval";
		}
		return SUCCESS;
	}
	
	public String cartInfo(){
		if (!UtilUser.isLogin()) {
			return LOGIN;
		}
		cart=new Cart();
		try {
			cart.setId(id);
			cartList=orderService.searchCart(cart);
			cart=cartList.get(0);
			orderList=orderService.searchOrderListByCart(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String confirmCart(){
		cart=new Cart();
		if (ids.size() > 0) {
			for(int i:ids){
				cart.setId(i);
				cart.setStatus(1);
				try {
					orderService.editCartStatus(cart);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		
		return SUCCESS;
	}
	
	/*
	 * 商品出库管理
	 */
	public String cartOut(){
		if (!UtilUser.isLogin()) {
			return LOGIN;
		}
		// 加载页面执行查询语句
		if (status != 1) {
			cart = new Cart();
			try {
				cart.setId(id);
				cartList = orderService.searchCart(cart);
				cart = cartList.get(0);
				orderList = orderService.searchOrderListByCart(id);
				String ids = "";
				for (Order order : orderList) {
					ids += order.getId() + ":";
				}
				Cookie cookie = new Cookie("ids", ids);
				cookie.setPath("/");
				cookie.setMaxAge(300);
				HttpServletResponse response = ServletActionContext.getResponse();
				response.addCookie(cookie);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// 用户执行出库操作
		if (status == 1) {
			HttpServletRequest request = ServletActionContext.getRequest();
			Cookie[] cookies = request.getCookies();
			String[] oids = null;
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("ids")) {
					oids = cookie.getValue().split(":");
				}
			}
			cart=new Cart();
			cart.setStatus(1);
			StoreIO storeIO=new StoreIO();
			try {
				
				for (int i = 0; i < oids.length; i++) {
					order = orderService.searchOrderById(Integer.parseInt(oids[i]));
					storeIO.setBookId(order.getBookId());
					storeIO.setNumber(order.getNumber());
					storeIO.setPersonId(UtilUser.getUser().getId());
					storeIO.setPlace(order.getStorePlace());
					storeService.storeout(storeIO);
				}
				cart.setId(id);
				orderService.editCartStatus(cart);
				this.setAjaxResult(SUCCESS);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return SUCCESS;
	}

	public List<Order> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<Order> orderList) {
		this.orderList = orderList;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public ArrayList<Integer> getIds() {
		return ids;
	}

	public void setIds(ArrayList<Integer> ids) {
		this.ids = ids;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getTotalNum() {
		return totalNum;
	}

	public void setTotalNum(int totalNum) {
		this.totalNum = totalNum;
	}

	public List<Cart> getCartList() {
		return cartList;
	}

	public void setCartList(List<Cart> cartList) {
		this.cartList = cartList;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

}
