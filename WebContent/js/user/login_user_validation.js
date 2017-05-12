var Script = function () {

    $.validator.setDefaults({
        submitHandler: function() { 
        	login();
        }
    });

    $().ready(function() {
        // 提交时验证注释表单
        $("#commentForm").validate();

        // 验证注册表单并提交
        $("#userLoginForm").validate({
            rules: {
            	"user.id":{
                	required: true,
                },
                "user.password": "required",
            },
            messages: {
            	"user.id": {
                	required: "请输入用户名 &nbsp; ",
                },
               "user.password": "请输入正确密码" ,
            },
            errorPlacement: function(error, element) { 
                if (element.attr("name") == "user.id" ||element.attr("name") == "user.password")  {
                //	error.append("#information");  
                	error.insertBefore("#mid");
                }   
                else       
                    error.insertAfter(element);   
          }
        });
    
    });
}();