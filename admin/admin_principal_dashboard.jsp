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
    </head>
    <body ng-app="admin">
        <%
        String fullName = (String)session.getAttribute("fullName");
        String email = (String)session.getAttribute("email");
        
        String desig = (String) session.getAttribute("desig");
        String label = (String) session.getAttribute("label");
        String hall = label.replace(desig, "").trim();
        if (request.getSession(false)==null
                || fullName== null
                || email == null) {
            response.sendRedirect("SessionExpired.jsp");
        } else{
        %>
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container-fluid">
                <div class="navbar-header" ng-controller="UserCtrl">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><i class="fa fa-graduation-cap"></i> {{user.label| uppercase}}</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">                        
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
        <div class="page-content">
            <div class="row">
                <div class="col-md-2">
                    <div class="sidebar content-box" style="display: block;">
                        <ul class="nav">
                            <!-- Main menu -->
                            <li class="submenu">
                                <a href="#">
                                    New Registration
                                    <span class="caret pull-right"></span>
                                </a>
                                <!-- Sub menu -->
                                <ul>
                                    <li><a ui-sref="students_principal"><i class="fa fa-edit"></i> Unverified</a></li>
                                    <li><a ui-sref="verified_principal"><i class="fa fa-pencil"></i> Verified</a></li>
                                </ul>
                            </li>
                            <li class="submenu" ng-controller="ApprovalChairmanCtrl">
                                <a href="#">
                                    Continuation
                                    <span class="caret pull-right"></span>
                                </a> 
                                <ul>
                                    <li><a ui-sref="approval"><i class="glyphicon glyphicon-edit"></i> Pending Approval <span class="badge pull-right">{{unapproved.length}}</span></a></li>
                                    <li><a ui-sref="approved"><i class="glyphicon glyphicon-check"></i> Approved <span class="badge pull-right">{{approved.length}}</span></a></li>
<!--                                    <li><a ui-sref=""><i class="fa fa-times"></i> Rejected</a></li>-->
                                </ul>
                            </li>
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
        <script src="../public/libs/jquery/dist/jquery.min.js" type="text/javascript"></script>
        <script src="../public/libs/bootstrap/dist/js/bootstrap.min.js" type="text/javascript" ></script>
        <script src="../public/libs/angular/angular.min.js" type="text/javascript"></script>
        <script src="../public/libs/angular-sanitize/angular-sanitize.min.js" type="text/javascript"></script>
        <script src="../public/libs/ng-csv/build/ng-csv.min.js" type="text/javascript"></script>
        <script src="../public/libs/angular-ui-router/release/angular-ui-router.min.js" type="text/javascript"></script>
        <script src="../public/app/services.js" type="text/javascript"></script>                                    
        <script src="../public/app/admin.js" type="text/javascript"></script>
        <script src="../public/js/custom.js" type="text/javascript"></script>
    </body>
</html>
