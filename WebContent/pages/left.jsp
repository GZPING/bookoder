<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!-- left side start-->
<div class="left-side sticky-left-side">

	<!--logo and iconic logo start-->
	<div class="logo">
		<a href="index.html"><img src="images/logo.png" alt=""></a>
	</div>

	<div class="logo-icon text-center">
		<a href="index.html"><img src="images/logo_icon.png" alt=""></a>
	</div>
	<!--logo and iconic logo end-->


	<div class="left-side-inner">
		<!-- visible to small devices only -->
		<div class="visible-xs hidden-sm hidden-md hidden-lg">
			<div class="media logged-user">
				<img alt="" src="images/photos/user-avatar.png" class="media-object">
				<div class="media-body">
					<h4>
						<a href="#"></a>
					</h4>
					<span></span>
				</div>
			</div>

			<h5 class="left-nav-title"></h5>
			<ul class="nav nav-pills nav-stacked custom-nav">
				<li><a href="#"><i class="fa fa-user"></i> <span></span></a></li>
				<li><a href="#"><i class="fa fa-cog"></i> <span></span></a></li>
				<li><a href="#"><i class="fa fa-sign-out"></i> <span>
							</span></a></li>
			</ul>
		</div>
		<!--sidebar nav start-->
		<ul class="nav nav-pills nav-stacked custom-nav  " >
			<li><a href="index"><i class="fa fa-home"></i> <span>主页</span></a></li>
			<s:if test="#session.userInfo.admin==101">
			<li class="menu-list" id="user"><a href=""><i class="fa fa-user"></i>
					<span>用户管理</span></a>
				<ul class="sub-menu-list">
					<li id="userIndex"><a href="user/userIndex">查看用户</a></li>
					<li id="userApproval"><a href="user/userApproval">审核新用户</a></li>
					<li id="addUser"><a href="user/addUser">添加用户</a></li>
				</ul>
			</li>
			</s:if>
			<s:if test="#session.userInfo.admin!=100">
			<li class="menu-list" id="aca"><a href=""><i class="fa fa-sitemap"></i>
					<span>班级管理</span></a>
				<ul class="sub-menu-list">
					<li id="academyIndex"><a href="aca/academyIndex"> 查看学院</a></li>
					<li id="majorIndex"><a href="aca/majorIndex">查看专业</a></li>
					<li id="addMajor"><a href="aca/addMajor">添加专业</a></li>
					<li id="addClass"><a href="aca/addClass">添加班级</a></li>
				</ul></li>
			<li class="menu-list" id="course"><a href=""><i class="fa fa-info-circle"></i>
					<span>教学计划管理</span></a>
				<ul class="sub-menu-list">
					<li id="courseIndex"><a href="course/courseIndex"> 查看课程</a></li>
					<li id="addCourse"><a href="course/addCourse"> 添加课程</a></li>
				</ul></li>
				</s:if>
				<s:if test="#session.userInfo.admin==100">
				<li class="menu-list" id="book"><a href=""><i class="fa fa-book"></i>
					<span>书籍管理</span></a>
				<ul class="sub-menu-list">
					<li id="bookIndex"><a href="book/bookIndex"> 查看书籍</a></li>
					<li id="addBook"><a href="book/addBook"> 添加书籍</a></li>
				</ul>
				</li>
			</s:if>
			
				<li class="menu-list" id="order"><a href=""><i class="fa  fa-shopping-cart"></i>
					<span>订单管理</span></a>
				<ul class="sub-menu-list">
					<li id="cartIndex"><a href="order/cartIndex">购物单</a></li>
				<s:if test="#session.userInfo.admin!=100">
					<s:if test="#session.userInfo.admin==101">
					<li id="createOrder"><a href="order/createOrder">下单</a></li>
					</s:if>
					<li id="orderIndex"><a href="order/orderIndex">所有订单</a></li>
					<li id="myOrder"><a href="order/myOrder" >我的订单</a></li>
					<s:if test="#session.userInfo.admin!=103">
					<li id="orderapproval"><a href="order/orderapproval">需审核</a></li>
					</s:if>
					<li id="addOrder"><a href="order/addOrder"> 添加订单</a></li>
					</s:if>
				</ul>
			</li>
			<s:if test="#session.userInfo.admin==100">
					<li class="menu-list" id=store><a href=""><i class="fa fa-truck"></i>
					<span>库存管理</span></a>
					<ul class="sub-menu-list">
					<li id="storeIndex"><a href="store/storeIndex"> 查看库存</a></li>
					<li id="storein"><a href="store/storein"> 查看入库</a></li>
					<li id="storeout"><a href="store/storeout"> 查看出库</a></li>
					<li id="inStore"><a href="store/inStore"> 商品入库</a></li>
				</ul>
			</li>
			</s:if>
			<li id="bookRead"><a href="book/bookIndex"><i class="fa fa-book"></i> <span>查看书籍</span></a></li>
			<li><a href="javascript:;" onclick="logout();"><i class="fa fa-sign-in"></i> <span>退出</span></a></li>
		</ul>
		<!--sidebar nav end-->
	</div>
</div>
<!-- left side end-->