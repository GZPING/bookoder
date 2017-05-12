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

<title>添加班级</title>

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
					添加班级</header>
					<div class="panel-body">
						<div class="form">
							<form class="cmxform form-horizontal adminex-form"
								id="classInfoForm" method="post" action="">
								<input type="hidden" name="classModel.majorId" id="majorId">
								<input type="hidden" name="classModel.academyId" id="academyId">
								<div class="form-group ">
									<label for="id" class="control-label col-lg-2">班级号
										<span style="color: red">*</span>
									</label>
									<div class="col-lg-10">
										<input class=" form-control" id="id" name="classModel.id"
											type="text" />
									</div>
								</div>
								<div class="form-group ">
									<label for="academy" class="control-label col-lg-2">选择专业
										<span style="color: red">*</span>
									</label>
									<div class="col-lg-10">
										<a href="#" class="dropdown-toggle " data-toggle="dropdown"
											onclick="selectAcademy()"> <b id="academy">学院</b> <b
											class="caret"></b>
										</a> <a href="#" class="dropdown-toggle " data-toggle="dropdown"
											onclick="selectMajorByAcaId($('#academyId').val())"> <b
											id="major">专业 </b> <b class="caret"></b>
										</a>
										<label for="academy" id="academyInfo"></label>
										<section class="dropdown-menu selectForm" id="academyMenu"></section>
									</div>
								</div>
								<div class="form-group ">
									<label for="grade" class="control-label col-lg-2">年级 <span
										style="color: red">*</span></label>
									<div class="col-lg-10">
										<input class="form-control " id="grade"
											name="classModel.grade" />

									</div>
								</div>
								<div class="form-group ">
									<label for="number" class="control-label col-lg-2">人数 <span
										style="color: red">*</span></label>
									<div class="col-lg-10">
										<input class="form-control " id="number"
											name="classModel.number"/>
									</div>
								</div>
								<div class="form-group">
									<div class="col-lg-offset-2 col-lg-10">
										<button type="submit" class="btn btn-primary" >提交</button>
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
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
	<script src="js/jquery-migrate-1.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/modernizr.min.js"></script>
	<script src="js/jquery.nicescroll.js"></script>

	<script type="text/javascript" src="js/jquery.validate.min.js"></script>
	<script src="js/aca/class_validation.js"></script>
	<script src="js/scripts.js"></script>

	<script src="js/aca/acaManager.js"></script>
	<script src="js/aca/academy.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#aca").addClass("nav-active");
			$("#addClass").addClass("active");
		})
	</script>

</body>
</html>
