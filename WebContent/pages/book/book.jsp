<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div class="modal-dialog" style="width:800px;">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">&times;</button>
			<h4 class="modal-title">选择书籍</h4>
		</div>
		<div class="modal-body">
			<input class=" form-control" id="selectbookName" onkeyup="search();" />
		<div class="panel-body">
			<div
				style="overflow-x: auto; overflow-y: auto; height: 300px; width: 100%;">
				<table class=" table table-striped"
					id="dynamic-table" style="width=''100%' ">
					<thead>
						<tr>
							<th>书号</th>
							<th>书名</th>
							<th>作者</th>
							<th>出版社</th>
							<th>单价</th>
						</tr>
					</thead>
					<tbody>
						<s:iterator value="bookList">
							<tr>
								<td><s:property value="id" /></td>
								<td><s:property value="name" /></td>
								<td><s:property value="auth" /></td>
								<td><s:property value="pub" /></td>
								<td><s:property value="price" /></td>
								<td><a class="btn btn-sm btn-info" onclick="comformBook(<s:property value="id" />,'<s:property value="name" />');">选择</a></td>
						</s:iterator>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
</div>