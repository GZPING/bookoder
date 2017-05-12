
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript" src="js/user/login.js"></script>
<!-- header section start-->
<div class="header-section">

	<!--toggle button start-->
	<a class="toggle-btn"><i class="fa fa-bars"></i></a>
	<!--toggle button end-->
	<!--notification menu start -->
	<div class="menu-right">

		<ul class="notification-menu">
			<li><a href="javascript:void(0);"
				class="btn btn-default dropdown-toggle"><s:property value="#session.userInfo.adminName"/>  
			</a></li>
			<li><a href="#" class="btn btn-default dropdown-toggle"
				data-toggle="dropdown"> <img src="images/photos/user-avatar.png"
					alt="" /><s:property value="#session.userInfo.name"/> <span class="caret"></span>
			</a>
				<ul class=" pull-right dropdown-menu dropdown-menu-usermenu " >
					<li><a href="/gobook/user/userInfo" ><i class="fa fa-user"></i> 查看信息</a></li>
					<li><a href="/gobook/user/userEidtPwd" ><i class="fa fa-cog"></i> 修改密码</a></li>
					<li><a href="javascript:;" onclick="logout();"><i class="fa fa-sign-out"></i> 退出系统</a></li>
				</ul></li>
		</ul>
	</div>
	<!--notification menu end -->

</div>
<!-- header section end-->