<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<table cellpadding="5" cellspacing="0" border="0"
	style="padding-left: 50px;" width="95%">
	<thead>
		<tr>
			<th>操作</th>
			<th>书名(作者)</th>
			<th>仓库位置</th>
			<th>单价</th>
			<th>数量</th>
			<th>总价格</th>
			<th>操作日期</th>
			<th>操作人员</th>
		</tr>
	</thead>
	<tbody>
	<s:if test="storeIOList.size()==0">
		<td><span style="color: red">无操作记录</span></td>
	</s:if>
		<s:iterator value="storeIOList">
			<tr>
				<td><s:if test="status==1">
											入库</s:if> <s:elseif test="status==2">出库</s:elseif></td>
				<td><s:property value="bookName" />(<s:property value="auth" />)</td>
				<td><s:property value="place" /></td>
				<td><s:property value="price" /></td>
				<td><s:property value="number" /></td>
				<td><s:property value="totalPrice" /></td>
				<td><s:date name="date" format="yyyy-MM-dd hh:mm:ss" /></td>
				<td><s:property value="person" /></td>
			</tr>
		</s:iterator>
	</tbody>
</table>

