<%-- 
    Document   : helpdeskdashboard1
    Created on : 9 Mar, 2017, 1:32:38 PM
    Author     : asad
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="slick, flat, dashboard, bootstrap, admin, template, theme, responsive, fluid, retina">
    <link rel="shortcut icon" href="javascript:;" type="image/png">

    <title>IT Help Desk</title>

    <!--right slidebar-->

    <link href="../public/css/slidebars.css" rel="stylesheet" type="text/css"/>
    <!--switchery-->

    <link href="../public/css/switchery.min.css" rel="stylesheet" type="text/css"/>
    <!--common style-->
   
    <link href="../public/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="../public/css/style-responsive.css" rel="stylesheet" type="text/css"/>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="sticky-header">
    <section>
        <!-- sidebar left start-->
        <div class="sidebar-left">
            
                <!-- visible small devices start-->
                <div class=" search-field">  </div>
                <!-- visible small devices end-->

                <!--sidebar nav start-->
                <ul class="nav nav-pills nav-stacked side-navigation">
                    <li>
                        <h3 class="navigation-title">Navigation</h3>
                    </li>
                    <li><a href=""><i class="fa fa-home"></i> <span>Dashboard</span></a></li>
                    <li class="active"><a href=""><i class="fa fa-book"></i> <span>Register Complain</span></a></li>
                        
                    </li>
                    <li class="menu-list"><a href=""><i class="fa fa-info-circle" aria-hidden="true"></i> <span>Complain Status</span></a>
                        <ul class="child-list">
                            <li><a href=""> Ticket Pending</a></li>
                            <li><a href=""> Ticket Closed</a></li>
                            <li><a href=""> Toaster Notification</a></li>
                            <li><a href=""> Tickets Not Assigned</a></li>
                            
                        </ul>
                    </li>
                    <li class="menu-list"><a href=""><i class="fa fa-ticket"></i> <span>Assign/Review Ticket</span></a>
                        <ul class="child-list">
                            <li><a href=""> Pending</a></li>
                            <li><a href=""> Ticket Closed</a></li>
                            <li><a href=""> Re-Assign</a></li>
                            <li><a href=""> Review Tickets</a></li>
                            
                        </ul>
                    </li>

                    <li class="menu-list"><a href=""><i class="fa fa-list-alt" aria-hidden="true"></i> <span>Complain Log</span></a>
                        <ul class="child-list">
                           <li><a href=""> Total Complains</a></li>
                            <li><a href=""> Complains on Phone</a></li>
                            <li><a href=""> Complains on Portal</a></li>
                             <li><a href=""> e-Mail</a></li>
                              <li><a href=""> Personal Visit</a></li>
                            
                        </ul>
                    </li>
                <!--sidebar nav end-->


        </div>
        <!-- sidebar left end-->

        <!-- body content start-->
        <div class="body-content" style="min-height: 650px;">

            <!-- header section start-->
            <div class="header-section">

                <!--logo and logo icon start-->
                <div class="logo dark-logo-bg hidden-xs hidden-sm">
                    <a href="">

                        <img src="../public/img/hdesk.png" alt=""/>
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

                body content goes here ..
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

</body>
</html>