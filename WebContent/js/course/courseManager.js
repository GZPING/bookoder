function updateUser(){
		var path = $("#path").val();
		var param=$("#courseInfoForm").serialize();
		var url=path + "/json/addCourse";
		$.ajax({
			type : 'post',
			url : url,
			dataType : 'json',
			data : param,// 序列化表单值  
			async : false,
			error : function(request) {
				alert("添加课程失败");
			},
			success : function(data) {
				alert(data);
				if (data== "success") {
					location.reload();
				}else{
					alert("添加课程失败");
				}
			}
		});
	};