$(function() {
	var path = $("#path").val();
})
/*
 * 删除学院信息
 */
function deleteAca(id) {
	var param = {
		"id" : id
	};
	if (!confirm("删除是不可恢复的，你确认要删除吗？")) {
		return;
	}
	var path = $("#path").val();
	var url = path + "/acaJson/deleteAca";
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
			if (data == "success") {
				location.reload();
			} else {
				alert("修改失败");
			}
		}
	});
};
/*
 * 删除专业信息
 */
function deleteMajor(id) {
	var param = {
		"id" : id
	};
	if (!confirm("删除是不可恢复的，你确认要删除吗？")) {
		return;
	}
	var path = $("#path").val();
	var url = path + "/acaJson/deleteMajor";
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
			if (data == "success") {
				location.reload();
			} else {
				alert("修改失败");
			}
		}
	});
};
/*
 * 删除班级信息
 */
function deleteClass(id) {
	var param = {
		"id" : id
	};
	if (!confirm("删除是不可恢复的，你确认要删除吗？")) {
		return;
	}
	var path = $("#path").val();
	var url = path + "/acaJson/deleteClass";
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
			if (data == "success") {
				location.reload();
			} else {
				alert("修改失败");
			}
		}
	});
};