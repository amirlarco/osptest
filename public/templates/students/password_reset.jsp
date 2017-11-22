<%
    String mobile = (String) session.getAttribute("mobile");    	
    int i = 0;
    StringBuffer temp = new StringBuffer();
    while(i < (mobile .length())){
        if(i > mobile .length() -5){
            temp.append(mobile.charAt(i));
        } else {
            temp.append("*");
        }
        i++;
    }
%>
<div class="panel-heading">
    <div class="page-title"><span class="fa fa-user-secret"></span> Reset Password</div>
</div>
<div class="panel-body" ng-controller="ServicesCtlr">
    <div class="row">
        <div class="col-sm-8 col-sm-offset-2" ng-show="!reset">
            <div ng-if="!otp_verified">
                <div class="content-wrap" ng-if="!otp_sent"> 
                    <h4 class="text-center text-info">
                        Kindly verify your authenticity to prevent your account snooping
                    </h4>
                    An One Time Password (OTP) will be sent to this mobile number. Kindly check your inbox and enter OTP to verify your authenticity.<br/>
                    <br/>
                    <h4 class="text text-info"><%=temp%></h4>  
                    <br/>  <br/>                                                  
                    <button class="btn btn-primary btn-sm" ng-click="sendOTP()">Send</button>             
                </div>
                <div class="content-wrap" ng-if="otp_sent"> 
                    Kindly enter the OTP sent to your mobile<br/>
                    <fieldset class="form-group">
                        <label for="otp">Enter OTP</label>
                        <input name="otp" type="text" class="form-control" ng-model="sms.otp" placeholder="Enter OTP">
                    </fieldset>
                    <br/>                                                  
                    <button class="btn btn-primary btn-sm" ng-click="verifyOTP()">Verify</button>             
                </div>
            </div>
            <div ng-if="otp_verified">
                <form ng-submit="resetPassword()">
                    <fieldset class="form-group">
                        <label for="email">New Password</label>
                        <input class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" oninvalid="this.setCustomValidity('Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters')" oninput="setCustomValidity('')" type="password" id="pass1" name="password" placeholder="New Password" required="true">
                    </fieldset>
                    <fieldset class="form-group">
                        <label for="mobile">Retype Password</label>
                        <input class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" oninvalid="this.setCustomValidity('Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters')" oninput="setCustomValidity('')" type="password" id="pass2" name="password" placeholder="Retype Password" required="true">
                    </fieldset>
                    <button type="submit" class="btn btn-primary btn-sm">Reset</button>                
                </form> 
            </div>
        </div>
        <div class="alert alert-success" ng-show="reset">
            Your contact details updated successfully
        </div>
    </div> 
</div>