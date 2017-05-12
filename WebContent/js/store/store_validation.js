var Script = function () {

    $.validator.setDefaults({
        submitHandler: function() { 
        	addStore();
        }
    });

    $().ready(function() {
        // 提交时验证注释表单
        $("#commentForm").validate();

        // 验证注册表单并提交
        $("#storeInfoForm").validate({
            rules: {
            	"store.number":{
                	required: true,
                	digits:true
                },
                "bookName":"required",
                "store.place":"required",
            },
            messages: {
            	"store.number":{
                	required: "请输入数量",
                	digits:"数量只能为数字"
                },
                "bookName": "请选择课程",
                "store.place": "请输入课程",
            }
        });
    
    });
}();