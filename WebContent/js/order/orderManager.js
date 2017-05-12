function editStatus(orderid,status) {
	var path = $("#path").val();
	var param = {"order.id" : orderid,status:status};
	$.ajax({
		type : "POST",
		url : path + "/orderJson/approvalOrder?id=1",
		dataType : "json",
		data : param,// 序列化表单值
		async : false,
		error : function(request) {
			alert("");
		},
		success : function(data) {
			if (data == "success") {
				location.reload();
			}

		}
	});
};

function addOrder() {
	var path = $("#path").val();
	var param = $("#orderInfoForm").serialize();
	var url = path + "/orderJson/addOrder?id=1";
	$.ajax({
		type : 'post',
		url : url,
		dataType : 'json',
		data : param,// 序列化表单值
		async : false,
		error : function(request) {
			alert("添加订单失败");
		},
		success : function(data) {
			if (data == "success") {
				if (confirm("添加成功，是否继续添加？")) {
				} else {
					window.location.href = path + "/order/myOrder";
				}
			} else {
				alert("添加订单失败");
			}
		}
	});
};

function editOrder() {
	var path = $("#path").val();
	var param = $("#orderInfoForm").serialize();
	var url = path + "/orderJson/editOrder?id=1";
	$.ajax({
		type : 'post',
		url : url,
		dataType : 'json',
		data : param,// 序列化表单值
		async : false,
		error : function(request) {
			alert("修改订单失败");
		},
		success : function(data) {
			if (data == "success") {
				window.location.href = path + "/order/myOrder";
			} else {
				alert("修改订单失败");
			}
		}
	});
};

function approvalOrder(status) {
	$("#approvalOrderModal").modal('hide');
	var path = $("#path").val();
	var ids = [];
	var tbodyObj = document.getElementById('hidden-table-info');
	$("table :checkbox").each(function(key, value) {
		if (this == document.getElementById('checkAll')) {
		} else {
			if ($(value).prop('checked')) {
				var id = tbodyObj.rows[key].cells[1].innerHTML;
				ids.push(id);
			}
		}
	})
	var params = $.param({'ids' : ids,status:status}, true);
	var url = path + "/orderJson/approvalOrder?id=2";
	$.ajax({
		url : url,
		data : params,
		cache : false,
		async : false,
		type : "POST",
		dataType : 'json',
		success : function(data) {
			if(data=="success"){
				alert("操作成功");
				location.reload();
			}else{
				alert("操作失败");
				location.reload();
			}
		}
	});
}

function approvalOrderModal(){
	$("#approvalOrderModal").modal();
}

function selectOrder(){
	var path = $("#path").val();
	var url = path + "/order/selectOrder";
	$.ajax({
		url : url,
		cache : false,
		async : false,
		type : "POST",
		dataType : 'json',
		success : function(data) {
			if(data=="success"){
				alert("操作成功");
			}else{
				alert("操作失败");
			}
		}
	});
}

function orderCart(){
	var path = $("#path").val();
	var ids = [];
	var tbodyObj = document.getElementById('hidden-table-info');
	$("table :checkbox").each(function(key, value) {
		if (this == document.getElementById('checkAll')) {
		} else {
			if ($(value).prop('checked')) {
				var id = tbodyObj.rows[key].cells[1].innerHTML;
				ids.push(id);
			}
		}
	})
	var params = $.param({'ids' : ids}, true);
	var url = path + "/orderJson/orderCart?id=1";
	$.ajax({
		url : url,
		data : params,
		cache : false,
		async : false,
		type : "POST",
		dataType : 'json',
		success : function(data) {
			if(data=="success"){
				window.location.href = path + "/order/orderCart";
			}else{
				alert("出现一个意料之外的错误");
			}
		}
	});
}
function submitCart(){
	var path = $("#path").val();
	var cartId=$("#cartId").val();
	var number=$("#number").val();
	var url = path + "/orderJson/submitCart";
	var param={"cartId":cartId ,"totalNum":number};
	$.ajax({
		url : url,
		data : param,
		cache : false,
		async : false,
		type : "POST",
		dataType : 'json',
		success : function(data) {
			if(data=="success"){
				window.location.href = path + "/order/cartIndex";
			}else{
				alert("出现一个意料之外的错误");
			}
		}
	});
}

function cartOut(){
	var path = $("#path").val();
	var id = $("#cartId").val();
	var url = path + "/orderJson/cartOut";
	var param={"id":id,"status":1};
	$.ajax({
		url : url,
		data : param,
		cache : false,
		async : false,
		type : "POST",
		dataType : 'json',
		success : function(data) {
			if(data=="success"){
				alert("操作成功");
				window.location.href = path + "/order/cartIndex";
			}else{
				alert("操作失败");
				location.reload();
			}
		}
	});
}
/*
 * 删除订单
 */
function deleteOrder(id){
	
	if (!confirm("删除是不可恢复的，你确认要删除吗？")) {
		return;
	}
	var path = $("#path").val();
	var url = path + "/orderJson/deleteOrder";
	var param={"id":id};
	$.ajax({
		url : url,
		data : param,
		cache : false,
		async : false,
		type : "POST",
		dataType : 'json',
		success : function(data) {
			if(data=="success"){
				alert("操作成功");
				location.reload();
			}else{
				alert("操作失败");
				location.reload();
			}
		}
	});
}