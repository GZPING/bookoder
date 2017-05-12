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

<title>用户信息</title>

<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
<style>
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
					个人信息
					</header>
					<div class="panel-body">
						<div class="form">
							<form class="cmxform form-horizontal adminex-form"
								method="post" action=""  id="userInfoForm">
								<div class="form-group ">
									<label class="control-label col-lg-2">工号：
									</label>
									<div class="col-lg-9">
										 <span id="userId" ><s:property value="user.id"/></span> 
									</div>
								</div>
								<div class="form-group ">
									<label class="control-label col-lg-2">姓名：<a href="javascript:;" class="fa fa-edit" onclick="editUserInfo('name');"> </a>
									</label>
									<div class="col-lg-10">
										<span id="name"><s:property value="user.name"/></span>
									</div>
								</div>
								<div class="form-group ">
									<label class="control-label col-lg-2"> 性别：<a href="javascript:;" class="fa fa-edit" onclick="editUserInfo('sex');"> </a>
									</label>
									<div class="col-lg-10">
										<span id="sex"><s:property value="user.sex"/></span>
									</div>
								</div>
								<div class="form-group ">
									<label  class="control-label col-lg-2">电话：<a href="javascript:;" class="fa fa-edit" onclick="editUserInfo('phone');"> </a>
									</label>
									<div class="col-lg-10">
										<span id="phone"><s:property value="user.phone"/></span>
									</div>
								</div>
								<div class="form-group ">
									<label class="control-label col-lg-2">邮箱：<a href="javascript:;" class="fa fa-edit" onclick="editUserInfo('mail');"> </a>
									</label>
									<div class="col-lg-10">
										<span id="mail"><s:property value="user.mail"/></span>
									</div>
								</div>
								<div class="form-group ">
									<label class="control-label col-lg-2">描述：<a href="javascript:;" class="fa fa-edit" onclick="editUserInfo('description');"> </a>
									</label>
									<div class="col-lg-10">
										<span id="description"><s:property value="user.description"/></span>
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
 </section>
	<!-- Placed js at the end of the document so the pages load faster -->
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
	<script src="js/jquery-migrate-1.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/modernizr.min.js"></script>
	<script src="js/jquery.nicescroll.js"></script>

	<script type="text/javascript" src="js/jquery.validate.min.js"></script>
	<script src="js/user/user-validation.js"></script>
	<script src="js/scripts.js"></script>

	<script src="js/user/userManager.js"></script>
	<script src="js/aca/academy.js"></script>

</body>
</html>
