<%--
    Document   : Recovery
    Created on : 16 May, 2016, 11:29:02 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Intranet Portal</title>
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
                                <form method="post" action="recovery">
                                    <fieldset class="form-group">
                                        <label for="enroll">Enrollment Number</label>
                                        <input name="enroll" type="text" class="form-control" id="enroll" placeholder="Enrollment Number">
                                    </fieldset>
                                    <input class="btn btn-primary signup" type="submit" value="Submit" />
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

