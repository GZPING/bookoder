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
					修改教学课程</header>
					<div class="panel-body">
						<div class="form">
							<form class="cmxform form-horizontal adminex-form"
								id="userInfoForm" method="post" action="">
								<div class="form-group ">
									<label for="firstname" class="control-label col-lg-2">课号</label>
									<div class="col-lg-10">
										<input class=" form-control" id="id" name="course.id"
											type="text"   />
									</div>
								</div>
								<div class="form-group ">
									<label for="lastname" class="control-label col-lg-2">课程名</label>
									<div class="col-lg-10">
										<input class=" form-control" id="name" name="course.name"
											type="text" />
									</div>
								</div>

								<div class="form-group ">
									<label for="lastname" class="control-label col-lg-2">学院</label>
									<div class="col-lg-10">
										<input class="form-control " id="academy" name="course.academyName"
											type="text"  onfocus="selectAcademy();"/>
									</div>
								</div>
								<div class="form-group ">
									<label for="lastname" class="control-label col-lg-2">班级</label>
									<div class="col-lg-10">
										<input class=" form-control" id="className" name="course.className"
											type="text" />
									</div>
								</div>
								<div class="form-group ">
									<label for="email" class="control-label col-lg-2">教材</label>
									<div class="col-lg-10">
										<input class="form-control " id="book" name="course.bookName"
											type="email"  />
									</div>
								</div>
								<div class="form-group ">
									<label for="email" class="control-label col-lg-2">描述</label>
									<div class="col-lg-10">
										<input class="form-control " id="description"
											name="user.description"
											value="<s:property value="course.description" />" />
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
	
	<script src="js/course/courseManager.js"></script>
	<script src="js/course/academy.js"></script>
	
	<script type="text/javascript">
	function updateUser(){
		var path = $("#path").val();
		var param=$("#courseInfoForm").serialize();
		var url=path + "/json/updateCourse";
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
