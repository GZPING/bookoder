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

<title>修改密码</title>

<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
<script src="js/jquery-1.10.2.min.js"></script>
</head>

<body class="sticky-header">
<input type=”hidden“ id="path" value="<%=path%>" />
<section> 
	<%@include file="/pages/left.jsp"%>
	<!-- main content start-->
	<div class="main-content">
	
		<%@include file="/pages/topMenu.jsp"%>

		<!--body wrapper start-->
		<div class="wrapper">
		<div class="row">
				<div class="col-lg-12">
					<section class="panel"> <header class="panel-heading">
					修改密码</header>
					<div class="panel-body">
						<div class="form">
							<form class="cmxform form-horizontal adminex-form"
								id="editPwdForm" method="get" action="">
								<input type="hidden"  name="user.id" value="<s:property value="#session.userInfo.id"/>">
								<div class="form-group ">
									<label for="firstname" class="control-label col-lg-2">旧密码</label>
									<div class="col-lg-10">
										<input class=" form-control" id="oldPwd" name="oldPwd"
											type="password" />
											<span id="pwdInfo"></span>
									</div>
								</div>
								<div class="form-group ">
									<label for="password" class="control-label col-lg-2">新密码</label>
									<div class="col-lg-10">
										<input class="form-control " id="password" name="password"
											type="password" />
									</div>
								</div>
								<div class="form-group ">
									<label for="confirm_password" class="control-label col-lg-2">确认密码</label>
									<div class="col-lg-10">
										<input class="form-control " id="confirm_password"
											name="user.password" type="password" />
									</div>
								</div>
								<div class="form-group">
									<div class="col-lg-offset-2 col-lg-10">
										<button  type="submit" class="btn btn-primary"  >提交</button>
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
	<!-- main content end--> 
	 
	
</section>
	<!-- Placed js at the end of the document so the pages load faster -->
	<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
	<script src="js/jquery-migrate-1.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/modernizr.min.js"></script>
	<script src="js/jquery.nicescroll.js"></script>

	<script type="text/javascript" src="js/jquery.validate.min.js"></script>
	<script src="js/user/pwd-validation.js"></script>
	<script src="js/user/userManager.js"></script>
	<script src="js/scripts.js"></script>

</body>
</html>
