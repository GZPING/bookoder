function uploadExcel(file){
	alert("ok");
	alert(file);
	var path = $("#path").val();
	var formData = new FormData();
    formData.append("file", document.getElementById("excelFile").files[0]);   
    $.ajax({
        url: path + "/bookJson/addBooks.action",
        type: "POST",
        data: formData,
        /**
        *必须false才会自动加上正确的Content-Type
        */
        contentType: false,
        /**
        * 必须false才会避开jQuery对 formdata 的默认处理
        * XMLHttpRequest会对 formdata 进行正确的处理
        */
        processData: false,
        success: function (data) {
            if (data == "success") {
            	if (confirm("添加成功是否继续添加？")) {
            		location.reload();
            	}else{
            		window.location.href =path+"/book/bookIndex.action";
            	}
            }else{
            	 alert("添加失败！");
            }
        },
        error: function () {
            alert("添加失败！");
        }
    });
}