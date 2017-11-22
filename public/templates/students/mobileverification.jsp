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
    <div class="page-title">Mobile Verification</div>
</div>
<div class="panel-body">
    <div class="row" ng-controller="ServicesCtlr"> 
        <div class="well-sm text-center text-danger">
            <strong>Alert</strong>: You can modify/update your profile until it is not verified by your Chairman or Provost. Once it is verified you will not be able to modify your profile.
        </div>
        <div ng-if="!user.profile.verification[0].provost && !user.profile.verification[1].chairman">
            <div class="col-md-8 col-md-offset-2">
                <div class="box">
                    <div ng-if="!verified">
                        <div class="content-wrap" ng-if="!sms_sent"> 
                            An One Time Password (OTP) will be sent to this mobile number. Kindly check your inbox and enter OTP to verify your mobile.<br/>
                            <br/>
                            <h4 class="text text-info"><%=temp%></h4>  
                            <br/>  <br/>                                                  
                            <button class="btn btn-primary btn-sm" ng-click="sendSMS()">Send</button>             
                        </div>
                        <div class="content-wrap" ng-if="sms_sent"> 
                            Kindly enter the OTP sent to your mobile<br/>
                            <fieldset class="form-group">
                                <label for="otp">Enter OTP</label>
                                <input name="otp" type="text" class="form-control" ng-model="mobile.otp" placeholder="Enter OTP">
                            </fieldset>
                            <br/>                                                  
                            <button class="btn btn-primary btn-sm" ng-click="verifyMobile()">Verify</button>             
                        </div>
                    </div>
                    <div class="content-wrap" ng-if="verified"> 
                        <div class="alert alert-success col-sm-8">
                            Your mobile is successfully verified
                        </div>           
                    </div>
                </div>
            </div>
        </div>
        <div ng-if="user.profile.verification[0].provost || user.profile.verification[1].chairman">
            <div class="well-sm text-center text-danger">
                Your profile is not editable as this account is verified by Chairperson or Provost or Both.
            </div>
        </div>
    </div>
</div>