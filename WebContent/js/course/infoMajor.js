function fnFormatDetails(oTable, nTr) {
	var aData = oTable.fnGetData(nTr);
	var path = $("#path").val();
	var sOut="";
	var param={"id":aData[1]}
	$.ajax({
		type : "POST",
		url : path + "/aca/searchMajorByAcaId",
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

	/*
	 * Insert a 'details' column to the table
	 */
	var nCloneTh = document.createElement('th');
	var nCloneTd = document.createElement('td');
	nCloneTd.innerHTML = '<img src="images/details_open.png">';
	nCloneTd.className = "center";

	$('#hidden-table-info thead tr').each(function() {
		this.insertBefore(nCloneTh, this.childNodes[0]);
	});

	$('#hidden-table-info tbody tr').each(function() {
		this.insertBefore(nCloneTd.cloneNode(true), this.childNodes[0]);
	});

	/*
	 * Initialse DataTables, with no sorting on the 'details' column
	 */
	var oTable = $('#hidden-table-info').dataTable({
		"aoColumnDefs" : [ {
			"bSortable" : false,
			"aTargets" : [ 0 ]
		} ],
		"aaSorting" : [ [ 1, 'asc' ] ]
	});

	/* Add event listener for opening and closing details
	 * Note that the indicator for showing which row is open is not controlled by DataTables,
	 * rather it is done here
	 */
	$(document).on('click', '#hidden-table-info tbody td img', function() {
		var nTr = $(this).parents('tr')[0];
		if (oTable.fnIsOpen(nTr)) {
			/* This row is already open - close it */
			this.src = "images/details_open.png";
			oTable.fnClose(nTr);
		} else {
			/* Open this row */
			this.src = "images/details_close.png";
			oTable.fnOpen(nTr, fnFormatDetails(oTable, nTr), 'details');
		}
	});
});