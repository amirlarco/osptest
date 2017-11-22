<%-- 
    Document   : employeedashboard
    Created on : 15 Mar, 2017, 10:32:38 AM
    Author     : Aqeel
--%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Intranet Portal</title>
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
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="sticky-header" ng-app="Employees">

        <section>
            <!-- sidebar left start-->
            <div class="sidebar-left">
                <!--responsive view logo start-->
                <div class="logo dark-logo-bg">
                    <a href="index.html">
                        <span class="brand-name">Intranet Portal</span>
                    </a>
                </div>
                <!--responsive view logo end-->

                <div class="sidebar-left-info">
                    <!-- visible small devices start-->
                    <div class=" search-field">  </div>
                    <!-- visible small devices end-->

                    <!--sidebar nav start-->
                    <ul class="nav nav-pills nav-stacked side-navigation">
                        <li>
                            <h3 class="navigation-title">Navigation</h3>
                        </li>
                        <li><a href=""><i class="fa fa-home"></i> <span>Dashboard</span></a></li>


                        <li class="menu-list">
                            <a href="#"><i class="fa fa-support"></i> <span>Support</span></a>
                            <ul class="child-list">
                                <li> <a ui-sref="empcomplain"><i class="fa fa-ticket"></i> Complain</a></li>
                                    <li> <a ui-sref="myemp_complaints"><i class="fa fa-list"></i> My Complaints</a></li>
                                
                            </ul>
                        </li>
                        


                    </ul>
                    <!--sidebar nav end-->

                </div>
            </div>
            <!-- sidebar left end-->

            <!-- body content start-->
            <div class="body-content" style="min-height: 650px;">

                <!-- header section start-->
                <div class="header-section">



                    <!--toggle button start-->
                    <a class="toggle-btn"><i class="fa fa-outdent"></i></a>
                    <!--toggle button end-->

                    <!--mega menu start-->
                    <div id="navbar-collapse-1" class="navbar-collapse collapse yamm mega-menu">
                        <ul class="nav navbar-nav">
                            <!-- Classic list -->                  

                        </ul>
                    </div>
                    <!--mega menu end-->
                    <div class="notification-wrap">
                        <!--left notification start-->
                        <div class="left-notification">
                            <ul class="notification-menu">

                            </ul>
                        </div>
                        <!--left notification end-->


                        <!--right notification start-->
                        <div class="right-notification">
                            <ul class="notification-menu">
                                <li>
                                    <form class="search-content" action="" method="post">
                                        <input type="text" class="form-control" name="keyword" placeholder="Ticket No...">
                                    </form>
                                </li>

                                <li>
                                    <a href="javascript:;" class="btn btn-default dropdown-toggle" data-toggle="dropdown">

                                        <img src="../public/img/avatar.png" alt=""/>Name
                                        <span class=" fa fa-angle-down"></span>
                                    </a>
                                    <ul class="dropdown-menu dropdown-usermenu purple pull-right">
                                        <li><a href="javascript:;">  My Profile</a></li>

                                        <li><a href=""><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                                    </ul>
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

                </div>
                <!-- page head end-->

                <!--body wrapper start-->
                <div class="wrapper">
                    <div ui-view="contents"></div>
                </div>
                <!--body wrapper end-->


                <!--footer section start-->
                <footer >
                    <div class="page-footer-inner pull-right" > Developed By 
                        <a href="#">Computer Center</a> &nbsp;|&nbsp;
                        <a href="#">AMU</a>
                    </div>
                </footer>
                <!--footer section end-->         

            </div>
            <!-- body content end-->
        </section>

        <!-- Placed js at the end of the document so the pages load faster -->

        <script src="../public/js/jquery-1.10.2.min.js" type="text/javascript"></script>
        <script src="../public/js/jquery-migrate.js" type="text/javascript"></script>
        <script src="../public/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../public/js/modernizr.min.js" type="text/javascript"></script>

        <!--Nice Scroll-->
        <script src="../public/js/jquery.nicescroll.js" type="text/javascript"></script>

        <!--right slidebar-->
        <script src="../public/js/slidebars.min.js" type="text/javascript"></script>

        <!--switchery-->
        <script src="../public/js/switchery.min.js" type="text/javascript"></script>
        <script src="../public/js/switchery-init.js" type="text/javascript"></script>

        <!--Sparkline Chart-->
        <script src="../public/js/jquery.sparkline.js" type="text/javascript"></script>
        <script src="../public/js/sparkline-init.js" type="text/javascript"></script>

        <!--common scripts for all pages-->
        <script src="../public/js/scripts.js" type="text/javascript"></script>
        <script src="../public/libs/angular/angular.min.js" type="text/javascript"></script>
        <script src="../public/libs/angular-sanitize/angular-sanitize.min.js" type="text/javascript"></script>
        <script src="../public/libs/ng-csv/build/ng-csv.min.js" type="text/javascript"></script>
        <script src="../public/libs/angular-ui-router/release/angular-ui-router.min.js" type="text/javascript"></script>                
        <script src="../public/app/services.js" type="text/javascript"></script>
        <script src="../public/app/employees.js" type="text/javascript"></script>
    </body>
</html>