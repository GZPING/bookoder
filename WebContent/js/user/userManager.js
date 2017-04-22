$(function() {
	
	var path = $("#path").val();
	
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
				alert("");
			},
			success : function(data) {
				if (data.ajaxResult != "success") {
					alert("修改失败");
				}

			}
		});
	};
	/*
	 * 删除用户
	 */
	function deleteUser(id) {
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
				alert("修改失败");
			},
			success : function(data) {
				alert(data);
				if (data== "success") {
					location.reload();
				}else{
					alert("修改失败");
				}
			}
		});
	};
})
