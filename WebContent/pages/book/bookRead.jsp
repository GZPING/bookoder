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

<title>教材信息</title>

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
					教材信息 <span class="tools pull-right"> </span> </header>
					<div class="panel-body">
						<div class="adv-table">
							<table class="display table table-bordered table-striped"
								id="dynamic-table">
								<thead>
									<tr>
										<th>书号</th>
										<th>书名</th>
										<th>图片</th>
										<th>作者</th>
										<th>出版社</th>
										<th>价格</th>
									</tr>
								</thead>
								<tbody>
									<s:iterator value="bookList">
										<tr align=center  valign=middle>
											<td><s:property value="id" /></td>
											<td><s:property value="name" /></td>
											<td><img src="images/book/<s:property value="image"  />"  height="80" width="60" ></td>
											<td><s:property value="auth" /></td>
											<td><s:property value="pub" /></td>
											<td><s:property value="price" /></td>
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
	<!-- main content end--> </section>

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
<%-- 	<script src="js/dynamic_table_init.js"></script> --%>

	<!--common scripts for all pages-->
	<script src="js/scripts.js"></script>

	<script src="js/book/bookManager.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#bookRead").addClass("active");
			$('#dynamic-table').dataTable({
				"aaSorting" : [ [ 0, "asc" ] ]
			});
		})
	</script>

</body>
</html>
