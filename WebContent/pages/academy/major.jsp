<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

选择专业
 <li class="divider"></li>

<ul>
	<s:iterator value="majorList">
		<li><a href="javascript:;"
			onclick="comformMajor('<s:property value="name" />',<s:property value="id" />)">
				<s:property value="name" />
		</a>
		<li>
	</s:iterator>
</ul>