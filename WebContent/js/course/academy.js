$(function(){
	var i=2; //行数
	$("tbody tr").hide();
	$("tbody tr:eq(i)").show();
})
function selectAcademy(){
	var path = $("#path").val();
	
	$.ajax({
		type : "POST",
		url : path + "/course/searchAcademy",
		dataType : "html",
		async : false,
		error : function(request) {
			alert("");
		},
		success : function(data) {
				$("#myModal").modal();
				$("#myModal").empty();
				$("#myModal").append(data);
		}
	});
}

function comformAca(name){
	$("#academy").val(name);
	$("#myModal").modal('hide');
}

 
 function searchAcademy(){
	var sstxt=$('#search').val();
    $("table tbody tr")
    .hide()
    .filter(":contains('"+sstxt+"')")
    .show();
}
