$(function () {
    $("#mid").on("blur",function () {
        validateMid();
    });
    $("#password").on("blur",function () {
        validateMid();
    });
    $("#loginForm").on("submit",function () {
        return validateMid()&&validatePassword();
    })

});
function validateMid() {
    if ($("#mid").val()=="") {
        $("#midDiv").attr("class", "form-group has-error");
        $("#infoSpan").html("<span class='text-danger text-center'>用户名不能为空</span>");
        return false;
    }else {
        return true;
    }
}
function validatePassword() {
    if ($("#password").val()=="") {
        $("#passwordDiv").attr("class", "form-group has-error");
        $("#infoSpan").html("<span class='text-danger text-center'>密码不能为空</span>");
        return false;
    }else {
        return true;
    }
}
