var Script = function () {

    $.validator.setDefaults({
        submitHandler: function() { 
        	var acaId=$("#academyId").val();
        	if(acaId==0){
        		$("#academyInfo").addClass("error");
        		$("#academyInfo").text("请选择正确学院");
        		return;
        	}
        	updateUser();
        }
    });

    $().ready(function() {
        // 提交时验证注释表单
        $("#commentForm").validate();

        // 验证注册表单并提交
        $("#userInfoForm").validate({
            rules: {
            	"user.id":{
                	required: true,
                	digits:true
                },
                "user.name": "required",
                password: {
                    required: true,
                    minlength: 5
                },
                "user.phone":{
                	digits:true
                },
                "user.mail": {
                    email: true
                },
            },
            messages: {
            	"user.id": {
                	required: "请输入正确工号",
                	digits:"工号只能是数字"
                },
               "user.name": "请输入正确用户名" ,
                "user.mail": "请输入有效的电子邮件地址",
                "user.phone": "电话号码错误",
            }
        });
    
    });
}();