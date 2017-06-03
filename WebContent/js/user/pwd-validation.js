var Script = function () {

    $.validator.setDefaults({
        submitHandler: function() { 
        	editPwd();
        }
    });

    $().ready(function() {
        // 提交时验证注释表单
        $("#commentForm").validate();

        // 验证注册表单并提交
        $("#editPwdForm").validate({
            rules: {
            	oldPwd: {
                       required: true,
                   },
                password: {
                    required: true,
                    minlength: 5
                },
                "user.password": {
                    required: true,
                    minlength: 5,
                    equalTo: "#password"
                },
            },
            messages: {
            	oldPwd: {
                    required: "请输入密码",
                },
              password: {
                    required: "请输入密码",
                    minlength: "您的密码长度必须至少为5个字符"
                },
                "user.password": {
                    required: "请确认密码",
                    equalTo: "请输入与上述相同的密码"
                },
            }
        });
    
    });
}();