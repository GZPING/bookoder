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
								<div class="form-group ">
									<label for="firstname" class="control-label col-lg-2">工号</label>
									<div class="col-lg-10">
										<input class=" form-control" id="number" name="user.id"
											type="text" value="<s:property value="id" />"  readonly="readonly" />
									</div>
								</div>
								<div class="form-group ">
									<label for="lastname" class="control-label col-lg-2">用户名</label>
									<div class="col-lg-10">
										<input class=" form-control" id="userName" name="user.name"
											type="text" value="<s:property value="user.name" />" />
									</div>
								</div>

								<div class="form-group ">
									<label for="lastname" class="control-label col-lg-2">性别</label>
									<div class="col-lg-10">
										<select class=" form-control" id="userName" name="user.sex" >
										<s:if test=" user.sex==\"男\"">
											<option value="男" selected="selected">男</option>
											<option value="女">女</option>
										</s:if><s:else>
										<option value="男" >男</option>
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
											type="email"  value="<s:property value="user.mail" />" />
									</div>
								</div>
								<div class="form-group ">
									<label for="email" class="control-label col-lg-2">描述</label>
									<div class="col-lg-10">
										<input class="form-control " id="description"
											name="user.description"
											value="<s:property value="user.description" />" />
									</div>
								</div>
								<div class="form-group ">
									<label for="academy" class="control-label col-lg-2">学院</label>
									<div class="col-lg-10">
										<input class="form-control " id="academy" name="user.academyName"
											type="text" value="<s:property value="user.academyName" />"  onfocus="selectAcademy();"/>
									</div>
								</div>
								<div class="form-group ">
									<label for="admin" class="control-label col-lg-2">权限</label>
									<div class="col-lg-10">
									<select name="user.admin"   class="form-control " >
									<s:if test="user.admin==101">
										<option value="101" selected = "selected">校级管理员</option>
										<option value="102">院级管理员</option>
										<option value="103">教师</option>
										</s:if>
										<s:elseif test="user.admin==102">
										<option value="101">校级管理员</option>
										<option value="102" selected = "selected">院级管理员</option>
										<option value="103">教师</option>
										</s:elseif>
										<s:elseif test="user.admin==103">
										<option value="101">校级管理员</option>
										<option value="102">院级管理员</option>
										<option value="103" selected = "selected">教师</option>
										</s:elseif>
									</select>
									</div>
								</div>

								<div class="form-group">
									<div class="col-lg-offset-2 col-lg-10">
										<input type="button" class="btn btn-primary"  value="提交" onclick="updateUser();" />
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
        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal"
             class="modal fade">
        </div>
        <!-- modal -->
	<!-- main content end--> 
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
	
	<script type="text/javascript">
	function updateUser(){
		var path = $("#path").val();
		var param=$("#userInfoForm").serialize();
		var url=path + "/json/updateUser";
		$.ajax({
			type : 'post',
			url : url,
			dataType : 'json',
			data : param,// 序列化表单值  
			async : false,
			error : function(request) {
				alert("修改失败");
			},
			success : function(data) {
				alert(data);
				if (data== "success") {
					location.reload();
				}else{
					alert("修改失败");
				}
			}
		});
	};
	</script>

</body>
</html>
