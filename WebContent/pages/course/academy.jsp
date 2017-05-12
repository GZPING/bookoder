<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">&times;</button>
			<h4 class="modal-title">选择学院</h4>
		</div>
		<div class="modal-body" id="mainBoyd">
			<input type="text" id="search" name="search" placeholder="搜索"
				autocomplete="off" class="form-control placeholder-no-fix"
				onkeyup=" searchAcademy() ;"><br>
			<table class="academy display table table-bordered table-striped "
				id="academy">
				<thead>
					<tr>
						<th>学院号</th>
						<th>学院名</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="academyList">
						<tr ondblclick="comformAca('<s:property value="name" />')">
							<td><s:property value="id" /></td>
							<td><s:property value="name" /></td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</div>
</div>
</html>