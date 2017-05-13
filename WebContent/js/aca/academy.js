function selectAcademy(){
	var path = $("#path").val();
	
	$.ajax({
		type : "POST",
		url : path + "/course/searchAcademy.action",
		dataType : "html",
		async : false,
		error : function(request) {
			alert("");
		},
		success : function(data) {
				$("#academyMenu").empty();
				$("#academyMenu").append(data);
		}
	});
}
/*
 * 查找班级
 */
function selectClassByMajId(id){
	var path = $("#path").val();
	var param={"id":id};
	$.ajax({
		type : "POST",
		url : path + "/course/searchClassByMajId.action",
		dataType : "html",
		data:param,
		async : false,
		error : function(request) {
			alert("");
		},
		success : function(data) {
			$("#academyMenu").empty();
			$("#academyMenu").append(data);
		}
	});
}
/*
 * 查找专业
 */
function selectMajorByAcaId(id){
	var path = $("#path").val();
	var param={"id":id};
	$.ajax({
		type : "POST",
		url : path + "/course/searchMajorByAcaId.action",
		dataType : "html",
		data:param,
		async : false,
		error : function(request) {
			alert("");
		},
		success : function(data) {
			$("#academyMenu").empty();
			$("#academyMenu").append(data);
		}
	});
}
function comformAca(name,id){
	$("#academyId").val(id);
	$("#academy").text(name);
	$("#majorId").val(-1);
	$("#major").text("专业");
	$("#classId").val(-1);
	$("#class").text("班级");
}

function comformMajor(name,id){
	$("#majorId").val(id);
	$("#major").text(name);
	$("#classId").val(-1);
	$("#class").text("班级");
}

function comformClass(id){
	$("#classId").val(id);
	$("#className").text(id+"班");
}
/*
 function searchAcademy(){
	var sstxt=$('#search').val();
    $("table tbody tr")
    .hide()
    .filter(":contains('"+sstxt+"')")
    .show();
}
 
 $('.dropdown-menu a.removefromcart').click(function(e) {
	    e.stopPropagation();
	});*/