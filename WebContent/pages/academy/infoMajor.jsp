<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<table cellpadding="5" cellspacing="0" border="0"
	style="padding-left: 50px;" width="95%">
	<thead>
		<tr>
			<th>专业号</th>
			<th>专业名</th>
			<s:if test="#session.userInfo.admin==101"><th>操作</th></s:if><s:else>
			</s:else>
		</tr>
	</thead>
	<tbody>
		<s:iterator value="majorList">
			<tr>
				<td><s:property value="id" /></td>
				<td><s:property value="name" /></td>
				<s:if test="#session.userInfo.admin==101"><td>	<!-- <a href="javascript:;">修改</a> &nbsp; &nbsp; --> <a
				href="javascript:;" onclick="deleteMajor(<s:property value="id" />)">删除</a>
				</td></s:if><s:else>
				</s:else>
			</tr>
		</s:iterator>
	</tbody>
</table>
