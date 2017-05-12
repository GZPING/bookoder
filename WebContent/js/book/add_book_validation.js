var Script = function () {

    $.validator.setDefaults({
        submitHandler: function() { 
        	addBook();
        }
    });

    $().ready(function() {
        // 提交时验证注释表单
        $("#commentForm").validate();

        // 验证注册表单并提交
        $("#bookInfoForm").validate({
            rules: {
            	"book.id":{
                	required: true,
                	digits:true
                },
                "book.name": "required",
                "book.auth":"required",
                "book.pub": {
                	required: true
                },
                "book.price":{
                	required: true,
                	digits:true
                },
            },
            messages: {
            	"book.id":{
                	required: "请输入书号",
                	digits:"书号只能为数字"
                },
                "book.name": "请输入书名",
                "book.auth":"请输入作者名",
                "book.pub": {
                	required: "请输入出版社名"
                },
                "book.price":{
                	required: "请输入单价",
                	digits:"单价只能为数字"
                },
            }
        });
    
    });
}();