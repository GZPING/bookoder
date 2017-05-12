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
<link rel="shortcut icon" href="#" type="image/png">

<title>修改用户</title>

<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
<style type="text/css">
.selectForm ul {
	width: 500px;
	list-style: none;
}

.selectForm ul li {
	width: 110px;
	float: left;
	margin-right: 5px;
	line-height: 30px;
}

.selectForm ul li a {
	margin-left: 15px;
}
</style>
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
				<div class="col-lg-12">
					<section class="panel"> <header class="panel-heading">
					修改用户</header>
					<div class="panel-body">
						<div class="form">
							<form class="cmxform form-horizontal adminex-form"
								id="userInfoForm" method="post" action="">
								<input type="hidden" id="academyId" name="user.academyId"
									id="academyId" value="<s:property value="user.academyId" />">
								<div class="form-group ">
									<label for="firstname" class="control-label col-lg-2">工号</label>
									<div class="col-lg-10">
										<input class=" form-control" id="id" name="user.id"
											type="text" value="<s:property value="id" />"
											readonly="readonly" />
									</div>
								</div>
								<div class="form-group ">
									<label for="lastname" class="control-label col-lg-2">用户名<span
										style="color: red">*</span></label>
									<div class="col-lg-10">
										<input class=" form-control" id="userName" name="user.name"
											type="text" value="<s:property value="user.name" />" />
									</div>
								</div>

								<div class="form-group ">
									<label for="lastname" class="control-label col-lg-2">性别<span
										style="color: red">*</span></label>
									<div class="col-lg-10">
										<select class=" form-control" id="userName" name="user.sex">
											<s:if test=" user.sex==\"男\"">
												<option value="男" selected="selected">男</option>
												<option value="女">女</option>
											</s:if>
											<s:else>
												<option value="男">男</option>
												<option value="女" selected="selected">女</option>
											</s:else>
										</select>
									</div>
								</div>
								<div class="form-group ">
									<label for="lastname" class="control-label col-lg-2">电话</label>
									<div class="col-lg-10">
										<input class=" form-control" id="userName" name="user.phone"
											type="text" value="<s:property value="user.phone" />" />
									</div>
								</div>
								<div class="form-group ">
									<label for="email" class="control-label col-lg-2">邮箱</label>
									<div class="col-lg-10">
										<input class="form-control " id="email" name="user.mail"
											type="email" value="<s:property value="user.mail" />" />
									</div>
								</div>
								<div class="form-group ">
									<label for="admin" class="control-label col-lg-2">权限<span
										style="color: red">*</span></label>
									<div class="col-lg-10">
										<select name="user.admin" class="form-control ">
											<s:if test="user.admin==101">
												<option value="101" selected="selected">校级管理员</option>
												<option value="102">院级管理员</option>
												<option value="103">教师</option>
											</s:if>
											<s:elseif test="user.admin==102">
												<option value="101">校级管理员</option>
												<option value="102" selected="selected">院级管理员</option>
												<option value="103">教师</option>
											</s:elseif>
											<s:elseif test="user.admin==103">
												<option value="101">校级管理员</option>
												<option value="102">院级管理员</option>
												<option value="103" selected="selected">教师</option>
											</s:elseif>
										</select>
									</div>
								</div>
								<div class="form-group ">
									<label for="lastname" class="control-label col-lg-2">选择学院
										<span style="color: red">*</span>
									</label>
									<div class="col-lg-10">
										<a id="academy" href="#" class="dropdown-toggle "
											data-toggle="dropdown" onclick="selectAcademy()"> <b
											id="academy"><s:if test="user.academyName!=null">
													<s:property value="user.academyName" />
												</s:if>
												<s:else>学院</s:else></b><b class="caret"></b>
										</a> <label for="academy" id="academyInfo"></label>
										<section class="dropdown-menu selectForm" id="academyMenu"></section>
									</div>
								</div>
								<div class="form-group ">
									<label for="email" class="control-label col-lg-2">描述</label>
									<div class="col-lg-10">
										<textarea rows="3" class="form-control " id="description"
											name="user.description"><s:property
												value="user.description" /></textarea>
									</div>
								</div>
								<div class="form-group">
									<div class="col-lg-offset-2 col-lg-10">
										<button type="submit" class="btn btn-primary">提交</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					</section>
				</div>
			</div>
		</div>
		<!--body wrapper end-->

		<!--footer section start-->
		<footer> 2017 &copy; GOBOOK<a href="http://www.zhiping.me/"
			target="_blank"> &nbsp;ZPING</a> </footer>
		<!--footer section end-->
	</div>
	<!-- Modal -->
	<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog"
		tabindex="-1" id="acaModal" class="modal fade"></div>
	<!-- modal --> <!-- main content end--> </section>
	<!-- Placed js at the end of the document so the pages load faster -->
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
	<script src="js/jquery-migrate-1.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/modernizr.min.js"></script>
	<script src="js/jquery.nicescroll.js"></script>

	<script type="text/javascript" src="js/jquery.validate.min.js"></script>
	<script src="js/user/edit_user_validation.js"></script>
	<script src="js/scripts.js"></script>

	<script src="js/user/userManager.js"></script>
	<script src="js/aca/academy.js"></script>

	<script type="text/javascript">
		$(function() {
			$("#user").addClass("nav-active");
			$("#editUser").addClass("active");
		})
	</script>
</body>
</html>
