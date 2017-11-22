<%--
    Document   : dashboard
    Created on : 14 May, 2016, 9:59:02 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Intranet Portal AMU</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../public/libs/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="../public/libs/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link href="../public/libs/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
        <link href="../public/css/styles.css" rel="stylesheet" type="text/css"/>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        <link rel="apple-touch-icon" sizes="57x57" href="../public/img/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="../public/img/apple-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="../public/img/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="../public/img/apple-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="../public/img/apple-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="../public/img/apple-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="../public/img/apple-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="../public/img/apple-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="../public/img/apple-icon-180x180.png">
        <link rel="icon" type="image/png" sizes="192x192"  href="../public/img/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="32x32" href="../public/img/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="../public/img/favicon-96x96.png">
        <link rel="icon" type="image/png" sizes="16x16" href="../public/img/favicon-16x16.png">
        <link rel="manifest" href="/manifest.json">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="../public/img/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">
    </head>
    <body ng-app="superadmin">
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
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><i class="fa fa-graduation-cap"></i> Aligarh Muslim University Admin Portal</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown" ng-controller="UserCtrl">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="false" aria-expanded="true">
                                <i class="fa fa-bell text-danger"></i>
                                <span class="badge bg-danger" ng-show="{{!person.isVerified}}">{{notification.length}}</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li ng-repeat="alert in notification">
                                    <a ui-sref="{{alert.router}}">{{alert.message}}</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="#">Link</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                <span class="glyphicon glyphicon-user"></span> <%=fullName%>
                                <span class="glyphicon glyphicon-chevron-down"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a ui-sref="profile">Profile</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="adminlogout">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--        <div class="navbar navbar-default" role="navigation" ng-controller="UserCtrl">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a href="#" class="navbar-brand">
                                <i class="fa fa-graduation-cap"></i> Students Portal
                            </a>
                        </div>
                        <div class="collapse navbar-collapse">
                            <ul class="nav navbar-nav navbar-right">
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell text-danger"></i>
                                        <span class="badge">5</span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Link 2</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <span class="glyphicon glyphicon-user"></span>
                                        <strong>{{user.fullName}}</strong>
                                        <span class="glyphicon glyphicon-chevron-down"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <div class="navbar-login">
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <p class="text-center">
                                                            <span class="glyphicon glyphicon-user icon-size"></span>
                                                        </p>
                                                    </div>
                                                    <div class="col-lg-8">
                                                        <p class="text-left"><strong>{{user.name}}</strong></p>
                                                        <p class="text-left small">{{user.email}}</p>
                                                        <p class="text-left">
                                                            <a href="#" class="btn btn-primary btn-block btn-sm">My Profile</a>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <div class="navbar-login navbar-login-session">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <p>
                                                            <a href="#" class="btn btn-danger btn-block">Logout</a>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>-->
        <div class="page-content">
            <div class="row">
                <div class="col-md-2">
                    <div class="sidebar content-box" style="display: block;">
                        <ul class="nav">
                            <!-- Main menu -->
                            <li class="current" ng-controller="UserCtrl">
                                <a href="#">
                                    <i class="fa fa-user-secret"></i> {{user.role| uppercase}}
                                </a>
                            </li>

                            <li class="submenu">
                                <a href="#">
                                    <i class="fa fa-list"></i> Accounts
                                    <span class="caret pull-right"></span>
                                </a>
                                <!-- Sub menu -->
                                <ul>
                                    <li> <a ui-sref="new"><i class="fa fa-wifi"></i> New</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-10">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content-box-large">
                                <div ui-view="contents"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%}%>
            <script src="../public/libs/jquery/dist/jquery.min.js" type="text/javascript"></script>
            <script type="text/javascript" src="../public/libs/bootstrap/dist/js/bootstrap.min.js"></script>
            <script type="text/javascript" src="../public/libs/moment/min/moment.min.js"></script>
            <script src="../public/libs/angular/angular.min.js" type="text/javascript"></script>
            <script src="../public/libs/angular-ui-router/release/angular-ui-router.min.js" type="text/javascript"></script>
            
            <script src="../public/app/services.js" type="text/javascript"></script>
            <script src="../public/app/superadmin.js" type="text/javascript"></script>
            <script type="text/javascript" src="../public/libs/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
            <script src="../public/js/custom.js" type="text/javascript"></script>
</html>
