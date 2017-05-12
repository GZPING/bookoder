var Script = function () {

    $.validator.setDefaults({
        submitHandler: function() { 
        	addAca();
        }
    });

    $().ready(function() {
        // 提交时验证注释表单
        $("#commentForm").validate();

        // 验证注册表单并提交
        $("#acaForm").validate({
            rules: {
            	"aca.id":{
                	required: true,
                	digits:true
                },
                "aca.name": "required",
            },
            messages: {
            	"aca.id": {
                	required: "请输入正确的学院号",
                	digits:"只能是数字"
                },
               "aca.name": "请输入正确学院名" ,
            }
        });
    
    });
}();