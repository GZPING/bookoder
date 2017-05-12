<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

选择班级
 <li class="divider"></li>

<ul>
	<s:iterator value="classList">
		<li><a href="javascript:;"
			onclick="comformClass(<s:property value="id" />)">
				<s:property value="id" />
		</a>
		<li>
	</s:iterator>
</ul>