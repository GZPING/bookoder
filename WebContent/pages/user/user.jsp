<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div class="modal-dialog" style="width:800px;" >
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">&times;</button>
			<h4 class="modal-title">选择教师</h4>
		</div>
		<div class="modal-body">
			<input class=" form-control" id="selectUserName" onkeyup="searchDialogUser();" />
		<div class="panel-body">
			<div
				style="overflow-x: auto; overflow-y: auto; height: 300px; width: 100%;">
				<table class=" table table-striped"
					id="dynamic-table" style="width=''100%' ">
					<thead>
						<tr>
							<th>工号</th>
							<th>姓名</th>
							<th>性别</th>
							<th>学院</th>
							<th>电话</th>
							<th>邮箱</th>
						</tr>
					</thead>
					<tbody>
						<s:iterator value="userList">
							<tr>
								<td><s:property value="id" /></td>
								<td><s:property value="name" /></td>
								<td><s:property value="sex" /></td>
								<td><s:property value="academyName" /></td>
								<td><s:property value="phone" /></td>
								<td><s:property value="mail" /></td>
								<td><a class="btn btn-sm btn-info" onclick="comformUser(<s:property value="id" />,'<s:property value="name" />');">选择</a></td>
						</s:iterator>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
</div>