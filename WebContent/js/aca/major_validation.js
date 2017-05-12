var Script = function () {

    $.validator.setDefaults({
        submitHandler: function() { 
        	var acaId=$("#academyId").val();
        	if(acaId==0){
        		$("#academyInfo").addClass("error");
        		$("#academyInfo").text("请选择正确学院");
        		return;
        	}
        	addMajor();
        }
    });

    $().ready(function() {
        // 提交时验证注释表单
        $("#commentForm").validate();

        // 验证注册表单并提交
        $("#majorInfoForm").validate({
            rules: {
            	"major.id":{
                	required: true,
                	digits:true
                },
                "major.name": "required",
            },
            messages: {
            	"major.id": {
                	required: "请输入正确的专业号",
                	digits:"只能是数字"
                },
               "major.name": "请输入正确专业名" ,
            }
        });
    
    });
}();