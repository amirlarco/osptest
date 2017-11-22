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
    <div class="page-title"><span class="fa fa-key"></span> Change WiFi Password</div>
</div>
<div class="panel-body">
    <div ng-controller="WiFiUpdateCtrl">
        <div class="row">
            <div ng-if="user.services[0].status === 'Created'">
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
                        <form ng-submit="resetWiFiPassword()">
                            <fieldset class="form-group">
                                <label for="email">New Password for your WiFi Account</label>
                                <input class="form-control" ng-model="pass.pass1" pattern="(?=^.{6,255}$)((?=.*\d)(?=.*[A-Z])(?=.*[a-z])|(?=.*\d)(?=.*[^A-Za-z0-9])(?=.*[a-z])|(?=.*[^A-Za-z0-9])(?=.*[A-Z])(?=.*[a-z])|(?=.*\d)(?=.*[A-Z])(?=.*[^A-Za-z0-9]))^.*" type="password" placeholder="New Password" required="true">
                            </fieldset>
                            <fieldset class="form-group">
                                <label for="mobile">Retype Password for your WiFi Account</label>
                                <input class="form-control" ng-model="pass.pass2" pattern="(?=^.{6,255}$)((?=.*\d)(?=.*[A-Z])(?=.*[a-z])|(?=.*\d)(?=.*[^A-Za-z0-9])(?=.*[a-z])|(?=.*[^A-Za-z0-9])(?=.*[A-Z])(?=.*[a-z])|(?=.*\d)(?=.*[A-Z])(?=.*[^A-Za-z0-9]))^.*" type="password" placeholder="Retype Password" required="true">
                            </fieldset>   
                            Password policy is as follows:
                            <ol class="text text-danger">                                    
                                <li>Password must be least 8 characters in length</li>
                                <li>Password must contain digits (0-9)</li>
                                <li>Password must contain small letter alphabet characters (a-z)</li>
                                <li>Password must contain Non-alphanumeric characters (for example, !$#,%)</li>
                                <li>For example:  <strong>moh86#ak</strong></li>
                            </ol>                             
                            <button type="submit" class="btn btn-primary btn-sm">Reset</button>                
                        </form> 
                    </div>
                </div>
                <div class="col-sm-8 col-sm-offset-2 alert alert-success" ng-show="reset">
                    Your WiFi password is changed successfully
                </div>
            </div>
            <div class="col-sm-8 col-sm-offset-2" ng-if="user.services[0].status !== 'Created'">
                <div class="alert alert-danger">
                    Your WiFi account is not yet created
                </div>
            </div>
        </div> 
    </div>
</div>