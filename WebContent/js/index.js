$(function(){
	var path = $("#path").val();
	//加载order
	$.ajax({
		type : "POST",
		url : path + "/order/cartIndex?id=1",
		dataType : "html",
		async : false,
		error : function(request) {
		},
		success : function(data) {
			$("#orderInfo").empty();
			$("#orderInfo").append(data);
		}
	});
	//显示新添加书籍
	$.ajax({
		type : "POST",
		url : path + "/book/bookIndex?id=1",
		dataType : "html",
		async : false,
		error : function(request) {
		},
		success : function(data) {
			$("#bookInfo").empty();
			$("#bookInfo").append(data);
		}
	});
})