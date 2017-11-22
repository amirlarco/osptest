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
        <link href="../public/css/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
<!--        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">-->
        <link href="../public/libs/morris.js/morris.css" rel="stylesheet" type="text/css"/>
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="sticky-header" ng-app="superadmin">
        <%
            String fullName = (String)session.getAttribute("fullName");
            String email = (String)session.getAttribute("email");
            if (request.getSession(false)==null
                    || fullName == null
                    || email == null) {
                response.sendRedirect("SessionExpired.jsp");
            } else {
        %>
        <section>
            <!-- sidebar left start-->
            <div class="sidebar-left">
                <!--responsive view logo start-->
                <!--responsive view logo end-->
                <div class="sidebar-left-info" ng-controller="UserCtrl">
                    <!-- visible small devices start-->
                    <div class="search-field"></div>
                    <!-- visible small devices end-->
                    <!--sidebar nav start-->
                    <ul class="nav nav-pills nav-stacked side-navigation">
                        <li>
                            <h3 class="navigation-title">WiFi</h3>
                        </li>                        
                        <li class="menu-list">
                            <a href="#"><i class="fa fa-users"></i>  <span>Admin Accounts</span></a>
                            <ul class="child-list">
                                <li><a ui-sref="new"> <i class="fa fa-caret-right"></i> New</a></li>
                                <li><a ui-sref="dean"> <i class="fa fa-caret-right"></i> Dean</a></li>
                                <li><a ui-sref="chairperson"> <i class="fa fa-caret-right"></i> Chairperson</a></li>
                                <li><a ui-sref="principal"> <i class="fa fa-caret-right"></i> Principal</a></li>
                                <li><a ui-sref="director"> <i class="fa fa-caret-right"></i> Director</a></li>
                                <li><a ui-sref="provost"> <i class="fa fa-caret-right"></i> Provost</a></li>
                                <li><a ui-sref="coordinator"> <i class="fa fa-caret-right"></i> Coordinator</a></li>  
                                <li><a ui-sref="pro"> <i class="fa fa-caret-right"></i> PRO</a></li> 
                                <li><a ui-sref="executive"> <i class="fa fa-caret-right"></i> Executive</a></li> 
                            </ul>
                        </li>
                        <li class="menu-list">
                            <a href="#"><i class="glyphicon glyphicon-check"></i> <span>Students</span></a>
                            <ul class="child-list">
                                <li><a ui-sref="search"> <i class="fa fa-search"></i> Find Student</a></li>
                                <li><a ui-sref="verification"> <i class="fa fa-edit"></i> Verify</a></li>
                                <li><a ui-sref="create_wifi"> <i class="fa fa-wifi"></i> Create Wifi Account</a></li>
                                <li><a ui-sref="process_wifi"> <i class="fa fa-cogs"></i> Process Wifi Account</a></li>
                                <li><a ui-sref="process_email"> <i class="fa fa-at"></i> Process Email</a></li>
                                <li><a ui-sref="reports"> <i class="fa fa-bar-chart"></i> Reports</a></li>
                            </ul>
                        </li>  
                        <li class="menu-list">
                            <a href="#"><i class="glyphicon glyphicon-repeat"></i> <span>Continuation</span></a>
                            <ul class="child-list">
                                <li><a ui-sref="pointmode"> <i class="fa fa-bolt"></i> Point Mode</a></li>
                                <li><a ui-sref="periodmode"> <i class="fa fa-bars"></i> Period Mode</a></li>
                                <li><a ui-sref="pendingrequest"> <i class="fa fa-check"></i> Request Pending</a></li>
                            </ul>
                        </li>
                        <li class="menu-list">
                            <a href="#"><i class="glyphicon glyphicon-user"></i> <span>Employee</span></a>
                            <ul class="child-list">
                                <li><a ui-sref="searchemp"> <i class="glyphicon glyphicon-search"></i> Search</a></li>
                                <li><a ui-sref="addemp"> <i class="glyphicon glyphicon-plus"></i> Create Account</a></li>
                                <li><a ui-sref="secaccounts"> <i class="glyphicon glyphicon-share"></i> Secondary Accounts</a></li>
                            </ul>
                        </li>
                        <li class="menu-list">
                            <a href="#"><i class="fa fa-envelope"></i> <span>Smart Mailer</span></a>
                            <ul class="child-list">
                                <li><a ui-sref="smartsms"> <i class="fa fa-caret-right"></i> SMS</a></li>
                                <li><a ui-sref="smartemail"> <i class="fa fa-caret-right"></i> Email</a></li>
                            </ul>
                        </li>
                        <li class="menu-list">
                            <a href="#"><i class="glyphicon glyphicon-book"></i> <span>Activity Log</span></a>
                            <ul class="child-list">
                                <li><a ui-sref=""> <i class="fa fa-caret-right"></i> Updates</a></li>
                                <li><a ui-sref=""> <i class="fa fa-caret-right"></i> Account Archives</a></li>
                                <li><a ui-sref=""> <i class="fa fa-caret-right"></i> New Accounts</a></li>
                                <li><a ui-sref=""> <i class="fa fa-caret-right"></i> Continuations</a></li>
                            </ul>
                        </li>
                        <li>
                            <h3 class="navigation-title">Academic</h3>
                        </li> 
                        <li class="menu-list">
                            <a href="#"><i class="fa fa-desktop"></i> <span>Research Scholars</span></a>
                            <ul class="child-list">
                                <li><a ui-sref="process_csv"> <i class="glyphicon glyphicon-cog"></i> Process CSV</a></li>                                
                                <li><a ui-sref="add_scholar"> <i class="glyphicon glyphicon-plus"></i> Add</a></li>
                                <li><a ui-sref="published"> <i class="glyphicon glyphicon-upload"></i> Published</a></li>
                            </ul>                            
                        </li>
                        <li>
                            <h3 class="navigation-title">Non Academic</h3>
                        </li> 
                        <li class="menu-list">
                            <a href="#"><i class="fa fa-desktop"></i> <span>My Office</span></a>
                            <ul class="child-list">
                                <li><a ui-sref="newemployee"> <i class="fa fa-caret-right"></i> New Employee<label class="label label-warning pull-right">New</label></a></li>
                            </ul>
                        </li>
                        <li class="menu-list">
                            <a href="#"><i class="fa fa-bank"></i> <span>Departments</span></a>
                            <ul class="child-list">
                                <li><a ui-sref="academic"> <i class="fa fa-caret-right"></i>Academic<label class="label label-warning pull-right">New</label></a></li>
                                <li><a ui-sref="nonacademic"> <i class="fa fa-caret-right"></i>Non-Academic<label class="label label-warning pull-right">New</label></a></li>
                            </ul>
                        </li>
                        <li>
                            <h3 class="navigation-title">Budget Control</h3>
                        </li>
                        <li class="menu-list">
                            <a href="#"><i class="fa fa-user-md"></i> <span>Masters</span></a>
                            <ul class="child-list">
                                <li><a ui-sref="budgethead"> <i class="fa fa-caret-right"></i>Budget Head</a></li>
                                <li><a ui-sref="vendor"> <i class="fa fa-caret-right"></i>Vendor</a></li>
                                <li><a ui-sref="item"> <i class="fa fa-caret-right"></i>Items</a></li>
                                <li><a ui-sref="dlocation"> <i class="fa fa-caret-right"></i>Delivery Location</a></li>
                            </ul>
                        </li>
                        <li class="menu-list">
                            <a href="#"><i class="fa fa-reddit"></i> <span>Transaction</span></a>
                            <ul class="child-list">
                                <li><a ui-sref="#"> <i class="fa fa-caret-right"></i>Create PO</a></li>
                                <li><a ui-sref="#"> <i class="fa fa-caret-right"></i>Execute Delivery</a></li>
                            </ul>
                        </li>
                        <li class="menu-list">
                            <a href="#"><i class="fa fa-bar-chart"></i> <span>Reports</span></a>
                            <ul class="child-list">
                                <li><a ui-sref="#"> <i class="fa fa-caret-right"></i>Create PO</a></li>
                                <li><a ui-sref="#"> <i class="fa fa-caret-right"></i>Execute Delivery</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- sidebar left end-->
            <!-- body content start-->
            <div class="body-content">
                <!-- header section start-->
                <div class="header-section">
                    <!--logo and logo icon start-->
                    <div class="logo dark-logo-bg hidden-xs hidden-sm">
                        <a href="index.html">
                            <span class="brand-name">INTRANET PORTAL</span>
                        </a>
                    </div>
                    <!--toggle button start-->
                    <a class="toggle-btn"><i class="fa fa-outdent"></i></a>
                    <!--toggle button end-->
                    <div class="notification-wrap">
                        <!--right notification start-->
                        <div class="right-notification">
                            <ul class="notification-menu">                                
                                <li ng-controller="UserCtrl">
                                    <a href="javascript:;" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                        <span class="glyphicon glyphicon-user"></span> {{user.fullName}}
                                        <span class=" fa fa-angle-down"></span>
                                    </a>
                                    <ul class="dropdown-menu dropdown-usermenu purple pull-right">
                                        <li><a href="javascript:;">  Profile</a></li>
                                        <li>
                                            <a ui-sref="settings">
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
                <div class="page-head" ng-controller="UsersStatus">
                    <div class="row state-overview state-alt">
                        <div class="col-lg-2 col-sm-2">
                            <a ui-sref="totalusers">
                                <section class="panel y-border">
                                    <div class="symbol ">
                                        <span class="bg-warning"><i class="fa fa-users"></i></span>
                                    </div>
                                    <div class="value">
                                        <h1>
                                            {{totalusers}}
                                        </h1>
                                        <p>Total Users</p>
                                    </div>
                                </section>
                            </a>
                        </div>
                        <div class="col-lg-2 col-sm-2">
                            <a ui-sref="incomplete">
                                <section class="panel p-border">
                                    <div class="symbol ">
                                        <span class="bg-primary"><i class="fa fa-chain-broken"></i></span>
                                    </div>
                                    <div class="value">
                                        <h1>
                                            {{incomplete}}
                                        </h1>
                                        <p>Incomplete Profile</p>
                                    </div>
                                </section>
                            </a>
                        </div>
                        <div class="col-lg-2 col-sm-2">
                            <a ui-sref="pendingatprovost">
                                <section class="panel b-border">
                                    <div class="symbol ">
                                        <span class="bg-info"><i class="fa fa-warning"></i></span>
                                    </div>
                                    <div class="value">
                                        <h1 class="">
                                            {{pendingatprovost}}
                                        </h1>
                                        <p>Pending at Provost</p>
                                    </div>
                                </section>
                            </a>
                        </div>
                        <div class="col-lg-2 col-sm-2">
                            <a ui-sref="pendingatchaiperson">
                                <section class="panel r-border">
                                    <div class="symbol">
                                        <span class="bg-danger"><i class="fa fa-thumbs-down"></i></span>
                                    </div>
                                    <div class="value">
                                        <h1>
                                            {{pendingatchaiperson}}
                                        </h1>
                                        <p>Pending at Chairman</p>
                                    </div>
                                </section>
                            </a>
                        </div>
                        <div class="col-lg-2 col-sm-2">
                            <a ui-sref="#">
                                <section class="panel r-border">
                                    <div class="symbol">
                                        <span class="bg-danger"><i class="fa fa-thumbs-down"></i></span>
                                    </div>
                                    <div class="value">
                                        <h1>
                                            {{total_pending}}
                                        </h1>
                                        <p>Total Pending</p>
                                    </div>
                                </section>
                            </a>
                        </div>
                        <div class="col-lg-2 col-sm-2">
                            <a ui-sref="all_verified">
                                <section class="panel g-border">
                                    <div class="symbol ">
                                        <span class="bg-success"><i class="fa fa-thumbs-up"></i></span>
                                    </div>
                                    <div class="value">
                                        <h1>
                                            {{all_verified}}
                                        </h1>
                                        <p>Verified</p>
                                    </div>
                                </section>
                            </a>
                        </div>
                        <div class="col-lg-2 col-sm-2">
                            <a ui-sref="#">
                                <section class="panel y-border">
                                    <div class="symbol ">
                                        <span class="bg-warning"><i class="fa fa-dropbox"></i></span>
                                    </div>
                                    <div class="value">
                                        <h1>
                                            {{not_applied}}
                                        </h1>
                                        <p>Not Applied</p>
                                    </div>
                                </section>
                            </a>
                        </div>
                        <div class="col-lg-2 col-sm-2">
                            <a ui-sref="wifi_request">
                                <section class="panel y-border">
                                    <div class="symbol">
                                        <span class="bg-warning"><i class="fa fa-wifi"></i></span>
                                    </div>
                                    <div class="value">
                                        <h1>
                                            {{wifi_request}}
                                        </h1>
                                        <p>Wifi</p>
                                    </div>
                                </section>
                            </a>
                        </div>
                        <div class="col-lg-2 col-sm-2">
                            <a ui-sref="">
                                <section class="panel p-border">
                                    <div class="symbol ">
                                        <span class="bg-primary"><i class="fa fa-repeat"></i></span>
                                    </div>
                                    <div class="value">
                                        <h1>
                                            {{cont}}
                                        </h1>
                                        <p>Continuation</p>
                                    </div>
                                </section>
                            </a>
                        </div>
                        <div class="col-lg-2 col-sm-2">
                            <a ui-sref="email_request">
                                <section class="panel b-border">
                                    <div class="symbol ">
                                        <span class="bg-info"><i class="fa fa-at"></i></span>
                                    </div>
                                    <div class="value">
                                        <h1>
                                            {{email_request}}
                                        </h1>
                                        <p>Email</p>
                                    </div>
                                </section>
                            </a>
                        </div>
                        <div class="col-lg-2 col-sm-2">
                            <a ui-sref="">
                                <section class="panel b-border">
                                    <div class="symbol ">
                                        <span class="bg-info"><i class="fa fa-thumbs-up"></i></span>
                                    </div>
                                    <div class="value">
                                        <h1>
                                            {{wifi_created}}
                                        </h1>
                                        <p>WiFi Created</p>
                                    </div>
                                </section>
                            </a>
                        </div>
                        <div class="col-lg-2 col-sm-2">
                            <a ui-sref="emailcreated">
                                <section class="panel b-border">
                                    <div class="symbol ">
                                        <span class="bg-info"><i class="fa fa-thumbs-up"></i></span>
                                    </div>
                                    <div class="value">
                                        <h1>
                                            {{emailcreated}}
                                        </h1>
                                        <p>Email Created</p>
                                    </div>
                                </section>
                            </a>
                        </div>
                        <div class="col-lg-2 col-sm-2">
                            <a ui-sref="">
                                <section class="panel b-border">
                                    <div class="symbol ">
                                        <span class="bg-info"><i class="fa fa-database"></i></span>
                                    </div>
                                    <div class="value">
                                        <h1>
                                            {{connections}}
                                        </h1>
                                        <p>DB Connections</p>
                                    </div>
                                </section>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="wrapper">
                    <div ui-view="contents"></div>
                </div>
                <footer>                    
                    <span class="pull-right">Powered by Computer Centre <strong>[<a href="https://www.amu.ac.in/" target="_blank">Aligarh Muslim University</a>]</strong></span>
                </footer>
            </div>
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
        <script src="../public/libs/angular-sanitize/angular-sanitize.min.js" type="text/javascript"></script>
        <script src="../public/libs/ng-csv/build/ng-csv.min.js" type="text/javascript"></script>
        <script src="../public/libs/angular-ui-router/release/angular-ui-router.min.js" type="text/javascript"></script>                
        <script src="../public/app/services.js" type="text/javascript"></script>
        <script src="../public/app/superadmin.js" type="text/javascript"></script>
        <script src="../public/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="../public/js/dataTables.tableTools.min.js" type="text/javascript"></script>
        <script src="../public/js/bootstrap-dataTable.js" type="text/javascript"></script>
        <script src="../public/js/dataTables.colVis.min.js" type="text/javascript"></script>
        <script src="../public/js/dataTables.responsive.min.js" type="text/javascript"></script>
        <script src="../public/js/dataTables.scroller.min.js" type="text/javascript"></script>        
        <script src="../public/js/data-table-init.js" type="text/javascript"></script>
        <script src="../public/libs/morris.js/morris.min.js" type="text/javascript"></script>
        <script src="../public/libs/raphael/raphael.min.js" type="text/javascript"></script>
    </body>
</html>
