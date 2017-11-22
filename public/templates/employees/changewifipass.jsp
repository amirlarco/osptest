<%-- 
    Document   : salary
    Created on : 20 Jun, 2017, 11:03:12 PM
    Author     : HP
--%>
<div class="panel-heading">
    <div class="page-title">
        <span class="fa fa-wifi"></span> Change WiFi Password
    </div>
</div>
<div class="panel-body" ng-controller="WiFiPassChangeCtrl">
    <div class="row" ng-show="!success">
        <div class="col-lg-8 col-lg-offset-2">
            <form ng-submit="changepass()">                
                <fieldset class="form-group">
                    <label for="password">New Password</label>
                    <input ng-model="pass1" class="form-control" type="password" placeholder="New Password" required="true">
                </fieldset>
                <fieldset class="form-group">
                    <label for="password">Retype Password</label>
                    <input ng-model="pass2" class="form-control" type="password" pattern="(?=^.{6,255}$)((?=.*\d)(?=.*[A-Z])(?=.*[a-z])|(?=.*\d)(?=.*[^A-Za-z0-9])(?=.*[a-z])|(?=.*[^A-Za-z0-9])(?=.*[A-Z])(?=.*[a-z])|(?=.*\d)(?=.*[A-Z])(?=.*[^A-Za-z0-9]))^.*" placeholder="Retype Password" required="true">
                    <br>
                    Password policy is as follows:
                    <ol class="text text-danger">                                    
                        <li>Password must be least 8 characters in length</li>
                        <li>Password must contain digits (0-9)</li>
                        <li>Password must contain small letter alphabet characters (a-z)</li>
                        <li>Password must contain Non-alphanumeric characters (for example, !$#,%)</li>
                        <li>For example:  <strong>moh86#ak</strong></li>
                    </ol> 
                </fieldset>

                <input class="btn btn-primary btn-sm" type="submit" value="Submit">
            </form>
        </div>
    </div>
    <div class="row" ng-show="success">
        <div class="col-lg-8 col-lg-offset-2">
            <div class="alert alert-success">
                {{message}}
            </div>
        </div>
    </div>
</div>

