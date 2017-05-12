var Script = function () {

    $.validator.setDefaults({
        submitHandler: function() { 
        	addUser();
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
                "user.password": {
                    required: true,
                    minlength: 5,
                    equalTo: "#password"
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
              password: {
                    required: "请输入密码",
                    minlength: "您的密码长度必须至少为5个字符"
                },
                "user.password": {
                    required: "请确认密码",
                    equalTo: "请输入与上述相同的密码"
                },
                "user.mail": "请输入有效的电子邮件地址",
                "user.phone": "电话号码错误",
            }
        });
    
    });
}();