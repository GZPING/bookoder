<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   	String path= request.getContextPath();
    String basePath =request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %> 
   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <base href="<%=basePath%>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <title>注册</title>

    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">

</head>

<body class="login-body">

<div class="container">
<input type="hidden"  id="path" value="<%=path%>">
	<section>
		<div class="wrapper">
			<div class="row">
				<div class="col-lg-12">
					<section class="panel" style="background-color: rgba(200, 200, 200, 0.5);">
							<header class="panel-heading">
								<div class="form-signin-heading text-center">
									<h1 class="sign-title">注册</h1>
									<img src="images/login-logo.png" alt="" />
								</div>
							</header>
							<div class="panel-body">
						<div class="form">
							<form class="cmxform form-horizontal adminex-form "
								id="userInfoForm" method="get" action="">
								<input type="hidden" name="user.academyId" id="academyId">
								<div class="form-group ">
									<label for="uid" class="control-label col-lg-2">工号<span
										style="color: red">*</span></label>
									<div class="col-lg-10">
										<input class=" form-control" id="uid" name="user.id"
											type="text" />
									</div>
								</div>
								<div class="form-group ">
									<label for="password" class="control-label col-lg-2">姓名<span
										style="color: red">*</span></label>
									<div class="col-lg-10">
										<input class=" form-control" id="name" name="user.name"
											type="text" />
									</div>
								</div>
								<div class="form-group ">
									<label for="sex" class="control-label col-lg-2">性别<span
										style="color: red">*</span></label>
									<div class="col-lg-10">
										<select class=" form-control" id="sex" name="user.sex">
											<option value="男" selected="selected">男</option>
											<option value="女">女</option>
										</select>
									</div>
								</div>
								<div class="form-group ">
									<label for="email" class="control-label col-lg-2">邮箱</label>
									<div class="col-lg-10">
										<input class="form-control " id="email" name="user.mail"
											type="email" />
									</div>
								</div>
								<div class="form-group ">
									<label for="phone" class="control-label col-lg-2">电话</label>
									<div class="col-lg-10">
										<input class="form-control " id="phone" name="user.phone" />
									</div>
								</div>
								<div class="form-group ">
									<label for="password" class="control-label col-lg-2">密码<span
										style="color: red">*</span></label>
									<div class="col-lg-10">
										<input class="form-control valid" id="password"
											name="password" type="password" />
									</div>
								</div>
									<div class="form-group ">
									<label for="confirm_password" class="control-label col-lg-2">确认密码<span style="color:red">*</span></label>
									<div class="col-lg-10">
										 <input class="form-control " id="confirm_password" name="user.password" type="password" />
									</div>
								</div> 
								<div class="form-group ">
									<label for="lastname" class="control-label col-lg-2">选择学院
										<span style="color: red">*</span>
									</label>
									<div class="col-lg-10">
										<a href="#" class="dropdown-toggle " data-toggle="dropdown"
											onclick="selectAcademy()" style="color: black;"> <b id="academy" >学院</b> <b
											class="caret"></b>
										</a>
										<section class="dropdown-menu selectForm" id="academyMenu"></section>
									</div>
								</div>
								<div class="form-group ">
									<label for="admin" class="control-label col-lg-2">权限<span
										style="color: red">*</span></label>
									<div class="col-lg-10">
										<select class=" form-control" id="admin" name="user.admin">
											<!-- <option value="100">供应商</option> -->
											<option value="101">校级管理员</option>
											<option value="102">院级管理员</option>
											<option value="103">教师</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<div class="col-lg-offset-2 col-lg-10">

											 	<button type="submit"  class="btn btn-info col-lg-3 "  ><i class="fa fa-check"></i>提交</button> 
									</div>
								</div>
							</form>
						</div>
					</div>
					</section>
				</div>
			</div>
		</div>
		</section>
	
</div>

<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/modernizr.min.js"></script>

	<script type="text/javascript" src="js/jquery.validate.min.js"></script>
	<script src="js/user/user-validation.js"></script>
	<script src="js/aca/academy.js"></script>
	<script src="js/user/userManager.js"></script>

</body>
</html>
