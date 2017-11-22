<%-- 
    Document   : otpview
    Created on : 7 Mar, 2017, 1:14:10 PM
    Author     : asad
--%>

<div class="panel-heading">
    <div class="page-title"><span class="fa fa-phone-square"></span> My Contact</div>
</div>
<div class="panel-body" ng-controller="UpdateContactsCtrl">        
    <div class="row">
                
        <div class="col-sm-6 col-sm-offset-3">
            <form ng-submit="verifyOTP()">
                <fieldset class="form-group">
                    <label for="email">OTP on Mobile:</label>
                    <input class="form-control" ng-model="otpmobile" name="mobile" type="text">            
                </fieldset>
                <fieldset class="form-group">
                    <label for="mobile">OTP on Email:</label>
                    <input class="form-control" ng-model="otpemail" name="email" type="text">            
                </fieldset>
                <input type="submit" class="btn btn-primary btn-sm" value="Verify" />
                <input type="reset" class="btn btn-primary btn-sm" value="Reset" />
            </form>
            
        </div>
    </div>    
</div>
