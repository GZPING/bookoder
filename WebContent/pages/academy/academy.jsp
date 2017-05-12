<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

选择学院
 <li class="divider"></li>

<ul>
	<s:iterator value="academyList">
		<li><a href="javascript:;"
			onclick="comformAca('<s:property value="name" />',<s:property value="id" />)">
				<s:property value="name" />
		</a>
		<li>
	</s:iterator>
</ul>