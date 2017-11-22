<%--
    Document   : dashboard
    Created on : 14 May, 2016, 02:59:02 AM
    Author     : HP
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Students Portal: Dashboard</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../public/libs/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="../public/libs/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />        
        <link href="../public/libs/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css"/>
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
        <link href="../public/css/animate.css" rel="stylesheet" type="text/css"/>
        <link href="../public/css/process_steps.css" rel="stylesheet" type="text/css"/>
        <link rel="manifest" href="/manifest.json">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="../public/img/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">
    </head>
    <body ng-app="students"  ng-controller="ServicesCtlr">
        <%
            String fullName = (String) session.getAttribute("fullName");
            String email = (String) session.getAttribute("email");
            String enroll = (String) session.getAttribute("enroll");
            String mobile = (String) session.getAttribute("mobile");
            if (request.getSession(false) == null
                    || fullName == null
                    || enroll == null
                    || email == null
                    || mobile == null) {
                response.sendRedirect("SessionExpired.jsp");
            } else {
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
                    <a class="navbar-brand" href="#"><i class="fa fa-graduation-cap"></i> Students Portal</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="false" aria-expanded="true">
                                <i class="fa fa-bell text-danger"></i>
                                <span class="badge bg-danger">{{notification.length}}</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li ng-repeat="alert in notification">
                                    <a ui-sref="{{alert.router}}">{{alert.message}}</a>
                                </li>
                            </ul>
                        </li>                        
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                <span class="glyphicon glyphicon-user"></span> {{user.fullName}}
                                <span class="glyphicon glyphicon-chevron-down"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a ui-sref="profile">Profile</a></li>
                                <li><a ui-sref="password_reset">Reset Password</a></li>
                                <li><a ui-sref="feedback">Feedback/Suggestion</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="logout">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>        
        <div class="page-content">
            <div class="row">
                <div class="col-md-2">
                    <div class="sidebar content-box" style="display: block;">
                        <ul class="nav">
                            <!-- Main menu -->
                            <li class="current"><a href="#"><i class="glyphicon glyphicon-home"></i> Dashboard</a></li>

                            <li class="submenu" ng-show="user.isNew">
                                <a href="#">
                                    <i class="glyphicon glyphicon-paste"></i> Apply for
                                    <span class="caret pull-right"></span>
                                </a>
                                <!-- Sub menu -->
                                <ul>
                                    <li> <a ui-sref="apply_wifi"><i class="fa fa-wifi"></i> WiFi</a></li>
                                    <li ng-if="user.profile.courseType === 'PHD' || user.profile.courseType === 'PDF'"> <a ui-sref="apply_email"><i class="fa fa-at"></i> Email</a></li>
<!--                                    <li ng-if="user.profile.courseType === 'Research' || user.profile.courseType === 'PDF'"> <a ui-sref="apply_rchlab"><i class="fa fa-graduation-cap"></i> Research Lab</a></li>-->
                                </ul>
                            </li>
                            <li class="submenu" ng-show="user.isNew">
                                <a href="#">
                                    <i class="glyphicon glyphicon-edit"></i> Edit Profile
                                    <span class="caret pull-right"></span>
                                </a>
                                <!-- Sub menu -->
                                <ul>
                                    <li> <a ui-sref="personal"><i class="fa fa-graduation-cap"></i> Academic</a></li>
                                    <li> <a ui-sref="contact"><i class="glyphicon glyphicon-phone"></i> My Contact</a></li>
                                    <li> <a ui-sref="uploads"><i class="fa fa-upload"></i> Uploads</a></li>                                    
                                </ul>
                            </li>
                            <li class="submenu">
                                <a href="#">
                                    <i class="glyphicon glyphicon-headphones"></i> Support
                                    <span class="caret pull-right"></span>
                                </a>
                                <ul>
                                    <li> <a ui-sref="contactsview"><i class="glyphicon glyphicon-phone"></i> Change Contact</a></li>
                                    <li> <a ui-sref="change_mac"><i class="glyphicon glyphicon-cog"></i> Change MAC</a></li>
                                    <li> <a ui-sref="change_wifi_passwd"><i class="fa fa-key"></i> Change WiFi Password</a></li>
                                </ul>
                            </li>
                            <li class="submenu" ng-show="!user.isNew">
                                <a href="#">
                                    <i class="glyphicon glyphicon-repeat"></i> Continuation
                                    <span class="caret pull-right"></span>
                                </a>
                                <ul>
                                    <li> <a ui-sref="renew"><i class="glyphicon glyphicon-refresh"></i> Continue</a></li>
                                    <li> <a ui-sref="cntedit"><i class="fa fa-edit"></i> Edit</a></li>
                                    <li> <a ui-sref="cntstatus"><i class="glyphicon glyphicon-map-marker"></i> Track Status</a></li>
                                    <li ng-if="user.profile.courseType === 'PHD' || user.profile.courseType === 'PDF'"> <a ui-sref="apply_email"><i class="fa fa-at"></i> Email</a></li>
                                </ul>
                            </li>
<!--                            <li class="submenu">
                                <a href="#">
                                    <i class="glyphicon glyphicon-bell"></i> Notices
                                    <span class="caret pull-right"></span>
                                </a>
                                <ul>
                                    <li> <a ui-sref=""><i class="fa fa-angle-right"></i> Computer Centre</a></li>
                                    <li> <a ui-sref=""><i class="fa fa-angle-right"></i> My VC</a></li>
                                    <li> <a ui-sref=""><i class="fa fa-angle-right"></i> My PVC</a></li>
                                    <li> <a ui-sref=""><i class="fa fa-angle-right"></i> My Faculty</a></li>
                                    <li> <a ui-sref=""><i class="fa fa-angle-right"></i> My Department</a></li>
                                </ul>
                            </li>-->
                        </ul>
                    </div>
                </div>                
                <div class="col-md-10">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-info" ui-view="contents">                                 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%}%>            
        </div>        
    </body>
    <script src="../public/libs/jquery/dist/jquery.min.js" type="text/javascript"></script>
    <script src="../public/libs/moment/min/moment.min.js" type="text/javascript"></script>
    <script src="../public/libs/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../public/libs/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
    <script src="../public/libs/angular/angular.min.js" type="text/javascript"></script>
    <script src="../public/libs/angular-ui-router/release/angular-ui-router.min.js" type="text/javascript"></script>
    <script src="../public/libs/bootstrap-notify-3.1.3/dist/bootstrap-notify.min.js" type="text/javascript"></script>
    <script src="../public/app/services.js" type="text/javascript"></script>
    <script src="../public/app/students.js" type="text/javascript"></script>
    <script src="../public/js/custom.js" type="text/javascript"></script>
</html>
