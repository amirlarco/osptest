<%--
    Document   : ResetPassword
    Created on : 18 May, 2016, 18 May, 2016 3:56:46 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Intranet Portal AMU</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap -->
        <link href="../public/libs/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../public/libs/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="../public/css/styles.css" rel="stylesheet" type="text/css"/>
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="login-bg">
        <%
            String enroll = (String)request.getAttribute("enroll");
            String email = (String)request.getAttribute("email");
        %>
        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <!-- Logo -->

                        <div class="logo pull-left">
                            <img src="../public/img/logo.png" alt=""/>
                        </div>
                        <div class="logo pull-right">
                            <h1><a href="student.html">Students Portal</a></h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="page-content container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-wrapper">
                        <div class="box">
                            <div class="content-wrap">
                                <h6>Password Reset</h6>

                                <form method="post" action="change">
                                    <input hidden="true" type="password" name="enroll" value="<%=enroll%>">
                                    <input hidden="true" type="password" name="email" value="<%=email%>">

                                    <fieldset class="form-group">
                                        <label for="password">New Password</label>
                                        <input class="form-control" type="password" name="password" placeholder="New Password">
                                    </fieldset>
                                    <fieldset class="form-group">
                                        <label for="password">Retype Password</label>
                                        <input class="form-control" type="password" name="password" placeholder="Retype Password">
                                    </fieldset>
                                    <input class="btn btn-primary btn-sm" type="submit" value="Submit">
                                </form>

                                <hr>

                                <a href="index.jsp" class="btn btn-default btn-sm pull-left"><i class="fa fa-user"></i> Login</a>
                                <br/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <script src="../public/libs/jquery/dist/jquery.min.js" type="text/javascript"></script>
        <script src="../public/libs/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../public/js/custom.js" type="text/javascript"></script>
    </body>
</html>
