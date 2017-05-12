var Script = function () {

    $.validator.setDefaults({
        submitHandler: function() { 
        	var acaId=$("#majorId").val();
        	if(acaId==0){
        		$("#academyInfo").addClass("error");
        		$("#academyInfo").text("请选择正确专业");
        		return;
        	}
        	addClass();
        }
    });

    $().ready(function() {
        // 提交时验证注释表单
        $("#commentForm").validate();

        // 验证注册表单并提交
        $("#classInfoForm").validate({
            rules: {
            	"classModel.id":{
                	required: true,
                	digits:true
                },
                "classModel.grade":{
                	required: true,
                	digits:true
                },
                "classModel.number":{
                	required: true,
                	digits:true
                },
            },
            messages: {
            	"classModel.id":{
                	required: "请输入课程号",
                	digits:"课程号只能为数字"
                },
                "classModel.grade":{
                	required: "请输入年级",
                	digits:"年级号只能输数字"
                },
                "classModel.number":{
                	required: "请输入人数",
                	digits:"只能输数字"
                },
            }
        });
    
    });
}();