<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<table cellpadding="5" cellspacing="0" border="0"
	style="padding-left: 50px;" width="95%">
			<tr>
				<td>课程：<span style="color:#65cea7"><s:property value="order.courseName" /></span></td>
				<td>书名：<span style="color:#65cea7"><s:property value="order.bookName" /></span></td>
				<td>出版社：<span style="color:#65cea7"><s:property value="order.pub" /></span></td>
			</tr>
			<tr>
				<td>单价：<span style="color:#65cea7"><s:property value="order.price" /></span></td>
				<td>数量：<span style="color:#65cea7"><s:property value="order.number" /></span></td>
				<td>总价：<span style="color:#65cea7"><s:property value="order.totalPrice" /></span></td>
			</tr>
			<tr>
				<td>申请时间：<span style="color:#65cea7"><s:date name="order.date" format="yyyy-MM-dd hh:mm:ss" /></span></td>
				<td>申请人：<span style="color:#65cea7"><s:property value="order.person" /></span></td>
				<td>购物单号：<span style="color:#65cea7"><s:property value="order.cartId" /></span></td>
			</tr>
			<tr>
			<td>更新时间：<span style="color:#65cea7"><s:date name="order.udate" format="yyyy-MM-dd hh:mm:ss" /></span></td>
			<td>更改人：<span style="color:#65cea7"><s:property value="order.uperson" /></span></td>
			</tr>
			<tr>
				<td>描述：<span style="color:#65cea7"><s:property value="order.description" /></span></td>
				
			</tr>
</table>