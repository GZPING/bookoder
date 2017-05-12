var Script = function () {

    $.validator.setDefaults({
        submitHandler: function() { 
        	var classId= $("#classId").val();
        	if(classId!=0&&classId!=null){
        		updateCourse();
        	}else{
            		$("#classInfo").addClass("error");
            		$("#classInfo").text("请选择正确班级");
            		return;
        	}
        }
    });

    $().ready(function() {
        // 提交时验证注释表单
        $("#commentForm").validate();

        // 验证注册表单并提交
        $("#courseInfoForm").validate({
            rules: {
            	"course.id":{
                	required: true,
                	digits:true
                },
                "course.name": "required",
                "course.bookName":"required",
                "course.teacherName":"required",
                "course.bookName":"required",
            },
            messages: {
            	"course.id":{
                	required: "请输入书号",
                	digits:"书号只能为数字"
                },
                "course.name": "请输入书名",
                "course.bookName":"请输入书名",
                "course.teacherName":"请选择教师",
                "course.bookName":"请选择教材",
            }
        });
    
    });
}();