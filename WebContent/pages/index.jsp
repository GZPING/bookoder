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
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<title>教材征订系统</title>

<!-- <link href="js/iCheck/skins/minimal/minimal.css" rel="stylesheet">
<link href="js/iCheck/skins/square/square.css" rel="stylesheet">
<link href="js/iCheck/skins/square/red.css" rel="stylesheet">
<link href="js/iCheck/skins/square/blue.css" rel="stylesheet">
<link rel="stylesheet" href="js/morris-chart/morris.css"> -->

<link href="css/clndr.css" rel="stylesheet">

<!--common-->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">

</head>

<body class="sticky-header">

	<input type="hidden" id="path" value="<%=path%>">
	<section>
		<%@include file="/pages/left.jsp"%>
		<!-- left side end-->

		<!-- main content start-->
		<div class="main-content">
			<%@include file="/pages/topMenu.jsp"%>

			<!-- page heading start-->
			<div class="page-heading">
				<h3>教材征订系统</h3>
			</div>
			<!-- page heading end-->

			<!--body wrapper start-->
			<div class="wrapper">
				<div class="row">
					<div class="col-md-6">
						<div class="panel deep-purple-box">
							<div class="panel-body">
									<div style="margin-left: 30px ;margin-top: 20px">
										<ul class="bar-legend">
											<li><span class="green"></span>工号：<s:property value="#session.userInfo.id"/> </li>
											<li><span class="blue"></span> 姓名：<s:property value="#session.userInfo.name"/> </li>
											<li><span class="purple"></span> 性别：<s:property value="#session.userInfo.sex"/> </li>
											<li><span class="red"></span> 权限：<s:property value="#session.userInfo.adminName"/> </li>
										</ul>
										</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<!--statistics start-->
						<div class="row state-overview">
						<s:if test="#session.userInfo.admin==100"><a href="book/bookIndex"></s:if><s:else>
							<a href="aca/academyIndex">
							</s:else>
								<div class="col-md-6 col-xs-12 col-sm-6"  style="color: white">
									<div class="panel purple">
										<div class="symbol">
											<i class="fa fa-gavel"></i>
										</div>
										<div class="state-value">
											<div class="title"><s:if test="#session.userInfo.admin==100">书籍管理</s:if><s:else>
											学院信息管理
											</s:else></div>
										</div>
									</div>
								</div>
							</a> 
							<s:if test="#session.userInfo.admin==100"><a href="order/cartIndex"></s:if><s:else>
							<a href="course/courseIndex">
							</s:else>
								<div class="col-md-6 col-xs-12 col-sm-6"  style="color: white;">
									<div class="panel red">
										<div class="symbol">
											<i class="fa fa-tags"></i>
										</div>
										<div class="state-value">
											<div class="title">
											<s:if test="#session.userInfo.admin==100">订单管理</s:if><s:else>
											课程管理
											</s:else></div>
										</div>
									</div>
								</div>
							</a>
						</div>
	
						<div class="row state-overview">
						<s:if test="#session.userInfo.admin==100"><a href="store/storeIndex"></s:if><s:else>
							<a href="order/orderIndex">
							</s:else>
								<div class="col-md-6 col-xs-12 col-sm-6" style="color: white;">
									<div class="panel blue">
										<div class="symbol">
											<i class="fa fa-money"></i>
										</div>
										<div class="state-value">
											<div class="title">
											<s:if test="#session.userInfo.admin==100">库存管理</s:if><s:else>
											订单管理
											</s:else></div>
										</div>
									</div>
								</div>
							</a > 
							<s:if test="#session.userInfo.admin==100"><a ></s:if><s:else>
							<a href="book/bookIndex">
							</s:else>
								<div class="col-md-6 col-xs-12 col-sm-6">
									<div class="panel green" style="color: white;">
										<div class="symbol">
											<i class="fa fa-eye"></i>
										</div>
										<div class="state-value">
										
											<div class="title">
											<s:if test="#session.userInfo.admin==100">这里什么都没有</s:if><s:else>
											查看书籍
											</s:else></div>
										</div>
									</div>
								</div>
							</a>
						</div>
						<!--statistics end-->
					</div>
					</div>
				<div class="row">
					<div class="col-md-8">
						<div class="panel"  style="height: 500px">
							<div class="panel-body">
								<div class="row revenue-states">
									<div class="col-md-6 col-sm-6 col-xs-12">
										<h4>最新订单</h4>
									</div>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<ul class="revenue-nav">
											<li><a href="order/orderIndex">order</a></li>
											<li class="active"><a href="order/cartIndex">Cart</a></li>
										</ul>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="clearfix">
											<div id="main-chart-legend" class="pull-right"></div>
										</div>

										<div id="main-chart">
											<div id="orderInfo" class="main-chart">
												
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="panel">
							<header class="panel-heading">
								新书推荐
							</header>
							<div id="bookInfo" class="panel-body">
							
							</div>
						</div>
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
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
	<script src="js/jquery-migrate-1.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/modernizr.min.js"></script>
	<script src="js/jquery.nicescroll.js"></script>


	<!--common scripts for all pages-->
	<script src="js/scripts.js"></script>
	<script src="js/index.js"></script>

	<!--Dashboard Charts-->
	<script src="js/dashboard-chart-init.js"></script>


</body>
</html>
