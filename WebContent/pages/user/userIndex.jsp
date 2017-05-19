<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ThemeBucket">
<link rel="shortcut icon" href="#" type="image/png">

<title>用户管理</title>

<!--data table-->
<link href="js/advanced-datatable/css/demo_page.css" rel="stylesheet" />
<link href="js/advanced-datatable/css/demo_table.css" rel="stylesheet" />
<link rel="stylesheet" href="js/data-tables/DT_bootstrap.css" />

<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
</head>

<body class="sticky-header">
	<input type=”hidden“ id="path" value="<%=path%>" />
	<section> <%@include file="/pages/left.jsp"%>
	<!-- main content start-->
	<div class="main-content">

		<%@include file="/pages/topMenu.jsp"%>

		<!--body wrapper start-->
		<div class="wrapper">
			<div class="row">
				<div class="col-sm-12">
					<section class="panel"> <header class="panel-heading">
					用户表<span class="tools pull-right"> <button type="button"
						class="btn btn-success" onclick="method1('dynamic-table')">导出</button>
					</span> </header>
					<div class="panel-body">
						<div class="adv-table">
							<table class="display table table-bordered table-striped"
								id="dynamic-table">
								<thead>
									<tr>
										<th>工号</th>
										<th>姓名</th>
										<th>性别</th>
										<s:if test="#session.userInfo.admin==100"></s:if><s:else><th>学院</th></s:else>
										<th>权限</th>
										<th>电话</th>
										<th>邮箱</th>
										<th>描述</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<s:iterator value="userList">
										<tr>
											<td><s:property value="id" /></td>
											<td><s:property value="name" /></td>
											<td><s:property value="sex" /></td>
											<s:if test="#session.userInfo.admin==100"></s:if><s:else><td><s:property value="academyName" /></td></s:else>
											<td><a ><s:property
														value="adminName" /></a></td>
											<td><s:property value="phone" /></td>
											<td><s:property value="mail" /></td>
											<td><s:property value="description" /></td>
											<td><a
												href="<%=path%>/user/editUser?id=<s:property value="id" />">修改</a>&nbsp;
												&nbsp; 
												<s:if test="#session.userInfo.id==id"></s:if>
												<s:elseif test="#session.userInfo.admin>admin"></s:elseif><s:else>
												<a href="javascript:;"onclick="deleteUser(<s:property value="id" />);">删除</a></s:else></td>
										</tr>
									</s:iterator>
								</tbody>
							</table>
						</div>
					</div>
					</section>
				</div>
			</div>
		</div>
		<!--body wrapper end-->
	</div>
	<!-- main content end-->
	<form id="editAdminForm">
		<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog"
			tabindex="-1" id="editAdminDialog" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">修改权限</h4>
					</div>
					<div class="modal-body">
						<p>
							选择<span id="userName"></span>权限：
						</p>

						<input type=”hidden“ id="userId" /> <input id="id" type="text"
							class="form-control placeholder-no-fix"> <select
							id="adminId" class="form-control placeholder-no-fix">
							<option value="100">超级管理员</option>
							<option value="101">校级管理员</option>
							<option value="102">院级管理员</option>
							<option value="103">教师</option>
						</select>

					</div>
					<div class="modal-footer">
						<button data-dismiss="modal" class="btn btn-default" type="button">取消</button>
						<button class="btn btn-primary" type="button"
							onclick="editAdmin();">修改</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	</section>

	<!-- Placed js at the end of the document so the pages load faster -->
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
	<script src="js/jquery-migrate-1.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/modernizr.min.js"></script>
	<script src="js/jquery.nicescroll.js"></script>

	<!--data table-->
	<script type="text/javascript"
		src="js/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>
	<script src="js/user/userManager.js"></script>
	<!--common scripts for all pages-->
	<script src="js/scripts.js"></script>

	<!--script for editable table-->
	<script src="js/dynamic_table_init.js"></script>
	<script src="js/excelout.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#user").addClass("nav-active");
			$("#userIndex").addClass("active");
		})
	</script>

</body>
</html>
