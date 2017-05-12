function fnFormatDetails(oTable, nTr) {
	var aData = oTable.fnGetData(nTr);
	var path = $("#path").val();
	var sOut="";
	var param={"id":aData[1]}
	$.ajax({
		type : "POST",
		url : path + "/order/orderInfo",
		dataType : "html",
		async : false,
		data:param,
		error : function(request) {
			alert("");
		},
		success : function(data) {
			sOut=data;
		}
	});
	return sOut;
}

$(document).ready(function() {

	$('#dynamic-table').dataTable({
		"aaSorting" : [ [ 4, "desc" ] ]
	});


	var oTable = $('#hidden-table-info').dataTable({
		"aoColumnDefs" : [ {
			"bSortable" : false,
			"aTargets" : [ 0 ]
		} ],
		"aaSorting" : [ [ 1, 'asc' ] ]
	});

	$(document).on('click', '#hidden-table-info tbody  .activ ', function() {
		var nTr = $(this).parents('tr')[0];
		if (oTable.fnIsOpen(nTr)) {
			oTable.fnClose(nTr);
		} else {
			oTable.fnOpen(nTr, fnFormatDetails(oTable, nTr), 'details');
		}
	});
   
});

var checkAll= document.getElementById('checkAll');
checkAll.onclick = function(){
       if(this.checked){
           $("[name='checkItem']").attr("checked",'true');
       } else {
       	 $("[name='checkItem']").removeAttr("checked");
       }
   };