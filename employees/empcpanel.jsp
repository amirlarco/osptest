<%-- 
    Document   : empcpanel
    Created on : 1 Jun, 2017, 1:00:47 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="org.bson.Document" %>
<%@ page import="org.bson.conversions.Bson" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="com.mongodb.MongoClient" %>
<%@ page import="com.mongodb.client.MongoCollection" %>
<%@ page import="com.mongodb.client.MongoDatabase" %>
<%@ page import="java.util.Properties" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Intranet Portal AMU</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../public/libs/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="../public/libs/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link href="../public/libs/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
        <link href="../public/css/styles.css" rel="stylesheet" type="text/css"/>
        <!--  Creative Tim -->
        <!--        <link href="../public/libs/paper-bootstrap-wizard/assets/css/paper-bootstrap-wizard.css" rel="stylesheet" type="text/css"/>
                <link href="../public/libs/paper-bootstrap-wizard/assets/css/googlefonts.css" rel="stylesheet" type="text/css"/>
                <link href="../public/libs/paper-bootstrap-wizard/assets/css/themify-icons.css" rel="stylesheet" type="text/css"/>        -->
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body ng-app="employees">
        <%          
        String pid = (String)session.getAttribute("pid");
        String fullName = (String)session.getAttribute("name");
        String email = (String)session.getAttribute("email");        
        String desig = (String) session.getAttribute("desig");
        String role = (String) session.getAttribute("role");
        if (request.getSession(false)==null
                || fullName== null
                || email == null) {
            response.sendRedirect("sessionexpired.jsp");
        } else{
            InputStream input = getServletContext().getResourceAsStream("/WEB-INF/config/config.properties");
            Properties properties = new Properties();
            properties.load(input);
            String host = properties.getProperty("host");
            int port = Integer.parseInt(properties.getProperty("port"));
            MongoClient mongoClient = new MongoClient(host, port);
            MongoDatabase db = mongoClient.getDatabase("admin");
            MongoCollection<Document> coll = db.getCollection("employees");
            Bson where = new Document()
                        .append("pid", Integer.parseInt(pid));
            Document user = coll.find(where).first();
            if(!user.getBoolean("isprofileready")){
        %>
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container-fluid">
                <div class="navbar-header" ng-controller="EmployeeCtrl">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><i class="fa fa-bank"></i> {{user.dname}}</a>                    
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">                        
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                <span class="glyphicon glyphicon-user"></span> <%=fullName%>
                                <span class="glyphicon glyphicon-chevron-down"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a ui-sref="profile">My Profile</a></li> 
                                <li role="separator" class="divider"></li>
                                <li><a href="emplogout">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="page-content" ng-controller="InitialCtrl">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-wrapper">
                        <div class="box" ng-show="step1">
                            <div class="content-wrap">
                                <center>
                                    <h6>Complete Your Profile</h6>
                                    <small class="text-muted">
                                        One Time Password (OTP) will be sent to your Email and Mobile. Kindly do verify to complete your profile
                                    </small>
                                </center>
                                <br>
                                <form ng-submit="sendOTP('<%=pid%>')">                                    
                                    <fieldset class="form-group">
                                        <label for="email">Email</label>
                                        <input ng-model="email" name="email" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" class="form-control" id="email" placeholder="Email" required="true">                                        
                                        <small class="text-muted">Should be in lowercase</small>
                                    </fieldset>
                                    <fieldset class="form-group">
                                        <label for="mobile">Mobile</label>
                                        <input ng-model="mobile" name="mobile" type="text" pattern="[7-9]{1}[0-9]{9}" class="form-control" id="mobile" required="true" placeholder="Mobile"  oninvalid="this.setCustomValidity('Your Mobile Number should contain 10 digit and must bestrated with 7, 8 or 9')" oninput="setCustomValidity('')">
                                        <small class="text-muted">10 digit must start with 7, 8 or 9</small>
                                    </fieldset>
                                    <input class="btn btn-primary btn-sm" type="submit" value="Next" />
                                </form>                                
                            </div>
                        </div>
                        <div class="box" ng-show="step2">
                            <div class="content-wrap">
                                <h6>One Time Verification</h6>
                                <form ng-submit="validateOTP('<%=pid%>')">                                    
                                    <fieldset class="form-group">
                                        <label for="otpe">OTP on Email</label>
                                        <input ng-model="otpe" name="otpe" type="text" class="form-control" placeholder="OTP on Email" required="true">
                                        <small class="text-muted">Enter OTP sent to your email</small>
                                    </fieldset>
                                    <fieldset class="form-group">
                                        <label for="otpm">OTP on Mobile</label>
                                        <input ng-model="otpm" name="otpm" type="text" class="form-control" placeholder="OTP on Mobile" required="true">
                                        <small class="text-muted">Enter OTP sent to your Mobile</small>
                                    </fieldset>
                                    <input class="btn btn-primary btn-sm" type="submit" value="Finish" />
                                </form>                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>                       
        </div>
        <%
            } else {
        %>
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container-fluid">
                <div class="navbar-header" ng-controller="EmployeeCtrl">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><i class="fa fa-bank"></i> {{user.dname}}</a>                    
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">                        
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                <span class="glyphicon glyphicon-user"></span> <%=fullName%>
                                <span class="glyphicon glyphicon-chevron-down"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a ui-sref="profile">My Profile</a></li> 
                                <li role="separator" class="divider"></li>
                                <li><a href="emplogout">Logout</a></li>
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
                                    IT Services
                                    <span class="caret pull-right"></span>
                                </a>                                 
                                <ul>
                                    <li><a ui-sref="changewifipass"><i class="fa fa-wifi"></i> Change WiFi Password</a></li>                                    
                                </ul>
                            </li>
                            <li class="submenu">
                                <a href="#">
                                    Financial Info
                                    <span class="caret pull-right"></span>
                                </a>                                 
                                <ul>
                                    <li><a ui-sref="salary"><i class="fa fa-money"></i> Salary</a></li>
                                    <li><a ui-sref="pf"><i class="fa fa-dollar"></i> Provident Fund</a></li>
                                </ul>
                            </li>
                            <li class="submenu" ng-controller="MyRScholarsCtrl" ng-show="empstatus.desig === 'PROFESSOR' || empstatus.desig === 'ASSISTANT PROFESSOR' || empstatus.desig === 'PROFESSOR'">
                                <a href="#">
                                    Research Scholars
                                    <span class="caret pull-right"></span>
                                </a>                                 
                                <ul>
                                    <li><a ui-sref="choose"><i class="fa fa-check"></i> Choose <span class="badge pull-right">{{rcholars.scholars.length}}</span></a></li>
                                    <li><a ui-sref="rscholars"><i class="fa fa-graduation-cap"></i> My Scholars <span class="badge pull-right">{{pickedouts.scholars.length}}</span></a></li>
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
        </div>
        <%
            }
        }
        %> 
        <script src="../public/libs/jquery/dist/jquery.min.js" type="text/javascript"></script>
        <script src="../public/libs/bootstrap/dist/js/bootstrap.min.js" type="text/javascript" ></script>
        <script src="../public/libs/angular/angular.min.js" type="text/javascript"></script>
        <script src="../public/libs/angular-sanitize/angular-sanitize.min.js" type="text/javascript"></script>
        <script src="../public/libs/ng-csv/build/ng-csv.min.js" type="text/javascript"></script>
        <script src="../public/libs/angular-ui-router/release/angular-ui-router.min.js" type="text/javascript"></script>
        <script src="../public/app/services.js" type="text/javascript"></script>                                    
        <script src="../public/app/employees.js" type="text/javascript"></script>
        <script src="../public/js/custom.js" type="text/javascript"></script>
        <!--        <script src="../public/libs/paper-bootstrap-wizard/assets/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
                <script src="../public/libs/paper-bootstrap-wizard/assets/js/paper-bootstrap-wizard.js" type="text/javascript"></script>
                <script src="../public/libs/paper-bootstrap-wizard/assets/js/jquery.validate.min.js" type="text/javascript"></script>-->
    </body>
</html>

