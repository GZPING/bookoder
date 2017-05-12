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
<meta name="description" content="">
<meta name="author" content="ThemeBucket">
<link rel="shortcut icon" href="#" type="image/png">

<title>订单确认</title>

<!--data table-->
<link href="js/advanced-datatable/css/demo_page.css" rel="stylesheet" />
<link href="js/advanced-datatable/css/demo_table.css" rel="stylesheet" />
<link rel="stylesheet" href="js/data-tables/DT_bootstrap.css" />

<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
</head>

<body class="sticky-header">
	<input id="path" type="hidden" value="<%=path%>">
	<section> <%@include file="/pages/left.jsp"%></
	<!-- main content start-->
	<div class="main-content">

		<%@include file="/pages/topMenu.jsp"%>

		<!--body wrapper start-->
		<div class="wrapper">
			<div class="row">
				<div class="col-sm-12">
					<section class="panel"> 
					<div class="panel-body">
						<div class="adv-table">
							<table class="display table " id="hidden-table-info">
								<thead>
									<tr>
										<th>订单号</th>
										<th>下单人</th>
										<th>日期</th>
										<th>总价</th>
										<th>状态</th>
										<th>详情</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<s:iterator value="cartList">
									<tr>
										<td><s:property value="id" /></td>
											<td><s:property value="person" /></td>
											<td><s:property value="date" /></td>
											<td><s:property value="price" /></td>
											<td>
											<s:if test="status==0"><a>未出库</a>
											</s:if><s:elseif test="status==1">
											<a>已出库</a>
											</s:elseif>
											</td>
											<td width="60px">
											<a  class="btn btn-info" target="_blank" href="<%=path%>/order/cartInfo?id=<s:property value="id" />">详情</a>
											</td>
											<td width="60px">
											<s:if test="status==0"><a class="btn btn-info" href="<%=path%>/order/cartOut?id=<s:property value="id" />">出库</a>
											</s:if><s:elseif test="status==1">
											<!-- <a class="btn btn-default active" >出库</a> -->
											<a class="btn btn-info " target="_blank" href="<%=path%>/order/cartOutInfo?id=<s:property value="id" />" >打印出库单</a>
											</s:elseif>
											</td>
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


		<footer> 2017 &copy; GOBOOK<a href="http://www.zhiping.me/"
			target="_blank"> &nbsp;ZPING</a> </footer>
	</div>
 </section>

	<!-- Placed js at the end of the document so the pages load faster -->
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
	<script src="js/jquery-migrate-1.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/modernizr.min.js"></script>
	<script src="js/jquery.nicescroll.js"></script>

	<!--data table-->
	<script type="text/javascript"
		src="js/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>

	<!--common scripts for all pages-->
	<script src="js/scripts.js"></script>

	<!--script for editable table-->
	<script src="js/order/ordertable.js"></script>
	<script src="js/order/orderManager.js"></script>

	<!-- END JAVASCRIPTS -->
	<script type="text/javascript">
	$(function() {
		$("#order").addClass("nav-active");
		$("#cartIndex").addClass("active");
	})
	</script>
</body>
</html>
