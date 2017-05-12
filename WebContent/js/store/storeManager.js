	
	function addStore(){
		var path = $("#path").val();
		var param=$("#storeInfoForm").serialize();
		var url=path + "/storeJson/addStore?id=1";
		$.ajax({
			type : 'post',
			url : url,
			dataType : 'json',
			data : param,// 序列化表单值  
			async : false,
			error : function(request) {
				alert("入库失败");
			},
			success : function(data) {
				if (data== "success") {
					if (confirm("入库成功，是否继续入库？")) {
					}else{
						window.location.href =path+"/store/storeIndex";
					}
				}else{
					alert("入库失败");
				}
			}
		});
	};
	
	function updateStore(){
		var path = $("#path").val();
		var param=$("#orderInfoForm").serialize();
		var url=path + "/orderJson/updateOrder?id=1";
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
				if (data== "success") {
					window.location.href =path+"/order/orderIndex";
				}else{
					alert("修改订单失败");
				}
			}
		});
	};
	