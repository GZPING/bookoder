<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<ul class="goal-progress">
	<li>
		<div style="float: left;">
			<span style="padding-left: 10px; width:30px">ID</span> <span
				style="margin-left: 60px">提单人</span> <span
				style="margin-left: 40px">时间</span> <span
				style="margin-left: 130px">总数量</span> <span
				style="margin-left: 30px;">总价格</span> <span
				style="margin-left: 50px">状态</span>
		</div>
	</li>
<s:iterator value="cartList">
	<li>
		<div style="float: left;">
			<span style="padding-left: 10px;"><a target="_blank"  href="order/cartInfo?id=<s:property value="id" />"><s:property value="id"/></a></span> <span
				style="margin-left: 30px"><s:property value="person"/></span> <span
				style="margin-left: 30px"><s:date name="date" format="yyyy-MM-dd hh:mm:ss" /></span> <span
				style="margin-left: 30px;"><s:property value="totalNum"/></span> <span
				style="margin-left: 60px;"><s:property value="price"/></span> <span
				style="margin-left: 50px"><s:if test="status==1"><span >已确认</span></s:if><s:else><span style="color:red">未确认</span></s:else></span>
		</div>
	</li>
	</s:iterator>
</ul>