var Script = function () {

    $.validator.setDefaults({
        submitHandler: function() { 
        	editOrder();
        }
    });

    $().ready(function() {
        // 提交时验证注释表单
        $("#commentForm").validate();

        // 验证注册表单并提交
        $("#orderInfoForm").validate({
            rules: {
            	"order.number":{
                	required: true,
                	digits:true
                },
                "courseInfo":"required",
            },
            messages: {
            	"order.number":{
                	required: "请输入数量",
                	digits:"书号只能为数字"
                },
                "courseInfo": "请选择课程",
            }
        });
    
    });
}();