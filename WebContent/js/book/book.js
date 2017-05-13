function selectBook() {
	var path = $("#path").val();
	$.ajax({
		type : "POST",
		url : path + "/book/searchBook.action",
		dataType : "html",
		async : false,
		error : function(request) {
			alert("");
		},
		success : function(data) {
			$("#bookModal").modal();
			$("#bookModal").empty();
			$("#bookModal").append(data);

		}
	});
}

function search(){
	var sstxt=$('#selectbookName').val();
    $("table tbody tr")
    .hide()
    .filter(":contains('"+sstxt+"')")
    .show();
}


function comformBook(id, name) {
	$("#bookId").val(id);
	$("#bookName").val(name+"("+id+")");
	$("#bookModal").modal('hide');
}