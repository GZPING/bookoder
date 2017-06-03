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

<title>购物车</title>

<!--data table-->
<link href="js/advanced-datatable/css/demo_page.css" rel="stylesheet" />
<link href="js/advanced-datatable/css/demo_table.css" rel="stylesheet" />
<link rel="stylesheet" href="js/data-tables/DT_bootstrap.css" />

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
				<div class="col-sm-12">
					<section class="panel"> <header class="panel-heading">
					
					 </header>
					<div class="panel-body">
						<div class="adv-table">
							<table class="display table table-bordered table-striped"
								id="dynamic-table">
								<thead>
									<tr>
										<th>订单号</th>
										<th>下单人</th>
										<th>日期</th>
										<th>总价</th>
										<th>状态</th>
										<th>详情</th>
									</tr>
								</thead>
								<tbody>
									<s:iterator value="cartList">
										<tr>
											
											<td><s:property value="id" /></td>
											<td><s:property value="person" /></td>
											<td><s:date name="date" format="yyyy-MM-dd hh:mm:ss" /></td>
											<td><s:property value="price" /></td>
											
											<td>
											<s:if test="status==0"><a>未确认</a>
											</s:if><s:elseif test="status==1">
											<a>已确认</a>
											</s:elseif>
											</td>
											<td>
											<a target="_blank" href="<%=path%>/order/cartInfo?id=<s:property value="id" />">详情</a>
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
		<footer class="footer"> 2017 &copy; GOBOOK<a
			href="http://www.zhiping.me/" target="_blank"> &nbsp;ZPING</a> </footer>
	</div>
	
	</section>

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
	<script src="js/user/userManager.js"></script>
	<!--common scripts for all pages-->
	<script src="js/scripts.js"></script>

	<!--script for editable table-->
<%-- 	<script src="js/dynamic_table_init.js"></script> --%>

	<script type="text/javascript">
		$(function() {
			$("#order").addClass("nav-active");
			$("#cartIndex").addClass("active");
			$('#dynamic-table').dataTable({
				"aaSorting" : [ [ 2, "desc" ] ]
			});
		})
	</script>

</body>
</html>
