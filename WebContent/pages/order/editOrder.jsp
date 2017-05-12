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

<title>修改订单</title>

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
					修改订单</header>
					<div class="panel-body">
						<div class="form">
							<form class="cmxform form-horizontal adminex-form"
								id="orderInfoForm" method="post" action="">
								<input type="hidden" name="order.bookId" id="bookId"
									value="<s:property value='order.bookId' />">
									<input type="hidden" name="order.price" id="price"
									value="<s:property value='order.price' />"> <input
									type="hidden" name="order.courseId" id="courseId"
									value="<s:property value='order.courseId' />"> <input
									type="hidden" name="order.bookPrice" id="bookPrice"
									value="<s:property value='order.bookPrice' />">
								<div class="form-group ">
									<label for="courseInfo" class="control-label col-lg-2">订单号<span
										style="color: red">*</span></label>
									<div class="col-lg-10">
										<input class=" form-control" id="id" name="order.id"
											type="text" value="<s:property value='order.id' />"
											readonly="readonly" />
									</div>
								</div>
								<div class="form-group ">
									<label for="courseInfo" class="control-label col-lg-2">课程<span
										style="color: red">*</span></label>
									<div class="col-lg-10">
										<input class=" form-control" id="courseInfo" name="courseInfo"
											type="text" onfocus="selectCourse();"
											value="<s:property value='order.courseName' />[教材《<s:property value='order.bookName' />》]" />
									</div>
								</div>
								<div class="form-group ">
									<label for="number" class="control-label col-lg-2">数量 <span
										style="color: red">*</span></label>
									<div class="col-lg-10">
										<input class=" form-control" id="number" name="order.number"
											type="text" value="<s:property value='order.number' />" />
									</div>
								</div>
								<div class="form-group ">
									<label for="email" class="control-label col-lg-2">描述</label>
									<div class="col-lg-10">
										<textarea rows="3" class="form-control " id="description"
											name="order.description" ><s:property value='order.description' /></textarea>
									</div>
								</div>
								<div class="form-group">
									<div class="col-lg-offset-2 col-lg-10">
										<button type="submit" class="btn btn-primary">修改</button>
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
		<footer class="footer"> 2017 &copy; GOBOOK<a
			href="http://www.zhiping.me/" target="_blank"> &nbsp;ZPING</a> </footer>
		<!--footer section end-->
	</div>
	<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog"
		tabindex="-1" id="courseModal" class="modal fade"></div>
	<!-- main content end--> </section>
	<!-- Placed js at the end of the document so the pages load faster -->
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
	<script src="js/jquery-migrate-1.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/modernizr.min.js"></script>
	<script src="js/jquery.nicescroll.js"></script>

	<script type="text/javascript" src="js/jquery.validate.min.js"></script>
	<script src="js/order/edit_order_validation.js"></script>
	<script src="js/scripts.js"></script>

	<script src="js/course/course.js"></script>
	<script src="js/order/orderManager.js"></script>

	<script type="text/javascript">
		$(function() {
			$("#order").addClass("nav-active");
			$("#addOrder").addClass("active");
		})
	</script>


</body>
</html>
