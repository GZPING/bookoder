<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<ul class="goal-progress">
<s:iterator value="bookList">
	<li>
		<div class="prog-avatar">
				<img src="images/book/<s:property value="image"  />">
			</div>
			<div class="details">
			<div class="title">
				<a ><s:property value="name"/></a> 
			</div>
			<div class="">
				<p>ID：<s:property value="id"/></p>
				<p>出版社：<s:property value="pub"/></p>
				</div>
			</div>
	</li>
	</s:iterator>
</ul>
<div class="text-center">
	<a href="book/bookIndex">View all </a>
</div>