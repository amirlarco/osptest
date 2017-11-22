<%--
    Document   : sup_dash
    Created on : 12 Jun, 2016, 12 Jun, 2016 7:17:12 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Intranet Portal AMU</title>
        <meta charset="utf-8">
        <link href="../public/css/slidebars.css" rel="stylesheet" type="text/css"/>
        <link href="../public/css/switchery.min.css" rel="stylesheet" type="text/css"/>
        <link href="../public/css/sup_style.css" rel="stylesheet" type="text/css"/>
        <link href="../public/css/style-responsive.css" rel="stylesheet" type="text/css"/>
        <link href="../public/libs/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="../public/css/jquery.dataTables_themeroller.css" rel="stylesheet" type="text/css"/>
        <link href="../public/css/dataTables.tableTools.css" rel="stylesheet" type="text/css"/>
        <link href="../public/css/dataTables.colVis.min.css" rel="stylesheet" type="text/css"/>
        <link href="../public/css/dataTables.responsive.css" rel="stylesheet" type="text/css"/>
        <link href="../public/css/dataTables.scroller.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="sticky-header" ng-app="admin">
        <%
                String fullName = (String)session.getAttribute("fullName");
                String email = (String)session.getAttribute("email");
                String mobile = (String)session.getAttribute("mobile");
                if (request.getSession(false)==null
                        || fullName== null
                        || email == null
                        || mobile == null) {
                    response.sendRedirect("SessionExpired.jsp");
                } else{
        %>
        <section>
            <!-- sidebar left start-->
            <div class="sidebar-left">
                <!--responsive view logo start-->
                <div class="logo dark-logo-bg">
                    <a href="index.html">
                        <img src="img/logo-icon.png" alt="">
                        <!--<i class="fa fa-maxcdn"></i>-->
                        <span class="brand-name">AMU ADMIN</span>
                    </a>
                </div>
                <!--responsive view logo end-->
                <div class="sidebar-left-info" ng-controller="UserCtrl">
                    <!-- visible small devices start-->
                    <div class="search-field"></div>
                    <!-- visible small devices end-->
                    <!--sidebar nav start-->
                    <ul class="nav nav-pills nav-stacked side-navigation">
                        <li>
                            <h3 class="navigation-title">Navigation</h3>
                        </li>
                        <li><a href="#"><i class="fa fa-user-secret"></i> <span>{{user.role| uppercase}}</span></a></li>
                        <li class="menu-list nav-active">
                            <a href="#"><i class="fa fa-users"></i>  <span>Verification</span></a>
                            <ul class="child-list">
                                <li><a ui-sref="students">Students</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- sidebar left end-->

            <!-- body content start-->
            <div class="body-content" style="min-height: 1200px;">

                <!-- header section start-->
                <div class="header-section">

                    <!--logo and logo icon start-->
                    <div class="logo dark-logo-bg hidden-xs hidden-sm">
                        <a href="index.html">
                            <img src="img/logo-icon.png" alt="">
                            <!--<i class="fa fa-maxcdn"></i>-->
                            <span class="brand-name">AMU ADMIN</span>
                        </a>
                    </div>

                    <div class="icon-logo dark-logo-bg hidden-xs hidden-sm">
                        <a href="index.html">
                            <img src="img/logo-icon.png" alt="">
                            <!--<i class="fa fa-maxcdn"></i>-->
                        </a>
                    </div>
                    <!--logo and logo icon end-->

                    <!--toggle button start-->
                    <a class="toggle-btn"><i class="fa fa-outdent"></i></a>
                    <!--toggle button end-->

                    <!--mega menu start-->
                    <div id="navbar-collapse-1" class="navbar-collapse collapse yamm mega-menu">
                        <ul class="nav navbar-nav">
                            <!-- Classic list -->
                            <li class="dropdown"><a href="javascript:;" data-toggle="dropdown" class="dropdown-toggle">Mega <b
                                        class=" fa fa-angle-down"></b></a>
                                <ul class="dropdown-menu wide-full">
                                    <li>
                                        <!-- Content container to add padding -->
                                        <div class="yamm-content">
                                            <div class="row">
                                                <ul class="col-sm-2 list-unstyled">
                                                    <li>
                                                        <p class="title">Standard</p>
                                                    </li>
                                                    <li><a href="javascript:;"> Slick Mega Navigation </a>
                                                    </li>
                                                    <li><a href="javascript:;"> Built in BS3+</a>
                                                    </li>
                                                    <li><a href="javascript:;"> Full Customizable </a>
                                                    </li>
                                                    <li><a href="javascript:;"> Huge Components </a>
                                                    </li>
                                                    <li><a href="javascript:;"> Tons of widgets </a>
                                                    </li>
                                                    <li><a href="javascript:;"> Fontawesome </a>
                                                    </li>
                                                </ul>
                                                <ul class="col-sm-2 list-unstyled">
                                                    <li>
                                                        <p class="title">Description</p>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <span class="d-title">2015 Mordern Design</span>
                                                            <span class="d-desk">Description goes here</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <span class="d-title">Amaging Dashboard</span>
                                                            <span class="d-desk">Build with BS3</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <span class="d-title">3500+ Satisfied Client</span>
                                                            <span class="d-desk">Max 5 star rating</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <span class="d-title">Easy to Cutomize</span>
                                                            <span class="d-desk">Very easy to use</span>
                                                        </a>
                                                    </li>

                                                </ul>
                                                <ul class="col-sm-2 list-unstyled">
                                                    <li>
                                                        <p class="title">Iconic</p>
                                                    </li>
                                                    <li><a href="javascript:;"><i class="fa fa-anchor text-muted"></i> Anchor Icon </a>
                                                    </li>
                                                    <li><a href="javascript:;"><i class="fa fa-desktop text-muted"></i> Desktop Icon </a>
                                                    </li>
                                                    <li><a href="javascript:;"><i class="fa fa-laptop text-muted"></i> Laptop Icon</a>
                                                    </li>
                                                    <li><a href="javascript:;"><i class="fa fa-automobile text-muted"></i> Automobile Icon </a>
                                                    </li>
                                                    <li><a href="javascript:;"><i class="fa fa-briefcase text-muted"></i> Briefcase Icon</a>
                                                    </li>
                                                </ul>
                                                <ul class="col-sm-3 list-unstyled">
                                                    <li>
                                                        <p class="title">Image + Description</p>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <img class="icon-img" src="img/mega-menu/mega_icon1.png" alt="" />
                                                            <span class="icon-desk">
                                                                <span class="d-title">Full Flat Concept</span>
                                                                <span class="d-desk">Description goes here</span>
                                                            </span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <img class="icon-img" src="img/mega-menu/mega_icon2.png" alt="" />
                                                            <span class="icon-desk">
                                                                <span class="d-title">Amaging Dashboard</span>
                                                                <span class="d-desk">Build with BS3</span>
                                                            </span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <img class="icon-img" src="img/mega-menu/mega_icon3.png" alt="" />
                                                            <span class="icon-desk">
                                                                <span class="d-title">3500+ Satisfied Client</span>
                                                                <span class="d-desk">Max 5 star rating</span>
                                                            </span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <img class="icon-img" src="img/mega-menu/mega_icon4.png" alt="" />
                                                            <span class="icon-desk">
                                                                <span class="d-title">Easy to Cutomize</span>
                                                                <span class="d-desk">Very easy to use</span>
                                                            </span>
                                                        </a>
                                                    </li>

                                                </ul>
                                                <ul class="col-sm-3 list-unstyled custom-nav-img">
                                                    <li>
                                                        <p class="title">Custom</p>
                                                    </li>
                                                    <li>

                                                        <p class="desk">Ipsum dolor sit amet, consectetur adipisicing elit.
                                                            Asperiores aut, autem commodi cumque illum pariatur
                                                            vero. Ad adipisci animi delectus</p>
                                                    </li>
                                                    <li><span class="mega-bg"></span></li>
                                                </ul>

                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>

                            <!-- Classic dropdown -->
                            <li class="dropdown"><a href="javascript:;" data-toggle="dropdown" class="dropdown-toggle"> English  <b
                                        class=" fa fa-angle-down"></b></a>
                                <ul role="menu" class="dropdown-menu language-switch">
                                    <li>
                                        <a tabindex="-1" href="javascript:;"><span> German </span><img src="img/flags/germany_flag.jpg" alt=""/></a>
                                    </li>
                                    <li>
                                        <a tabindex="-1" href="javascript:;"><span> Italian </span> <img src="img/flags/italy_flag.jpg" alt=""/></a>
                                    </li>
                                    <li>
                                        <a tabindex="-1" href="javascript:;"><span> French </span> <img src="img/flags/french_flag.jpg" alt=""/></a>
                                    </li>
                                    <li>
                                        <a tabindex="-1" href="javascript:;"><span> Spanish </span> <img src="img/flags/spain_flag.jpg" alt=""/></a>
                                    </li>
                                    <li>
                                        <a tabindex="-1" href="javascript:;"><span> Russian </span> <img src="img/flags/russia_flag.jpg" alt=""/></a>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                    <!--mega menu end-->
                    <div class="notification-wrap">
                        <!--left notification start-->
                        <div class="left-notification">
                            <ul class="notification-menu">
                                <!--mail info start-->
                                <li class="d-none">
                                    <a href="javascript:;" class="btn btn-default dropdown-toggle info-number" data-toggle="dropdown">
                                        <i class="fa fa-envelope-o"></i>
                                        <span class="badge bg-primary">6</span>
                                    </a>

                                    <div class="dropdown-menu dropdown-title">
                                        <div class="title-row">
                                            <h5 class="title purple">
                                                You have 6 Unread Mail
                                            </h5>
                                            <a href="javascript:;" class="btn-primary btn-view-all">View all</a>
                                        </div>
                                        <div class="notification-list mail-list">
                                            <a href="javascript:;" class="single-mail">
                                                <span class="icon bg-primary">
                                                    S
                                                </span>
                                                <strong>Smith Doe</strong>
                                                <small> Just Now</small>
                                                <p>
                                                    <small>Hello smith i have some query about your</small>
                                                </p>
                                                <span class="un-read tooltips" data-original-title="Mark as Read" data-toggle="tooltip" data-placement="left">
                                                    <i class="fa fa-circle"></i>
                                                </span>
                                            </a>
                                            <a href="javascript:;" class="single-mail">
                                                <span class="icon bg-success">
                                                    A
                                                </span>
                                                <strong>Anthony Jones </strong>
                                                <small> 30 Mins Ago</small>
                                                <p>
                                                    <small>Hello this is an example message</small>
                                                </p>
                                                <span class="un-read tooltips" data-original-title="Mark as Read" data-toggle="tooltip" data-placement="left">
                                                    <i class="fa fa-circle"></i>
                                                </span>
                                            </a>
                                            <a href="javascript:;" class="single-mail">
                                                <span class="icon bg-warning">
                                                    B
                                                </span> Billy Jones
                                                <small> 2 Days Ago</small>
                                                <p>
                                                    <small>AMU ADMIN is awesome Dashboard</small>
                                                </p>
                                                <span class="read tooltips" data-original-title="Mark as Unread" data-toggle="tooltip" data-placement="left">
                                                    <i class="fa fa-circle-o"></i>
                                                </span>
                                            </a>
                                            <a href="javascript:;" class="single-mail">
                                                <span class="icon bg-dark">
                                                    J
                                                </span> John Doe
                                                <small> 1 Week Ago</small>
                                                <p>
                                                    <small>Build with Twitter Bootstrap 3</small>
                                                </p>
                                                <span class="read tooltips" data-original-title="Mark as Unread" data-toggle="tooltip" data-placement="left">
                                                    <i class="fa fa-circle-o"></i>
                                                </span>
                                            </a>
                                            <a href="javascript:;" class="single-mail">
                                                <span class="icon bg-danger">
                                                    S
                                                </span> Smith Doe
                                                <small> Just Now</small>
                                                <p>
                                                    <small>No hassle, very easy to use</small>
                                                </p>
                                                <span class="read tooltips" data-original-title="Mark as Unread" data-toggle="tooltip" data-placement="left">
                                                    <i class="fa fa-circle-o"></i>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <!--mail info end-->

                                <!--task info start-->
                                <li class="d-none">
                                    <a href="javascript:;" class="btn btn-default dropdown-toggle info-number" data-toggle="dropdown">
                                        <i class="fa fa-tasks"></i>
                                        <span class="badge bg-success">9</span>
                                    </a>

                                    <div class="dropdown-menu dropdown-title">
                                        <div class="title-row">
                                            <h5 class="title green">
                                                You have 9 task
                                            </h5>
                                            <a href="javascript:;" class="btn-success btn-view-all">View all</a>
                                        </div>
                                        <div class="notification-list task-list">
                                            <a href="javascript:;">
                                                <span class="icon ">
                                                    <i class="fa fa-paw green-color"></i>
                                                </span>
                                                <span class="task-info">
                                                    Smith Doe
                                                    <small> Assigned new task 10 min ago</small>
                                                </span>
                                            </a>
                                            <a href="javascript:;">
                                                <span class="icon ">
                                                    <i class="fa fa-line-chart blue-color"></i>
                                                </span>
                                                <span class="task-info">Anthony Jones
                                                    <small> Done 60% of his task</small>

                                                    <div class="progress progress-striped">
                                                        <div style="width: 66%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="66" role="progressbar" class="progress-bar progress-bar-info"></div>
                                                    </div>

                                                </span>
                                            </a>
                                            <a href="javascript:;">
                                                <span class="icon ">
                                                    <i class="fa fa-heart purple-color"></i>
                                                </span>
                                                <span class="task-info">Tawseef
                                                    <small> Like your task 10 min ago</small>
                                                </span>

                                            </a>
                                            <a href="javascript:;">
                                                <span class="icon ">
                                                    <i class="fa fa-check green-color"></i>
                                                </span>
                                                <span class="task-info">Anjelina Gomez
                                                    <small>completed his task Yesterday</small>
                                                </span>
                                            </a>
                                            <a href="javascript:;">
                                                <span class="icon ">
                                                    <i class="fa fa-comments-o"></i>
                                                </span>
                                                <span class="task-info">Franklin Anderson
                                                    <small>commented on your task 3 Days ago</small>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <!--task info end-->

                                <!--notification info start-->
                                <li>
                                    <a href="javascript:;" class="btn btn-default dropdown-toggle info-number" data-toggle="dropdown">
                                        <i class="fa fa-bell-o"></i>
                                        <span class="badge bg-warning">4</span>
                                    </a>

                                    <div class="dropdown-menu dropdown-title ">

                                        <div class="title-row">
                                            <h5 class="title yellow">
                                                You have 4 New Notification
                                            </h5>
                                            <a href="javascript:;" class="btn-warning btn-view-all">View all</a>
                                        </div>
                                        <div class="notification-list-scroll sidebar">
                                            <div class="notification-list mail-list not-list">
                                                <a href="javascript:;" class="single-mail">
                                                    <span class="icon bg-primary">
                                                        <i class="fa fa-envelope-o"></i>
                                                    </span>
                                                    <strong>New User Registration</strong>

                                                    <p>
                                                        <small>Just Now</small>
                                                    </p>
                                                    <span class="un-read tooltips" data-original-title="Mark as Read" data-toggle="tooltip" data-placement="left">
                                                        <i class="fa fa-circle"></i>
                                                    </span>
                                                </a>
                                                <a href="javascript:;" class="single-mail">
                                                    <span class="icon bg-success">
                                                        <i class="fa fa-comments-o"></i>
                                                    </span>
                                                    <strong> Private message Send</strong>

                                                    <p>
                                                        <small>30 Mins Ago</small>
                                                    </p>
                                                    <span class="un-read tooltips" data-original-title="Mark as Read" data-toggle="tooltip" data-placement="left">
                                                        <i class="fa fa-circle"></i>
                                                    </span>
                                                </a>
                                                <a href="javascript:;" class="single-mail">
                                                    <span class="icon bg-warning">
                                                        <i class="fa fa-warning"></i>
                                                    </span> Application Error
                                                    <p>
                                                        <small> 2 Days Ago</small>
                                                    </p>
                                                    <span class="read tooltips" data-original-title="Mark as Unread" data-toggle="tooltip" data-placement="left">
                                                        <i class="fa fa-circle-o"></i>
                                                    </span>
                                                </a>
                                                <a href="javascript:;" class="single-mail">
                                                    <span class="icon bg-dark">
                                                        <i class="fa fa-database"></i>
                                                    </span> Database Overloaded 24%
                                                    <p>
                                                        <small>1 Week Ago</small>
                                                    </p>
                                                    <span class="read tooltips" data-original-title="Mark as Unread" data-toggle="tooltip" data-placement="left">
                                                        <i class="fa fa-circle-o"></i>
                                                    </span>
                                                </a>
                                                <a href="javascript:;" class="single-mail">
                                                    <span class="icon bg-danger">
                                                        <i class="fa fa-warning"></i>
                                                    </span>
                                                    <strong>Server Failed Notification</strong>

                                                    <p>
                                                        <small>10 Days Ago</small>
                                                    </p>
                                                    <span class="un-read tooltips" data-original-title="Mark as Read" data-toggle="tooltip" data-placement="left">
                                                        <i class="fa fa-circle"></i>
                                                    </span>
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <!--notification info end-->
                            </ul>
                        </div>
                        <!--left notification end-->


                        <!--right notification start-->
                        <div class="right-notification">
                            <ul class="notification-menu">
                                <li>
                                    <form class="search-content" action="index.html" method="post">
                                        <input type="text" class="form-control" name="keyword" placeholder="Search...">
                                    </form>
                                </li>

                                <li ng-controller="UserCtrl">
                                    <a href="javascript:;" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                        <img src="../public/img/10059872.jpg" alt="">{{user.fullName}}
                                        <span class=" fa fa-angle-down"></span>
                                    </a>
                                    <ul class="dropdown-menu dropdown-usermenu purple pull-right">
                                        <li><a href="javascript:;">  Profile</a></li>
                                        <li>
                                            <a href="javascript:;">
                                                <span class="badge bg-danger pull-right">40%</span>
                                                <span>Settings</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <span class="label bg-info pull-right">new</span>
                                                Help
                                            </a>
                                        </li>
                                        <li><a href="adminlogout"><i class="fa fa-power-off pull-right"></i> Log Out</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <div class="sb-toggle-right">
                                        <i class="fa fa-indent"></i>
                                    </div>
                                </li>

                            </ul>
                        </div>
                        <!--right notification end-->
                    </div>

                </div>
                <!-- header section end-->

                <!-- page head start-->
                <div class="page-head">
                    <h3>
                        Dashboard
                    </h3>
                    <span class="sub-title">Welcome to AMU ADMIN dashboard</span>
                    <div class="state-information">
                        <div class="state-graph">
                            <div id="balance" class="chart"></div>
                            <div class="info">Balance $ 2,317</div>
                        </div>
                        <div class="state-graph">
                            <div id="item-sold" class="chart"></div>
                            <div class="info">Item Sold 1230</div>
                        </div>
                    </div>
                </div>
                <!-- page head end-->

                <!--body wrapper start-->
                <div class="wrapper">

                    <div ui-view="contents"></div>

                </div>
                <!--body wrapper end-->


                <!--footer section start-->
                <footer>
                    2016 &copy; AMU ADMIN
                    <span class="pull-right">Pen <i class='fa fa-paint-brush'></i> + <i class='fa fa-code'></i> by <a href='http://www.amu.ac.in/centreshowfacultydata2.jsp?did=10010&eid=10059872' target="_blank">Mohammad Amir</a></span>

                </footer>
                <!--footer section end-->


                <!-- Right Slidebar start -->
                <div class="sb-slidebar sb-right sb-style-overlay">
                    <div class="right-bar">

                        <span class="r-close-btn sb-close"><i class="fa fa-times"></i></span>

                        <ul class="nav nav-tabs nav-justified-">
                            <li class="active">
                                <a href="#chat" data-toggle="tab">Chat</a>
                            </li>
                            <li class="">
                                <a href="#info" data-toggle="tab">Info</a>
                            </li>
                            <li class="">
                                <a href="#settings" data-toggle="tab">Settings</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active " id="chat">
                                <div class="online-chat">
                                    <div class="online-chat-container">
                                        <div class="chat-list">
                                            <h3>Chat list</h3>
                                            <h5>34 Friends Online, 80 Offline</h5>
                                            <a href="#" class="add-people tooltips" data-original-title="Add People" data-toggle="tooltip" data-placement="left">
                                                <i class="fa fa-plus"></i>
                                            </a>
                                        </div>
                                        <div class="side-title">
                                            <h2>online</h2>
                                            <div class="title-border-row">
                                                <div class="title-border"></div>
                                            </div>
                                        </div>

                                        <ul class="team-list chat-list-side">
                                            <li>
                                                <a href="#">
                                                    <span class="thumb-small">
                                                        <img class="circle" src="img/img2.jpg" alt="">
                                                        <i class="online dot"></i>
                                                    </span>
                                                    <div class="inline">
                                                        <span class="name">
                                                            Alison Jones
                                                        </span>
                                                        <small class="text-muted">Start exploring</small>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="thumb-small">
                                                        <img class="circle" src="img/img3.jpg" alt="">
                                                        <i class="online dot"></i>
                                                    </span>
                                                    <div class="inline">
                                                        <span class="name">
                                                            Jonathan Smith
                                                        </span>
                                                        <small class="text-muted">Alien Inside</small>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="thumb-small">
                                                        <img class="circle" src="img/img1.jpg" alt="">
                                                        <i class="away dot"></i>
                                                    </span>
                                                    <div class="inline">
                                                        <span class="name">
                                                            Anjelina Doe
                                                        </span>
                                                        <small class="text-muted">Screaming...</small>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="thumb-small">
                                                        <img class="circle" src="img/img3.jpg" alt="">
                                                        <i class="busy dot"></i>
                                                    </span>
                                                    <div class="inline">
                                                        <span class="name">
                                                            Franklin Adam
                                                        </span>
                                                        <small class="text-muted">Don't lose the hope</small>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="thumb-small">
                                                        <img class="circle" src="img/img2.jpg" alt="">
                                                        <i class="online dot"></i>
                                                    </span>
                                                    <div class="inline">
                                                        <span class="name">
                                                            Jeff Crowford
                                                        </span>
                                                        <small class="text-muted">Just flying</small>
                                                    </div>
                                                </a>
                                            </li>

                                        </ul>

                                        <div class="side-title">
                                            <h2>Offline</h2>
                                            <div class="title-border-row">
                                                <div class="title-border"></div>
                                            </div>
                                        </div>
                                        <ul class="team-list chat-list-side">
                                            <li>
                                                <a href="#">
                                                    <span class="thumb-small">
                                                        <img class="circle" src="img/img2.jpg" alt="">
                                                        <i class="offline dot"></i>
                                                    </span>
                                                    <div class="inline">
                                                        <span class="name">
                                                            Alison Jones
                                                        </span>
                                                        <small class="text-muted">Start exploring</small>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="thumb-small">
                                                        <img class="circle" src="img/img3.jpg" alt="">
                                                        <i class="offline dot"></i>
                                                    </span>
                                                    <div class="inline">
                                                        <span class="name">
                                                            Jonathan Smith
                                                        </span>
                                                        <small class="text-muted">Alien Inside</small>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="thumb-small">
                                                        <img class="circle" src="img/img1.jpg" alt="">
                                                        <i class="offline dot"></i>
                                                    </span>
                                                    <div class="inline">
                                                        <span class="name">
                                                            Anjelina Doe
                                                        </span>
                                                        <small class="text-muted">Screaming...</small>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="thumb-small">
                                                        <img class="circle" src="img/img3.jpg" alt="">
                                                        <i class="offline dot"></i>
                                                    </span>
                                                    <div class="inline">
                                                        <span class="name">
                                                            Franklin Adam
                                                        </span>
                                                        <small class="text-muted">Don't lose the hope</small>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="thumb-small">
                                                        <img class="circle" src="img/img2.jpg" alt="">
                                                        <i class="offline dot"></i>
                                                    </span>
                                                    <div class="inline">
                                                        <span class="name">
                                                            Jeff Crowford
                                                        </span>
                                                        <small class="text-muted">Just flying</small>
                                                    </div>
                                                </a>
                                            </li>

                                        </ul>
                                    </div>


                                </div>


                            </div>

                            <div role="tabpanel" class="tab-pane " id="info">
                                <div class="chat-list info">
                                    <h3>Latest Information</h3>
                                    <a href="#" class="add-people tooltips" data-original-title="Refresh" data-toggle="tooltip" data-placement="left">
                                        <i class="fa fa-repeat"></i>
                                    </a>
                                </div>
                                <div class="aside-widget">
                                    <div class="side-title-alt">
                                        <h2>Revenue</h2>
                                        <a href="#" class="close side-w-close">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </div>
                                    <ul class="team-list chat-list-side info">
                                        <li>
                                            <span class="thumb-small">
                                                <i class="fa fa-circle green-color"></i>
                                            </span>
                                            <div class="inline">
                                                <span class="name">
                                                    Received Money from John Doe
                                                </span>
                                                <span class="value green-color">$12300</span>
                                            </div>
                                        </li>
                                        <li>
                                            <span class="thumb-small">
                                                <i class="fa fa-circle purple-color"></i>
                                            </span>
                                            <div class="inline">
                                                <span class="name">
                                                    Total Admin Template Sales
                                                </span>
                                                <span class="value purple-color">$40100</span>
                                            </div>
                                        </li>
                                        <li>
                                            <span class="thumb-small">
                                                <i class="fa fa-circle red-color"></i>
                                            </span>
                                            <div class="inline">
                                                <span class="name">
                                                    Monty Revenue
                                                </span>
                                                <span class="value red-color">$322300</span>
                                            </div>
                                        </li>
                                        <li>
                                            <span class="thumb-small">
                                                <i class="fa fa-circle blue-color"></i>
                                            </span>
                                            <div class="inline">
                                                <span class="name">
                                                    Received Money from John Doe
                                                </span>
                                                <span class="value blue-color">$1520</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                                <div class="aside-widget">

                                    <div class="side-title-alt">
                                        <h2>Statistics</h2>
                                        <a href="#" class="close side-w-close">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </div>
                                    <ul class="team-list chat-list-side info statistics border-less-list">
                                        <li>
                                            <div class="inline">
                                                <span class="name">
                                                    Foreign Visit
                                                </span>
                                                <small class="text-muted">25% Increase</small>
                                            </div>
                                            <span class="thumb-small">
                                                <span id="foreign-visit" class="chart"></span>
                                            </span>
                                        </li>
                                        <li>
                                            <div class="inline">
                                                <span class="name">
                                                    Montly Visit
                                                </span>
                                                <small class="text-muted">Average visit 12% Increase</small>
                                            </div>
                                            <span class="thumb-small">
                                                <span id="monthly-visit" class="chart"></span>
                                            </span>
                                        </li>
                                        <li>
                                            <div class="inline">
                                                <span class="name">
                                                    Unique Visit
                                                </span>
                                                <small class="text-muted">35% unique visitor </small>
                                            </div>
                                            <span class="thumb-small">
                                                <span id="unique-visit" class="chart"></span>
                                            </span>
                                        </li>
                                    </ul>
                                </div>

                                <div class="aside-widget">
                                    <div class="side-title-alt">
                                        <h2>Notification</h2>
                                        <a href="#" class="close side-w-close">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </div>
                                    <ul class="team-list chat-list-side info border-less-list">
                                        <li>
                                            <span class="thumb-small">
                                                <i class="fa fa-bell green-color"></i>
                                            </span>
                                            <div class="inline">
                                                <span class="name">
                                                    Meeting with John Doe at
                                                </span>
                                                <span class="value text-muted">11.30 am</span>
                                            </div>
                                        </li>
                                        <li>
                                            <span class="thumb-small">
                                                <i class="fa fa-users green-color"></i>
                                            </span>
                                            <div class="inline">
                                                <span class="name">
                                                    3 membership request pending
                                                </span>
                                                <span class="value text-muted">John, Smith, Lira</span>
                                            </div>
                                        </li>
                                    </ul>

                                </div>


                                <div class="aside-widget">


                                    <div class="side-title-alt">
                                        <h2>System</h2>
                                        <a href="#" class="close side-w-close">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </div>
                                    <ul class="team-list chat-list-side info border-less-list">
                                        <li>
                                            <div class="inline">
                                                <span class="name">
                                                    Received database error report from hosting provider
                                                </span>
                                                <span class="value text-muted">11.30 am</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="inline">
                                                <span class="name">
                                                    Hosting Renew notification
                                                </span>
                                                <span class="value text-muted">12.00 pm</span>
                                            </div>
                                        </li>

                                    </ul>
                                </div>


                                <div class="aside-widget">
                                    <div class="side-title-alt">
                                        <h2>Work Progress</h2>
                                        <a href="#" class="close side-w-close">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </div>
                                    <ul class="team-list chat-list-side info border-less-list sale-monitor">
                                        <li>
                                            <div class="states">
                                                <div class="info">
                                                    <div class="desc pull-left">Server Setup and Configuration</div>
                                                </div>
                                                <div class="progress progress-xs">
                                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 50%"></div>
                                                </div>
                                                <div class="info">
                                                    <small class="percent pull-left text-muted">50% completed</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="states">
                                                <div class="info">
                                                    <div class="desc pull-left">Website Design & Development</div>
                                                </div>
                                                <div class="progress progress-xs">
                                                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 85%"></div>
                                                </div>
                                                <div class="info">
                                                    <small class="percent pull-left text-muted">85% completed</small>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                            </div>

                            <div role="tabpanel" class="tab-pane " id="settings">
                                <div class="chat-list bottom-border settings-head">
                                    <h3>Account Setting</h3>
                                    <h5>Configure your account as per your need.</h5>
                                </div>
                                <ul class="team-list chat-list-side info statistics border-less-list setting-list">
                                    <li>
                                        <div class="inline">
                                            <span class="name">
                                                Make my feature post public?
                                            </span>
                                            <small class="text-muted">Everyone will be able to see, like, comment
                                                and share your feature post.</small>
                                        </div>
                                        <span class="thumb-small">
                                            <input type="checkbox" class="js-switch-small" checked/>
                                        </span>
                                    </li>
                                    <li>
                                        <div class="inline">
                                            <span class="name">
                                                Show offline Contacts
                                            </span>
                                            <small class="text-muted">Lorem ipsum dolor sit amet, consectetuer
                                                adipiscing elit.</small>
                                        </div>
                                        <span class="thumb-small">
                                            <input type="checkbox" class="js-switch-small2" checked/>
                                        </span>
                                    </li>

                                    <li>
                                        <div class="inline">
                                            <span class="name">
                                                Everyone will see my stuff
                                            </span>
                                            <small class="text-muted">Lorem ipsum dolor sit amet, consectetuer
                                                adipiscing elit.</small>
                                        </div>
                                        <span class="thumb-small">
                                            <input type="checkbox" class="js-switch-small3"/>
                                        </span>
                                    </li>

                                </ul>

                                <div class="chat-list bottom-border settings-head">
                                    <h3>General Setting</h3>
                                    <h5>Configure your account as per your need.</h5>
                                </div>
                                <ul class="team-list chat-list-side info statistics border-less-list setting-list">
                                    <li>
                                        <div class="inline">
                                            <span class="name">
                                                Show me Online
                                            </span>
                                        </div>
                                        <span class="thumb-small">
                                            <input type="checkbox" class="js-switch-small4" checked/>
                                        </span>
                                    </li>
                                    <li>
                                        <div class="inline">
                                            <span class="name">
                                                Status visible to all
                                            </span>
                                        </div>
                                        <span class="thumb-small">
                                            <input type="checkbox" class="js-switch-small5" />
                                        </span>
                                    </li>

                                    <li>
                                        <div class="inline">
                                            <span class="name">
                                                Show my work progess to all
                                            </span>
                                        </div>
                                        <span class="thumb-small">
                                            <input type="checkbox" class="js-switch-small6" checked/>
                                        </span>
                                    </li>

                                </ul>

                            </div>

                        </div>
                    </div>
                </div>
                <!-- Right Slidebar end -->

            </div>
            <!-- body content end-->
        </section>
        <%}%>

        <script src="../public/js/jquery-1.10.2.min.js" type="text/javascript"></script>
        <script src="../public/js/jquery-migrate.js" type="text/javascript"></script>
        <script src="../public/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../public/js/modernizr.min.js" type="text/javascript"></script>
        <script src="../public/js/jquery.nicescroll.js" type="text/javascript"></script>
        <script src="../public/js/slidebars.min.js" type="text/javascript"></script>
        <script src="../public/js/switchery.min.js" type="text/javascript"></script>
        <script src="../public/js/switchery-init.js" type="text/javascript"></script>
        <script src="../public/js/jquery.sparkline.js" type="text/javascript"></script>
        <script src="../public/js/sparkline-init.js" type="text/javascript"></script>
        <script src="../public/js/scripts.js" type="text/javascript"></script>
        <script src="../public/libs/angular/angular.min.js" type="text/javascript"></script>
        
        <script src="../public/libs/angular-ui-router/release/angular-ui-router.min.js" type="text/javascript"></script>                
        
        <script src="../public/app/services.js" type="text/javascript"></script>
        <script src="../public/app/admin.js" type="text/javascript"></script>

        <script src="../public/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="../public/js/dataTables.tableTools.min.js" type="text/javascript"></script>
        <script src="../public/js/bootstrap-dataTable.js" type="text/javascript"></script>
        <script src="../public/js/dataTables.colVis.min.js" type="text/javascript"></script>
        <script src="../public/js/dataTables.responsive.min.js" type="text/javascript"></script>
        <script src="../public/js/dataTables.scroller.min.js" type="text/javascript"></script>
        <script src="../public/js/data-table-init.js" type="text/javascript"></script>
    </body>
</html>
