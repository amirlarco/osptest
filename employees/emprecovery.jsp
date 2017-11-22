<%--
    Document   : Recovery
    Created on : 16 May, 2016, 11:29:02 AM
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
        <!-- [if lt IE 9]>
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
    <body class="login-bg">
        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <!-- Logo -->

                        <div class="logo pull-left">
                            <a href="/"><img src="../public/img/logo.png" alt=""/></a>
                        </div>
                        <div class="logo pull-right">
                            <h1><a href="index.jsp">Intranet Portal</a></h1>
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
                                <h6>Password Recovery</h6>
                                <center><small class="text text-danger">An OTP (One Time Password) will be sent to your mobile</small></center>
                                
                                <form method="post" action="emprecovery">
                                    <fieldset class="form-group">
                                        <label for="pid">Employee ID</label>
                                        <input name="pid" type="text" class="form-control" id="pid" placeholder="Employee ID">
                                    </fieldset>
                                    <input class="btn btn-primary btn-sm" type="submit" value="Submit" />
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

