
	
	function dialogEditAdmin(id, name, admin) {
		$("#admin").val(admin);
		$("#userName").html(name);
		$("#id").val(id);
	}
	/*
	 * 修改用户
	 */
	function editAdmin() {
		var path = $("#path").val();
		var param = jQuery("#editAdminForm").serialize();
		$.ajax({
			type : "POST",
			url : path + "/json/editAdmin",
			dataType : "json",
			data : param,// 序列化表单值  
			async : false,
			error : function(request) {
				alert("发生未知错误");
			},
			success : function(data) {
				if (data != "success") {
					alert("修改失败");
				}

			}
		});
	};
	/*
	 * 删除用户
	 */
	function deleteUser(id) {
		var path = $("#path").val();
		var param={"id":id};
		if (!confirm("删除是不可恢复的，你确认要删除吗？")) {
			return;
		}
		var url=path + "/json/deleteUser";
		$.ajax({
			type : 'post',
			url : url,
			dataType : 'json',
			data : param,// 序列化表单值  
			async : false,
			error : function(request) {
				alert("发生未知错误");
			},
			success : function(data) {
				if (data== "success") {
					alert("删除成功");
					location.reload();
				}else{
					alert("修改失败");
				}
			}
		});
	};

	function editPwd(){
	var path = $("#path").val();
		var param=$("#editPwdForm").serialize();
		var url=path+"/json/editPwd";
		$.ajax({
			type : 'post',
			url : url,
			dataType : 'json',
			data : param,// 序列化表单值  
			async : false,
			error : function(request) {
				alert("发生未知错误");
			},
			success : function(data) {
				alert(data);
				if (data== "success") {
					alert("修改成功，请重新登录");
					window.location.href =path+"/login"
				}else{
					alert("修改失败");
				}
			}
		});
	};
	/*
	 * 添加用户
	 */
	function addUser(){
		var path = $("#path").val();
		var param=$("#userInfoForm").serialize();
		var url=path+"/json/addUser?id=1";
		$.ajax({
			type : 'post',
			url : url,
			dataType : 'json',
			data : param,// 序列化表单值  
			async : false,
			error : function(request) {
				alert("发生未知错误");
			},
			success : function(data) {
				alert(data);
				if (data== "success") {
					window.location.href =path+"/user/userIndex";
				}else{
					alert("操作失败");
				}
			}
		});
	}
	
   /*
    * 修改用户信息
    */
	function updateUser(){
		var path = $("#path").val();
		var param=$("#userInfoForm").serialize();
		var url=path + "/json/updateUser";
		$.ajax({
			type : 'post',
			url : url,
			dataType : 'json',
			data : param,// 序列化表单值  
			async : false,
			error : function(request) {
				alert("发生未知错误");
			},
			success : function(data) {
				if (data== "success") {
					alert("修改成功");
					window.location.href =path+"/user/userIndex";
				}else{
					alert("修改失败");
				}
			}
		});
	};
	
	/*
	 * 修改个人信息
	 */
	function editUserInfo(id){
		var userId=$("#"+id);
		var txt=userId.text();
		var input = $("<input class='form-control' name='user."+id+"' class='input' value='" + txt + "'/>"); 
		userId.html(input); 
		input.click(function() { return false; }); 
		//获取焦点 
		input.trigger("focus"); 
		input.blur(function() { 
			var newtxt = $(this).val(); 
		    $.validator.setDefaults({
		        submitHandler: function() { 
		        	alert("dsf");
		        }
		    });
			//判断文本有没有修改 
			if (newtxt != txt) { 
			userId.html(newtxt); 
			var path = $("#path").val();
			var id=$("#userId").text();
			var name=$("#name").text();
			var sex=$("#sex").text();
			var phone=$("#phone").text();
			var mail=$("#mail").text();
			var description=$("#description").text();
			param={"user.id":id,"user.name":name,"user.sex":sex,"user.phone":phone,"user.mail":mail,"user.description":description,};
			var url=path + "/json/updateUser";
			$.ajax({
				type : 'post',
				url : url,
				dataType : 'json',
				data : param,// 序列化表单值  
				async : false,
				error : function(request) {
					alert("修改失败");
				},
				success : function(data) {
					if (data== "success") {
						alert("修改成功");
					}else{
						alert("修改失败");
					}
				}
			});
			} 
			else 
			{ 
				userId.html(newtxt); 
			} 
			}); 
	}
	
	function appUser(){
		if (!confirm("确认审核？")) {
			return;
		}
		var path = $("#path").val();
		var ids = [];
		var tbodyObj = document.getElementById('hidden-table-info');
		$("table :checkbox").each(function(key, value) {
			if (this == document.getElementById('checkAll')) {
			} else {
				if ($(value).prop('checked')) {
					var id = tbodyObj.rows[key].cells[1].innerHTML;
					ids.push(id);
				}
			}
		})
		var params = $.param({'ids' : ids}, true);
		var url = path + "/json/approvalUser";
		$.ajax({
			url : url,
			data : params,
			cache : false,
			async : false,
			type : "POST",
			dataType : 'json',
			success : function(data) {
				if(data=="success"){
					window.location.href = path + "/user/userApproval";
				}else{
					alert("出现一个意料之外的错误");
				}
			}
		});
	}