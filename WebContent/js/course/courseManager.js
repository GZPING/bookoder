function addCourse(){
		var path = $("#path").val();
		var param=$("#courseInfoForm").serialize();
		var url=path + "/courseJson/addCourse.action?id=1";
		$.ajax({
			type : 'post',
			url : url,
			dataType : 'json',
			data : param,// 序列化表单值  
			async : false,
			error : function(request) {
				alert("出现一个意料之外的错误");
			},
			success : function(data) {
				if (data== "success") {
					if (confirm("添加成功，是否继续添加？")) {
						location.reload();
					}else{
						window.location.href =path+"/course/courseIndex.action";
					}
				}else{
					alert("添加课程失败,可能课号已存在");
				}
			}
		});
	};
	
	function updateCourse(){
		var path = $("#path").val();
		var param=$("#courseInfoForm").serialize();
		var url=path + "/courseJson/updateCourse.action?id=1";
		$.ajax({
			type : 'post',
			url : url,
			dataType : 'json',
			data : param,// 序列化表单值  
			async : false,
			error : function(request) {
				alert("出现一个意料之外的错误");
			},
			success : function(data) {
				if (data== "success") {
					window.location.href =path+"/course/courseIndex.action";
				}else{
					alert("修改课程失败");
				}
			}
		});
	};
	function deleteCourse(id){
		if (!confirm("删除是不可恢复的，你确认要删除吗？")) {
			return;
		}
		var path = $("#path").val();
		var param={"id":id};
		var url=path + "/courseJson/deleteCourse.action";
		$.ajax({
			type : 'post',
			url : url,
			dataType : 'json',
			data : param,// 序列化表单值  
			async : false,
			error : function(request) {
				alert("出现一个意料之外的错误");
			},
			success : function(data) {
				if (data== "success") {
					location.reload();
				}else{
					alert("删除课程失败");
				}
			}
		});
	}