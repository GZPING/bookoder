<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<table cellpadding="5" cellspacing="0" border="0"
	style="padding-left: 50px;" width="95%">
	<tr>
		<td>课号: <s:property value="course.id" /></td>
		<td>课程名: <s:property value="course.name" /></td>
	</tr>
	<tr>
		<td>教师：<s:property value="course.teacherName" /></td>
		<td>教材：<s:property value="course.bookName" /></td>
	</tr>
	<tr>
		<td>更新人:<s:property value="course.uperson" /></td>
		<td>更新时间:<s:property value="course.udate" /></td>
	</tr>
		<tr>
		<td>描述:<s:property value="course.description" /></td>
	</tr>
</table>
