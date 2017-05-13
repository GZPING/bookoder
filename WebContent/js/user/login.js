
function login() {
	var path = $("#path").val();
	var uid= $("#uid").val();
	var password= $("#password").val();
	if(uid==null||uid==""){
		$("#information").text("工号输入有误");
		return ;
	}
	if(password==null){
		$("#information").text("密码和账户名不匹配");
		return ;
	}
	var param = jQuery("#loginForm").serialize();
	$.ajax({
		type : "POST",
		url : path + "/json/login.action",
		dataType : "json",
		data : param,// 序列化表单值  
		async : false,
		error : function(request) {
			alert("登录失败");
		},
		success : function(data) {
			if (data == "error") {
				$("#information").text("密码和账户名不匹配");
			} else if (data == "unverified") {
				$("#information").text("用户还未通过审核")
			} else if (data != "error" && data != "unverified") {
				if (data == "school") {
					//转到校级管理员界面
					window.location.href=path+"/index.action";
				} else if (data == "academy") {
					window.location.href=path+"/index.action";
				} else if (data == "teacher") {
					window.location.href=path+"/index.action";
				}else if (data == "business") {
					window.location.href=path+"/index.action";
				}
			}

		}
	});
};

function logout() {
	var path = $("#path").val();
	var url=path + "/json/logout.action";
	$.ajax({
		type : "POST",
		url : url,
		dataType : "json",
		async : false,
		error : function(request) {
			alert("退出失败");
		},
		success : function(data) {
			if(data=="success"){
				window.location.href=path+"/login.action";
			}
		}
	});
};

