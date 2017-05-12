function deleteBook(id){
	if (!confirm("删除是不可恢复的，你确认要删除吗？")) {
		return;
	}
	var path = $("#path").val();
	var param={"id":id};
	$.ajax({
		type : "POST",
		url : path + "/bookJson/deleteBook",
		dataType : "json",
		data:param,
		async : false,
		error : function(request) {
			alert("删除失败");
		},
		success : function(data) {
			if(data=="success"){
				alert("删除成功");
				location.reload();
			}
		}
	});
}

function editBook(){
	var path = $("#path").val();
	var bookid=$("#bookid").val();
	var name=$("#name").val();
	var auth=$("#auth").val();
	var pub=$("#pub").val();
	var price=$("#price").val();
	var description=$("#description").val();
	var formData = new FormData();
    formData.append("image", document.getElementById("image").files[0]);   
    formData.append("book.id", bookid);  
    formData.append("book.name", name);  
    formData.append("book.auth", auth);  
    formData.append("book.pub", pub);  
    formData.append("book.price", price);  
    formData.append("book.description", description); 
	$.ajax({
		type : "POST",
		url : path + "/bookJson/editBook?id=1",
		dataType : "json",
		data:formData,
        contentType: false,
        processData: false,
		async : false,
		error : function(request) {
			alert("修改失败");
		},
		success : function(data) {
			window.location.href =path+"/bookIndex";
		}
	});
}

function addBook(){
	var path = $("#path").val();
	var bookid=$("#bookid").val();
	var name=$("#name").val();
	var auth=$("#auth").val();
	var pub=$("#pub").val();
	var price=$("#price").val();
	var description=$("#description").val();
	var formData = new FormData();
    formData.append("image", document.getElementById("image").files[0]);   
    formData.append("book.id", bookid);  
    formData.append("book.name", name);  
    formData.append("book.auth", auth);  
    formData.append("book.pub", pub);  
    formData.append("book.price", price);  
    formData.append("book.description", description);  
    $.ajax({
        url: path + "/bookJson/addBook",
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
            		window.location.href =path+"/book/bookIndex";
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
