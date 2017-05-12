<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<link rel="shortcut icon" href="#" type="image/png">

<title>登录</title>

<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">

</head>

<body class="login-body">
	<input type="hidden" id="path" value="<%=path%>">
	<div class="container ">
		<form class="form-signin " method="post" id="loginForm">
			<div class="form-signin-heading text-center">
				<h1 class="sign-title">登录</h1>
				<img src="images/login-logo.png" alt="" />
			</div>
			<div class="login-wrap">
				<div class="form-group">
					<span id="information" style="color: red"></span>
				</div>
				<div class="form-group">
					<input type="text" id="uid" name="user.id" class="form-control"
						placeholder="工号" onkeyup="this.value=this.value.replace(/[^\d]/g,'') "  autofocus >
				</div>
				<div class="form-group" id="passwordDiv">
					<input type="password" id="password" name="user.password"
						class="form-control" placeholder="密码">
				</div>
				<button type="button" class="btn btn-lg btn-login btn-block fa fa-check'"
					onclick="login()" >登录</button>

			</div>
		</form>
	</div>
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/modernizr.min.js"></script>

	<script type="text/javascript" src="js/user/login.js"></script>

</body>
</html>
