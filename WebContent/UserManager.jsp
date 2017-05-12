<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <link rel="shortcut icon" href="#" type="image/png">

    <title>教材征订系统</title>

    <!--dynamic table-->
    <link href="js/advanced-datatable/css/demo_page.css" rel="stylesheet"/>
    <link href="js/advanced-datatable/css/demo_table.css" rel="stylesheet"/>
    <link rel="stylesheet" href="js/data-tables/DT_bootstrap.css"/>

    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">

    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="js/jquery-migrate-1.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/modernizr.min.js"></script>
    <script src="js/jquery.nicescroll.js"></script>

    <!--dynamic table-->
    <script type="text/javascript" src="js/advanced-datatable/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>
    <!--dynamic table initialization -->
    <script src="js/dynamic_table_init.js"></script>

    <!--common scripts for all pages-->
    <script src="js/scripts.js"></script>

</head>

<body class="sticky-header">


<section>
    <!-- left side start-->
    <%@include file="/pages/left.jsp" %>
    <!-- left side end-->

    <!-- main content start-->
    <div class="main-content">

        <!-- header section start-->
        <%@include file="/pages/topMenu.jsp" %>
        <!-- header section end-->

        <!-- page heading start-->
        <div class="page-heading">
            <h3>
                用户管理
            </h3>

        </div>
        <!-- page heading end-->

        <!--body wrapper start-->
        <div class="wrapper">
            <div class="row">
                <div class="col-sm-12">
                    <section class="panel">
                        <header class="panel-heading">
                            用户表
                            <span class="tools pull-right">
                                 <a href="javascript:;" class="fa fa-chevron-down"></a>
                            </span>
                        </header>
                        <div class="panel-body">
                            <div class="adv-table">
                                <div class="btn-group pull-right">
                                    <a data-toggle="modal" href="#addUser">
                                        <button class="btn btn-primary ">
                                            添加用户 <i class="fa fa-plus"></i>
                                        </button>
                                    </a>
                                </div>
                                <table class="display table table-bordered table-striped" id="dynamic-table">
                                    <thead>
                                    <tr>
                                        <th>用户编号</th>
                                        <th>姓名</th>
                                        <th>电话</th>
                                        <th>邮箱</th>
                                        <th>描述</th>
                                        <th>权限</th>
                                        <th>修改</th>
                                        <th>删除</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <s:iterator value="users" status="st">
                                        <tr class="">
                                            <td><s:property value="id"/></td>
                                            <td><s:property value="name"/></td>
                                            <td><s:property value="phoneNumber"/></td>
                                            <td><s:property value="mail"/></td>
                                            <td><s:property value="description"/></td>
                                            <td class="center"><s:property value="admin"/></td>
                                            <td><a data-toggle="modal" href="#changeAdmin">权限修改</a></td>
                                            <td><a data-toggle="modal" href="javascript:void(0)"
                                                   onclick="del(this)">删除</a></td>
                                        </tr>
                                    </s:iterator>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <!--body wrapper end-->


    </div>
    <!-- main content end-->

    <!-- 修改权限模块 -->
    <form class="form-signin">
        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="changeAdmin"
             class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">修改用户权限</h4>
                    </div>
                    <div class="modal-body">
                        <p>选择新的用户权限</p>
                        <div class="form-group">
                            <select class="form-control input-lg " name="newAdmin">
                                <option value="101">供应商</option>
                                <option value="102">采购员</option>
                                <option value="103">校级管理员</option>
                                <option value="104">院级管理员</option>
                                <option value="104">老师</option>
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-default" type="button">取消</button>
                        <button class="btn btn-primary" type="button">确定</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!-- 添加用户模块 -->
    <form class="form-signin" action="userAdd">
        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="addUser"
             class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">添加用户</h4>
                    </div>
                    <div class="login-wrap">
                        <input type="text" name="userName" autofocus="" placeholder="用户名" class="form-control">
                        <input type="text" name="userPhone" autofocus="" placeholder="电话" class="form-control">
                        <input type="text" name="userMail" autofocus="" placeholder="邮箱" class="form-control">
                        <input type="password" name="userPassword" autofocus="" placeholder="密码" class="form-control">
                        <p>用户权限</p>
                        <div class="form-group">
                            <select class="form-control input-lg " name="userAdmin">
                                <option value="101">供应商</option>
                                <option value="102">采购员</option>
                                <option value="103">校级管理员</option>
                                <option value="104">院级管理员</option>
                                <option value="104">老师</option>
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-default" type="button">取消</button>
                        <button class="btn btn-primary" type="submit">确定</button>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- 删除用户模块 -->
    <form class="form-signin" action="deleteUser">
        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="deleteUser"
             class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">确定删除用户<s:property value="id"/></h4>
                    </div>
                    <input type="hidden" name="id">
                    <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-default" type="button">取消</button>
                        <button class="btn btn-primary" type="submit">确定</button>
                    </div>
                </div>
            </div>
        </div>
    </form>

</section>

<!-- Placed js at the end of the document so the pages load faster -->


</body>
</html>
