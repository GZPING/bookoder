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

<title>学校管理</title>

<!--data table-->
<link href="js/advanced-datatable/css/demo_page.css" rel="stylesheet" />
<link href="js/advanced-datatable/css/demo_table.css" rel="stylesheet" />
<link rel="stylesheet" href="js/data-tables/DT_bootstrap.css" />

<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
</head>

<body class="sticky-header">
	<input id="path" type="hidden" value="<%=path%>">
	<section> <%@include file="/pages/left.jsp"%>
	<!-- main content start-->
	<div class="main-content">

		<%@include file="/pages/topMenu.jsp"%>

		<!--body wrapper start-->
		<div class="wrapper">
			<div class="row">
				<div class="col-sm-12">
					<section class="panel"> <header class="panel-heading">
					学院管理 <span class="pull-right"> <a class="btn btn-success"  data-toggle="modal" href="#addAca">添加学院</a></span> </header>
					<div class="panel-body">
						<div class="adv-table">
							<table class="display table table-bordered "
								id="hidden-table-info">
								<thead>
									<tr>
										<th>学院号</th>
										<th>学院名</th>
										<s:if test="#session.userInfo.admin==103"></s:if><s:else>
										<th>操作</th>
										</s:else>
									</tr>
								</thead>
								<tbody>
									<s:iterator value="academyList">
										<tr>
											<td><s:property value="id" /></td>
											<td><s:property value="name" /></td>
											<s:if test="#session.userInfo.admin==103"></s:if><s:else>
											<td><a href="javascript:;">修改</a> &nbsp; &nbsp; <a
												href="javascript:;"
												onclick="deleteAca(<s:property value="id" />)">删除</a></td>
												</s:else>
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


		<!--footer section start-->
		<footer> 2017 &copy; GOBOOK<a href="http://www.zhiping.me/"
			target="_blank"> &nbsp;ZPING</a> </footer>
		<!--footer section end-->


	</div>
	
	<form id="acaForm">
	<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog"
		tabindex="-1" id="addAca" class="modal fade">
		<div class="modal-dialog" style="width: 800px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">添加学院</h4>
				</div>
				<div class="modal-body">
					<div class="panel-body">
						<div class="form-group ">
							<label for="id" class="control-label col-lg-2">学院号 <span
								style="color: red">*</span></label>
							<div class="col-lg-10">
								<input class=" form-control" id="id" name="aca.id" type="text" />
							</div>
						</div>
						<div class="form-group " style="padding-top: 40px">
							<label for="id" class="control-label col-lg-2">学院名 <span
								style="color: red">*</span></label>
							<div class="col-lg-10">
								<input class=" form-control" id="name" name="aca.name" type="text" />
							</div>
						</div>
					</div>
				</div>
				    <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-default" type="button">取消</button>
                        <button class="btn btn-primary" type="submit">添加</button>
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

	<script type="text/javascript"
		src="js/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>

	<script src="js/scripts.js"></script>
	<script type="text/javascript" src="js/jquery.validate.min.js"></script>
	<script src="js/aca/aca_validation.js"></script>

	<script src="js/course/infoMajor.js"></script>
	<script src="js/aca/acaManager.js"></script>
	
	<script type="text/javascript">
		$(function(){
			$("#aca").addClass("nav-active");
			 $("#academyIndex").addClass("active");
		})
	</script>
</body>
</html>
