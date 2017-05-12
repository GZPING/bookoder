function selectCourse() {
	var path = $("#path").val();
	$.ajax({
		type : "POST",
		url : path + "/course/searchCourse?id=1",
		dataType : "html",
		async : false,
		error : function(request) {
			alert("");
		},
		success : function(data) {
			$("#courseModal").modal();
			$("#courseModal").empty();
			$("#courseModal").append(data);

		}
	});
}

function searchOneCourse(){
	var sstxt=$('#selectCourseName').val();
    $("table tbody tr")
    .hide()
    .filter(":contains('"+sstxt+"')")
    .show();
}


function comformCourse(courseId, courseName,bookId,bookPrice,bookName) {
	$("#courseId").val(courseId);
	$("#bookId").val(bookId);
	$("#bookPrice").val(bookPrice);
	$("#courseInfo").val(courseName+"[("+courseId+")-教材《"+bookName+"》]");
	
	$("#courseModal").modal('hide');
}