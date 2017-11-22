<%--
    Document   : Registration
    Created on : 16 May, 2016, 11:29:15 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="RegApp">
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
    <script>
        var isValidFullName = function () {
            alert();
        };
        function validateNonPDF() {
            var pass1 = $("#pass1").val();
            var pass2 = $("#pass2").val();
            var enroll = $("#enroll").val();
            var ok = true;
            if (pass1 !== pass2) {
                alert("Both passwords must be same.");
                $("#pass1").focus();
                ok = false;
            } else if (enroll.length !== 6) {
                alert("Enrolmment number must be of 6 characters");
                $("#enroll").focus();
                ok = false;
            } else if ($.isNumeric(enroll.charAt(0)) || $.isNumeric(enroll.charAt(1))) {
                alert("First two characters of your Enrolment number should be any alphabet");
                $("#enroll").focus();
                ok = false;
            } else if (isNaN(enroll.charAt(2)) || isNaN(enroll.charAt(3)) || isNaN(enroll.charAt(4)) || isNaN(enroll.charAt(5))) {
                alert("Last four characters of your Enrolment number should be any digit");
                $("#enroll").focus();
                ok = false;
            } else {

            }
            return ok;
        }
        function validatePDF() {
            var pass1 = $("#pass1").val();
            var pass2 = $("#pass2").val();
            var ok = true;
            if (pass1 !== pass2) {
                alert("Both passwords must be same.");
                $("#pass1").focus();
                ok = false;
            } else {

            }
            return ok;
        }
    </script>
    <%        
        String error_registration = (String) request.getAttribute("error_registration");
        String flag = "false";
        if (error_registration == "" || error_registration == null) {
            error_registration = "";
        } else {
            flag = "true";
        }
    %>
    <body>
        <div  class="login-bg">
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
            <div class="page-content container" ng-controller="RegCtrl">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <div class="login-wrapper">
                            <div class="box">
                                <div class="content-wrap">
                                    <h6>Students Registration</h6>
                                    <div ng-if="<%=flag%>" class="well-sm bg-danger"><%=error_registration%></div>
                                    <br/>
                                    <label for="enroll">Which category do you belong to?</label>
                                    <div class="btn-group btn-group-justified">
                                        <label class="btn btn-primary">
                                            <input type="radio" ng-model="type" value="ug"> UG
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="radio" ng-model="type" value="pg"> PG
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="radio" ng-model="type" value="phd"> PHD
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="radio" ng-model="type" value="pdf"> PDF/RA
                                        </label>
                                    </div>
                                    <br>
                                    <div ng-if="type === 'ug' || type === 'pg' || type === 'phd'">
                                        <form method="post" action="register" onsubmit="return validateNonPDF()">
                                            <fieldset class="form-group">
                                                <label for="enroll">Enrollment Number</label>
                                                <input name="enroll" type="text" pattern="^[a-zA-Z][a-zA-Z0-9\.]{1,5}$" class="form-control" id="enroll" required="true" placeholder="Enrollment Number" oninvalid="this.setCustomValidity('Your Enrollment Number can be alphanumeric of maximum of 6 characters with no spaces, underscore and special characters')" oninput="setCustomValidity('')">
                                                <small class="text-muted">Alphanumeric of maximum of 6 characters with no spaces, underscore and special characters</small>
                                            </fieldset>
                                            <fieldset class="form-group">
                                                <label for="fullName">Full Name</label>
                                                <input name="fullName" type="text" class="form-control" id="fullName" placeholder="Full Name" required="true">
                                                <small class="text-muted">As per High School certificate</small>
                                            </fieldset>
                                            <fieldset class="form-group">
                                                <label for="email">Email</label>
                                                <input name="email" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" class="form-control" id="email" placeholder="Email" required="true">
                                                <small class="text-muted">Should be in lowercase</small>
                                            </fieldset>
                                            <fieldset class="form-group">
                                                <label for="mobile">Mobile</label>
                                                <input name="mobile" type="text" pattern="[7-9]{1}[0-9]{9}" class="form-control" id="mobile" required="true" placeholder="Mobile"  oninvalid="this.setCustomValidity('Your Mobile Number should contain 10 digit and must bestrated with 7, 8 or 9')" oninput="setCustomValidity('')">
                                                <small class="text-muted">10 digit must start with 7, 8 or 9</small>
                                            </fieldset>
                                            <fieldset class="form-group">
                                                <label for="pass1">Password</label>
                                                <input name="pass1" type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" oninvalid="this.setCustomValidity('Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters')" oninput="setCustomValidity('')" class="form-control" id="pass1" placeholder="Password" required="true">
                                                <small class="text-muted">Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters</small>
                                            </fieldset>
                                            <fieldset class="form-group">
                                                <label for="pass2">Confirm Password</label>
                                                <input name="pass2" type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" oninvalid="this.setCustomValidity('Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters')" oninput="setCustomValidity('')" class="form-control" id="pass2" placeholder="Password" required="true">
                                                <small class="text-muted">Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters</small>
                                            </fieldset>
                                            <input type="checkbox" name="declation" required="true"/> I hereby agree to the <strong>Aligarh Muslim University</strong>
                                            <a href="https://amu.ac.in/pdf/cc/ISP.pdf" target="blank">Information Security Policy</a>. <br/><br/>
                                            <input class="btn btn-primary btn-sm" type="submit" value="Register" />
                                        </form>
                                    </div>
                                    <div ng-if="type === 'pdf'">
                                        <form method="post" action="register" onsubmit="return validatePDF()">
                                            <fieldset class="form-group">
                                                <label for="enroll">PDF/Research Associate ID</label>
                                                <input name="enroll" type="text" pattern="^[a-zA-Z][a-zA-Z0-9\.]{1,13}$" class="form-control" id="enroll" required="true" placeholder="Your ID" oninvalid="this.setCustomValidity('Your PDF ID can be alphanumeric of maximum of 12 characters with no spaces, underscore and special characters')" oninput="setCustomValidity('')">
                                                <small class="text text-danger">Note: Your ID can be maximum of 12 characters with no spaces, underscore and special characters</small>
                                            </fieldset>
                                            <fieldset class="form-group">
                                                <label for="fullName">Full Name</label>
                                                <input name="fullName" type="text" class="form-control" id="fullName" placeholder="Full Name" required="true">
                                                <small class="text-muted">As per High School certificate</small>
                                            </fieldset>
                                            <fieldset class="form-group">
                                                <label for="email">Email</label>
                                                <input name="email" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" class="form-control" id="email" placeholder="Email" required="true">
                                                <small class="text-muted">Should be in lowercase</small>
                                            </fieldset>
                                            <fieldset class="form-group">
                                                <label for="mobile">Mobile</label>
                                                <input name="mobile" type="text" pattern="[7-9]{1}[0-9]{9}" class="form-control" id="mobile" required="true" placeholder="Mobile"  oninvalid="this.setCustomValidity('Your Mobile Number should contain 10 digit and must bestrated with 7, 8 or 9')" oninput="setCustomValidity('')">
                                                <small class="text-muted">10 digit must start with 7, 8 or 9</small>
                                            </fieldset>
                                            <fieldset class="form-group">
                                                <label for="pass1">Password</label>
                                                <input name="pass1" type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" oninvalid="this.setCustomValidity('Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters')" oninput="setCustomValidity('')" class="form-control" id="pass1" placeholder="Password" required="true">
                                                <small class="text-muted">Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters</small>
                                            </fieldset>
                                            <fieldset class="form-group">
                                                <label for="pass2">Confirm Password</label>
                                                <input name="pass2" type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" oninvalid="this.setCustomValidity('Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters')" oninput="setCustomValidity('')" class="form-control" id="pass2" placeholder="Password" required="true">
                                                <small class="text-muted">Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters</small>
                                            </fieldset>
                                            <input type="checkbox" name="declation" required="true"/> I hereby agree to the <strong>Aligarh Muslim University</strong>
                                            <a href="https://amu.ac.in/pdf/cc/ISP.pdf" target="blank">Information Security Policy</a>. <br/><br/>
                                            <input class="btn btn-primary btn-sm" type="submit" value="Register" />
                                        </form>
                                    </div>  
                                    <hr>
                                    <a href="index.jsp" class="btn btn-default btn-sm pull-right"><i class="fa fa-user"></i> Login</a>
                                    <a href="Recovery.jsp" class="btn btn-default btn-sm pull-left"><i class="fa fa-lock"></i> Forgot Password?</a>
                                    <br/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br><br><br>
        </div>
        <script src="../public/libs/angular/angular.min.js" type="text/javascript"></script>
        <script src="../public/libs/jquery/dist/jquery.min.js" type="text/javascript"></script>
        <script src="../public/libs/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../public/js/custom.js" type="text/javascript"></script>
        <script src="../public/app/registration.js" type="text/javascript"></script>
    </body>
</html>