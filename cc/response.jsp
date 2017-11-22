<%-- 
    Document   : response
    Created on : 22 Nov, 2016, 11:12:46 AM
    Author     : Naved
--%>

<!DOCTYPE html>
<html>
    <head>
        <title>Students Portal</title>
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
                            <h1><a href="student.html">Students Portal</a></h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%
            String icon = (String) request.getAttribute("icon");
            String css_class = (String) request.getAttribute("class");
            String title = (String) request.getAttribute("title");
            String message = (String) request.getAttribute("message");
            String url = (String) request.getAttribute("url");
        %>
        <div class="page-content container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-wrapper">
                        <div class="box">
                            <div class="<%=css_class%>">                                
                                <i class="<%=icon%>"></i>
                                <h6><%=title%></h6>
                                <p><%=message%></p>
                                <hr/>
                                <a href="<%=url%>" class="btn btn-default btn-sm"><i class="fa fa-user"></i> Login</a>
                            </div>

                        </div>
                        <div class="pen-title">
                            <h1></h1><span>Pen <i class='fa fa-paint-brush'></i> + <i class='fa fa-code'></i> by <a href='https://www.amu.ac.in/centreshowfacultydata2.jsp?did=10010&eid=10059872' target="_blank">Mohammad Amir</a></span>
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
