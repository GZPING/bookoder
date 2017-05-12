<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div class="modal-dialog" style="width:800px;">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">&times;</button>
			<h4 class="modal-title">选择课程</h4>
		</div>
		<div class="modal-body">
			<input class=" form-control" id="selectCourseName" onkeyup="searchOneCourse();" />
		<div class="panel-body">
			<div
				style="overflow-x: auto; overflow-y: auto; height: 300px; width: 100%;">
				<table class=" table table-striped"
					id="dynamic-table" style="width=''100%' ">
					<thead>
						<tr>
							<th>课号</th>
							<th>课程名</th>
							<th>学院</th>
							<th>班级</th>
							<th>教师</th>
							<th>教材</th>
							<th>单价</th>
						</tr>
					</thead>
					<tbody>
						<s:iterator value="courseList">
							<tr>
								<td><s:property value="id" /></td>
								<td><s:property value="name" /></td>
								<td><s:property value="academy" /></td>
								<td><s:property value="classId" /></td>
								<td><s:property value="teacherName" /></td>
								<td><s:property value="bookName" /></td>
								<td><s:property value="bookPrice" /></td>
								<td><a class="btn btn-sm btn-info" onclick="comformCourse(<s:property value="id" />,'<s:property value="name" />' ,<s:property value="bookId" />,<s:property value="bookPrice" />,'<s:property value="bookName" />');">选择</a></td>
						</s:iterator>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
</div>