function selectTeacher() {
	var path = $("#path").val();
	$.ajax({
		type : "POST",
		url : path + "/user/searchUser?id=103",
		dataType : "html",
		async : false,
		error : function(request) {
			alert("");
		},
		success : function(data) {
			$("#userModal").modal();
			$("#userModal").empty();
			$("#userModal").append(data);

		}
	});
}

function searchDialogUser(){
	var sstxt=$('#selectUserName').val();
    $("table tbody tr")
    .hide()
    .filter(":contains('"+sstxt+"')")
    .show();
}


function comformUser(id, name) {
	$("#teacherId").val(id);
	$("#teacherName").val(name+"("+id+")");
	$("#userModal").modal('hide');
}