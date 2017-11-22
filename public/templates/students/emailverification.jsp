<%
    String email = (String) session.getAttribute("email");
    email = email.replaceAll("(^[^@]{3}|(?!^)\\G)[^@]", "$1*");
%>
<div class="panel-heading">
    <div class="page-title">Email Verification</div>
</div>
<div class="panel-body">
    <div class="row" ng-controller="ServicesCtlr"> 
        <div class="well-sm text-center text-danger">
            <strong>Alert</strong>: You can modify/update your profile until it is not verified by your Chairman or Provost. Once it is verified you will not be able to modify your profile.
        </div>
        <div ng-show="!user.profile.verification[0].provost && !user.profile.verification[1].chairman">
            <div class="col-md-8 col-md-offset-2">
                <div class="box">
                    <div class="content-wrap"> 
                        A verification mail will be sent to this email. Kindly check your email and click on the link to verify your email.<br/>
                        <br/>
                        <h4 class="text text-info"><%=email%></h4>  
                        <br/>  <br/>                                                  
                        <button class="btn btn-primary btn-sm" ng-click="sendEmail()">Send</button>             
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
