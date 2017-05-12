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

<title>修改课程信息</title>

<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
<link href="css/jquery.autocomplete.css" rel="stylesheet">
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
					修改教学课程</header>
					<div class="panel-body">
						<div class="form">
							<form class="cmxform form-horizontal adminex-form"
								id="courseInfoForm" method="post" action="">
								<input type="hidden" name="course.majorId" id="majorId"
									value='<s:property value="course.majorId"/>'> <input
									type="hidden" name="course.academyId" id="academyId"
									value='<s:property value="course.academyId"/>'> <input
									type="hidden" name="course.classId" id="classId"
									value='<s:property value="course.classId"/>'> <input
									type="hidden" name="course.teacherId" id="teacherId"
									value='<s:property value="course.teacherId"/>'> <input
									type="hidden" name="course.bookId" id="bookId"
									value='<s:property value="course.bookId"/>'>
								<div class="form-group ">
									<label for="firstname" class="control-label col-lg-2">课号
										<span style="color: red">*</span>
									</label>
									<div class="col-lg-10">
										<input class=" form-control" id="id" name="course.id"
											type="text" /value='<s:property value="course.id"/>'>
									</div>
								</div>
								<div class="form-group ">
									<label for="lastname" class="control-label col-lg-2">课程名
										<span style="color: red">*</span>
									</label>
									<div class="col-lg-10">
										<input class=" form-control" id="name" name="course.name"
											type="text" value='<s:property value="course.name"/>' />
									</div>
								</div>

								<div class="form-group ">
									<label for="lastname" class="control-label col-lg-2">选择班级
										<span style="color: red">*</span>
									</label>
									<div class="col-lg-10">
										<a href="#" class="dropdown-toggle " data-toggle="dropdown"
											onclick="selectAcademy()"> <b id="academy"> <s:if
													test="course.academy!=null">
													<s:property value="course.academy" />
												</s:if> <s:else>学院</s:else>
										</b> <b class="caret"></b>
										</a> <a href="#" class="dropdown-toggle " data-toggle="dropdown"
											onclick="selectMajorByAcaId($('#academyId').val())"> <b
											id="major"><s:if test="course.classId!=null">
													<s:property value="course.majorName" />
												</s:if> <s:else>专业</s:else> </b> <b class="caret"></b>
										</a> <a href="#" class="dropdown-toggle " data-toggle="dropdown"
											onclick="selectClassByMajId($('#majorId').val())"> <b
											id="className"><s:if test="course.classId!=null">
													<s:property value="course.classId" />班
												</s:if> <s:else>班级</s:else></b> <b class="caret"></b>
										</a> <span id="classInfo"></span>
										<section class="dropdown-menu selectForm" id="academyMenu"></section>
									</div>
								</div>
								<div class="form-group ">
									<label for="lastname" class="control-label col-lg-2">选择教师
										<span style="color: red">*</span>
									</label>
									<div class="col-lg-10">
										<input class=" form-control" id="teacherName"
											name="course.teacherName" onfocus="selectTeacher();" value='<s:property value="course.teacherName"/>'/>
									</div>
								</div>
								<div class="form-group ">
									<label for="email" class="control-label col-lg-2">教材 <span
										style="color: red">*</span></label>
									<div class="col-lg-10">
										<input class=" form-control" id="bookName"
											name="course.bookName" onfocus="selectBook();" value='<s:property value="course.bookName"/>'/>
									</div>
								</div>
								<div class="form-group ">
									<label for="email" class="control-label col-lg-2">描述</label>
									<div class="col-lg-10">
										<textarea rows="3" class="form-control " id="description"
											name="course.description"
											value="<s:property value="course.description" /> "></textarea>
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
	<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog"
		tabindex="-1" id="bookModal" class="modal fade"></div>
	<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog"
		tabindex="-1" id="userModal" class="modal fade"></div>
	</section>
	<!-- Placed js at the end of the document so the pages load faster -->
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
	<script src="js/jquery-migrate-1.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/modernizr.min.js"></script>
	<script src="js/jquery.nicescroll.js"></script>

	<script type="text/javascript" src="js/jquery.validate.min.js"></script>
	<script src="js/course/edit_course_validation.js"></script>
	<script src="js/scripts.js"></script>


	<script src="js/course/courseManager.js"></script>
	<script src="js/aca/academy.js"></script>
	<script src="js/book/book.js"></script>
	<script src="js/user/user.js"></script>

</body>
</html>
