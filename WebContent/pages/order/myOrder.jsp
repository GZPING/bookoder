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

<title>我的订单</title>

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
					<section class="panel"> <header class="panel-heading">
					我的订单 <span class="tools pull-right"> <button type="button"
						class="btn btn-success" onclick="method1('hidden-table-info')">导出</button>
					</span> </header>
					<div class="panel-body">
						<div class="adv-table">
							<table class="display table " id="hidden-table-info">
								<thead>
									<tr>
										<th>订单号</th>
										<th>书籍名</th>
										<th>数量</th>
										<th>总价</th>
										<th>部门</th>
										<th>申请人</th>
										<th>申请时间</th>
										<th>审核状态</th>
										<th>订单号</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<s:iterator value="orderList">
									<tr>
										<td class="activ"><s:property value="id" /></td>
										<td class="activ"><s:property value="bookName" /><br>(<s:property value="pub" />)</td>
										<td class="activ"><s:property value="number" /></td>
										<td class="activ"><s:property value="totalPrice" /></td>
										<td class="activ"><s:property value="academy" /></td>
										<td class="activ"><s:property value="person" /></td>
										<td class="activ"><s:date name="date"  format="yyyy-MM-dd "/></td>
										<td><s:if test="status== 1">
												<a href="javascript:;"
													onclick="eidtStatus(<s:property value="id" />,0)">未审核</a>
											</s:if> <s:elseif test="status== 2">
												<a href="javascript:;"
													onclick="eidtStatus(<s:property value="id" />,1)">学院审核</a>
											</s:elseif> <s:elseif test="status== 3">
												<a href="javascript:;">学校审核</a>
											</s:elseif><s:elseif test="status==0">
												<span style="color:red">审核不通过</span>
											</s:elseif>
											</td>
											<td><s:property value="cartId" /></td>
										<td>
										<s:if test="cartId!=0">
										<a class="btn btn-default btn-sm">已提交不能修改</a>
										</s:if><s:else>
										<a class="btn btn-info btn-sm" href="order/editOrder?id=<s:property value="id" />">修改</a>
										<a class="btn btn-info btn-sm"  onclick="deleteOrder(<s:property value="id" />)">删除</a>
										</s:else>
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
 	<script src="js/order/myOrderTable.js"></script>
	<script src="js/order/orderManager.js"></script>
	<script src="js/excelout.js"></script>
	<!-- END JAVASCRIPTS -->
	<script type="text/javascript">
		$(function() {
			$("#order").addClass("nav-active");
			$("#myOrder").addClass("active");
		})
	</script>
</body>
</html>
