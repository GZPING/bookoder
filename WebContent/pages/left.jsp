 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <!-- left side start-->
    <div class="left-side sticky-left-side">

        <!--logo and iconic logo start-->
        <div class="logo">
            <a href="index.html"><img src="images/logo.png" alt=""></a>
        </div>

        <div class="logo-icon text-center">
            <a href="index.html"><img src="images/logo_icon.png" alt=""></a>
        </div>
        <!--logo and iconic logo end-->


        <div class="left-side-inner">
            <!-- visible to small devices only -->
            <div class="visible-xs hidden-sm hidden-md hidden-lg">
                <div class="media logged-user">
                    <img alt="" src="images/photos/user-avatar.png" class="media-object">
                    <div class="media-body">
                        <h4><a href="#">John Doe</a></h4>
                        <span>"Hello There..."</span>
                    </div>
                </div>

                <h5 class="left-nav-title">Account Information</h5>
                <ul class="nav nav-pills nav-stacked custom-nav">
                    <li><a href="#"><i class="fa fa-user"></i> <span>Profile</span></a></li>
                    <li><a href="#"><i class="fa fa-cog"></i> <span>Settings</span></a></li>
                    <li><a href="#"><i class="fa fa-sign-out"></i> <span>Sign Out</span></a></li>
                </ul>
            </div>
            <!--sidebar nav start-->
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li><a href="index.html"><i class="fa fa-home"></i> <span>Dashboard</span></a></li>
                <li class="menu-list"><a href=""><i class="fa fa-laptop"></i> <span>教师管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="user/userIndex">查看教师</a></li>
                        <li><a href="user/addUser">添加教师</a></li>
                    </ul>
                </li>
               <li class="menu-list"><a href=""><i class="fa fa-laptop"></i> <span>班级管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="blank_page.html">查看专业</a></li>
                        <li><a href="boxed_view.html">添加专业</a></li>
                        <li><a href="leftmenu_collapsed_view.html"> 查看班级</a></li>
                        <li><a href="leftmenu_collapsed_view.html"> 添加班级</a></li>
                    </ul>
                </li>
                <li class="menu-list"><a href=""><i class="fa fa-book"></i> <span>教学计划管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="course/courseIndex"> 查看课程</a></li>
                        <li><a href="course/addCourse"> 添加课程</a></li>
                        <li><a href="course/verCourse">待审核</a></li>
                    </ul>
                </li>
                <li><a href="login.html"><i class="fa fa-sign-in"></i> <span>查看书籍</span></a></li>
                <li><a href="login.html"><i class="fa fa-sign-in"></i> <span>退出</span></a></li>
            </ul>
            <!--sidebar nav end-->

        </div>
    </div>
    <!-- left side end-->