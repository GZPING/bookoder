<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
   	String path= request.getContextPath();
    String basePath =request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %>

<form class="cmxform form-horizontal adminex-form" id="addMajorForm"
	method="post" action="">
	<input type="hidden" name="major.academyId" id="academyId">
	<div class="form-group ">
		<label for="firstname" class="control-label col-lg-2">工号:</label>
		<div class="col-lg-10">
			<input class=" form-control" id="id" name="major.id" type="text" />
		</div>
	</div>
	<div class="form-group ">
		<label for="lastname" class="control-label col-lg-2">姓名： <span
			style="color: red">*</span>
		</label>
		<div class="col-lg-10">
			<input class=" form-control" id="name" name="major.name" type="text" />
		</div>
	</div>
	<div class="form-group ">
		<label for="lastname" class="control-label col-lg-2">性别： <span
			style="color: red">*</span>
		</label>
		<div class="col-lg-10">
			<input class=" form-control" id="name" name="major.name" type="text" />
		</div>
	</div>
	<div class="form-group ">
		<label for="lastname" class="control-label col-lg-2">电话： <span
			style="color: red">*</span>
		</label>
		<div class="col-lg-10">
			<input class=" form-control" id="name" name="major.name" type="text" />
		</div>
	</div>
	<div class="form-group ">
		<label for="lastname" class="control-label col-lg-2">邮箱： <span
			style="color: red">*</span>
		</label>
		<div class="col-lg-10">
			<input class=" form-control" id="name" name="major.name" type="text" />
		</div>
	</div>
	<div class="form-group ">
		<label for="lastname" class="control-label col-lg-2">描述： <span
			style="color: red">*</span>
		</label>
		<div class="col-lg-10">
			<input class=" form-control" id="name" name="major.name" type="text" />
		</div>
	</div>
	<div class="form-group">
		<div class="col-lg-offset-2 col-lg-10">
			<input type="button" class="btn btn-primary" value="提交"
				onclick="addMajor();" />
		</div>
	</div>
</form>

</body>
</html>