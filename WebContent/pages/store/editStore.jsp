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
					修改书籍信息</header>
					<div class="panel-body">
						<div class="form">
							<form class="cmxform form-horizontal adminex-form"
								id="infoBookForm" method="post" action="">
								<div class="form-group ">
									<label class="control-label col-lg-2">书籍号</label>
									<div class="col-lg-10">
										<input class=" form-control" id="id" name="book.id"
											type="text" value="<s:property value="book.id" />"
											readonly="readonly" />
									</div>
								</div>
								<div class="form-group ">
									<label class="control-label col-lg-2">书名</label>
									<div class="col-lg-10">
										<input class=" form-control" id="name" name="book.name"
											type="text" value="<s:property value="book.name" />" />
									</div>
								</div>

								<div class="form-group ">
									<label class="control-label col-lg-2">作者</label>
									<div class="col-lg-10">
										<input class=" form-control" id="auth" name="book.auth"
											type="text" value="<s:property value="book.auth" />" />
									</div>
								</div>
								<div class="form-group ">
									<label class="control-label col-lg-2">出版社</label>
									<div class="col-lg-10">
										<input class=" form-control" id="pub" name="book.pub"
											type="text" value="<s:property value="book.pub" />" />
									</div>
								</div>
								<div class="form-group ">
									<label class="control-label col-lg-2">单价</label>
									<div class="col-lg-10">
										<input class=" form-control" id="price" name="book.price"
											type="text" value="<s:property value="book.price" />" />
									</div>
								</div>
								<div class="form-group ">
									<label class="control-label col-lg-2">图片</label>
									<div class="col-lg-10">
									   <img alt="" src="images/book/image1.png">
										<input  id="image" name="book.image"
											type="file"  value="上传图片"/>
									</div>
								</div>
								<div class="form-group ">
									<label for="email" class="control-label col-lg-2">描述</label>
									<div class="col-lg-10">
										<input class="form-control " id="description"
											name="book.description"
											value="<s:property value="book.description" />" />
									</div>
								</div>
								<div class="form-group">
									<div class="col-lg-offset-2 col-lg-10">
										<input type="button" class="btn btn-primary" value="修改"
											onclick="editBook();" />
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
	<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog"
		tabindex="-1" id="myModal" class="modal fade"></div>
	<!-- modal --> <!-- main content end--> </section>
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

	<script src="js/book/bookManager.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#store").addClass("nav-active");
		})
	</script>
</body>
</html>
