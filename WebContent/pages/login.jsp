<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>

    <base href="<%=basePath%>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <link rel="shortcut icon" href="#" type="/image/png">

    <title>登录</title>

    <link href="/css/style.css" rel="stylesheet">
    <link href="/css/style-responsive.css" rel="stylesheet">

    <script src="/js/html5shiv.js"></script>
    <script src="/js/respond.min.js"></script>

    <script src="/js/jquery-1.10.2.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/modernizr.min.js"></script>
    <script type="text/javascript" src="/js/login.js"></script>

</head>

<body class="login-body">

<div class="container">

    <form id="loginForm" class="form-signin" action="home">
        <div class="form-signin-heading text-center">
            <h1 class="sign-title">教材征订系统</h1>
            <img src="/../images/login-logo.png" alt=""/>
        </div>
        <div class="login-wrap">
            <div id="midDiv">
                <input type="text" id="mid" name="userName" class="form-control" placeholder="用户名" autofocus>
            </div>
            <div id="passwordDiv">
                <input type="password" id="password" name="password" class="form-control" placeholder="密码">
                <div id="infoSpan" class="text-danger text-center">&nbsp;
                    <%
                        if (request.getAttribute("msg") != null) {
                    %>
                    <%=request.getAttribute("msg")%>
                    <%
                    }
                    %></div>
            </div>
            <button class="btn btn-lg btn-login btn-block" type="submit">
                <i class="fa fa-check"></i>
            </button>

            <div class="registration">
                Not a member yet?
                <a class="" href="registration.html">
                    Signup
                </a>
            </div>
            <label class="checkbox">
                <input type="checkbox" value="remember-me"> Remember me
                <span class="pull-right">
                    <a data-toggle="modal" href="#myModal"> Forgot Password?</a>

                </span>
            </label>

        </div>

        <!-- Modal -->
        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal"
             class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Forgot Password ?</h4>
                    </div>
                    <div class="modal-body">
                        <p>Enter your e-mail address below to reset your password.</p>
                        <input type="text" name="email" placeholder="Email" autocomplete="off"
                               class="form-control placeholder-no-fix">

                    </div>
                    <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
                        <button class="btn btn-primary" type="button">Submit</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- modal -->
    </form>

</div>

</body>
</html>
