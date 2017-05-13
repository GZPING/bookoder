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
	var url = path + "/acaJson/deleteAca.action";
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
	var url = path + "/acaJson/deleteMajor.action";
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
	var url = path + "/acaJson/deleteClass.action";
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

function addAca(){
	var path = $("#path").val();
	var param = jQuery("#acaForm").serialize();
	$.ajax({
		type : "POST",
		url : path + "/acaJson/addAca.action",
		dataType : "json",
		data : param,// 序列化表单值  
		async : false,
		error : function(request) {
			alert("添加失败");
		},
		success : function(data) {
			if (data == "success") {
				if (confirm("添加成功，是否添加专业？")) {
					window.location.href =path+"/aca/addMajor.action";
				}else{
					location.reload();
				}
			}else{
				alert("添加失败");
			}
		}
	});
}

function addMajor(){
	var path = $("#path").val();
	var param = jQuery("#majorInfoForm").serialize();
	$.ajax({
		type : "POST",
		url : path + "/acaJson/addMajor?status=1",
		dataType : "json",
		data : param,// 序列化表单值  
		async : false,
		error : function(request) {
			alert("添加失败");
		},
		success : function(data) {
			if (data == "success") {
				if (confirm("添加成功，是否添加课程？")) {
					window.location.href =path+"/aca/addClass";
				}else{
					window.location.href =path+"/aca/majorIndex"
				}
			}else{
				alert("添加失败");
			}
		}
	});
}

function addClass(){
	var path = $("#path").val();
	var param = jQuery("#classInfoForm").serialize();
	$.ajax({
		type : "POST",
		url : path + "/acaJson/addClass?status=1",
		dataType : "json",
		data : param,// 序列化表单值  
		async : false,
		error : function(request) {
			alert("添加失败");
		},
		success : function(data) {
			if (data == "success") {
				if (confirm("添加成功，是否继续课程？")) {
					location.reload();
				}else{
					window.location.href =path+"/aca/majorIndex"
				}
			}else{
				alert("添加失败");
			}
		}
	});
}
