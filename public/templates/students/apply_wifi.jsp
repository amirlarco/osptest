<div class="panel-heading">
    <div class="page-title"><span class="fa fa-wifi"></span> Apply for Wifi</div>
</div>
<div class="panel-body">
    <div ng-controller="ServicesCtlr">
        <div class="alert alert-danger" ng-if="!user.profile.isCompleted">
            Your profile is not up to date. You cannot apply for Wifi Account unless you update your profile
            <a ui-sref="personal" class="btn btn-primary btn-xs">Update</a>
        </div>
        <div class="alert alert-danger" ng-if="!user.profile.verification[0].provost && user.attachments[3].isUploaded && user.attachments[2].isUploaded && user.attachments[1].isUploaded && user.attachments[0].isUploaded && user.contact.mobileID.isVerified && user.profile.isCompleted && user.contact.emailID.isVerified">
            Your profile is pending to be verified by your <strong>PROVOST</strong>. Please have patience. 
            Once its verified you will be able to apply for Wifi Account. You will be notified by SMS & Email once it is verified by both Provost & Dean/Chairperson.
        </div>
        <div class="alert alert-danger" ng-if="!user.profile.verification[1].chairman && user.attachments[3].isUploaded && user.attachments[2].isUploaded && user.attachments[1].isUploaded && user.attachments[0].isUploaded && user.contact.mobileID.isVerified && user.profile.isCompleted && user.contact.emailID.isVerified && user.profile.isCompleted">
            Your profile is pending to be verified by your <strong>DEAN/CHAIRMAN</strong>. Please have patience. Once its verified you will be able to apply for Wifi Account. You will be notified by SMS & Email once it is verified by both Provost & Dean/Chairperson.
        </div>
        <div class="alert alert-danger" ng-if="!user.contact.emailID.isVerified">
            Your email is yet to be verified. Kindly verify your email to apply for Wifi Account
            <a ui-sref="emailverification" class="btn btn-primary btn-xs">Verify</a>
        </div>
        <div class="alert alert-danger" ng-if="!user.contact.mobileID.isVerified">
            Your mobile is yet to be verified. Kindly verify your mobile to apply for Wifi Account
            <a ui-sref="mobileverification" class="btn btn-primary btn-xs">Verify</a>
        </div>
        <div class="alert alert-danger" ng-if="!user.attachments[0].isUploaded">
            You have not yet uploaded your profile photo. Kindly upload your Photo to apply for Wifi Account
            <a ui-sref="profilephoto" class="btn btn-primary btn-xs">Upload Profile Photo</a>
        </div>
        <div class="alert alert-danger" ng-if="!user.attachments[1].isUploaded">
            You have not yet uploaded your High School Certificate. Kindly upload your High School Certificate to apply for Wifi Account
            <a ui-sref="highschoolcertificate" class="btn btn-primary btn-xs">Upload High School Certificate</a>
        </div>
        <div class="alert alert-danger" ng-if="!user.attachments[2].isUploaded">
            You have not yet uploaded your Signature. Kindly upload your Signature to apply for Wifi Account
            <a ui-sref="signature" class="btn btn-primary btn-xs">Upload Signature</a>
        </div>
        <div class="alert alert-danger" ng-if="!user.attachments[3].isUploaded">
            You have not yet uploaded your Admission/Continuation Slip. Kindly upload your Admission/Continuation Slip to apply for Wifi Account
            <a ui-sref="addconti" class="btn btn-primary btn-xs">Upload Admission/Continuation Slip</a>
        </div>
        <div class="row" ng-if="user.attachments[3].isUploaded && user.attachments[2].isUploaded && user.attachments[1].isUploaded && user.attachments[0].isUploaded && !wifiapplied && user.profile.isCompleted && user.profile.verification[0].provost && user.profile.verification[1].chairman && user.contact.emailID.isVerified && user.contact.mobileID.isVerified">
            <div class="col-md-8 col-md-offset-2" ng-if="!user.services[0].applied">
                <div class="box">
                    <div class="content-wrap"> 
                        <form ng-submit="applyWIFI()">
                            <fieldset class="form-group">
                                <label for="email">MAC Address of your laptop</label>
                                <input class="form-control" style="text-transform: uppercase;" ng-model="apply.mac" type="text" pattern="^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$" id="input" maxlength = 17 required>
                                <small class="text-info">
                                    <li>Correct MAC Address input format: 70-77-81-30-CA-4B</li>
                                    <li>Incorrect MAC Address input format: 70:77:81:30:CA:4B</li>
                                    <li>Help: Kindly input only characters of your MAC Address, hyphen(-) will be added automatically</li>
                                </small>
                            </fieldset>                                                                                        
                            <input type="submit" class="btn btn-primary btn-sm" value="Apply for Wifi">
                        </form>
                        <script>
                            var length = 1;
                            $("#input").keypress(function () {                                        
                                var content = $(this).val();
                                var content1 = content.replace(/\-/g, '');
                                length = content1.length;
                                if (((length % 2) === 0) && length < 12 && length > 1) {
                                    $('#input').val($('#input').val() + '-');
                                }
                            });
                        </script>
                    </div>
                </div>
            </div>
            <div class="alert alert-success col-md-10 col-md-offset-1" ng-if="user.services[0].applied">
                <strong>Status!</strong> Your WiFi request is accepted & is under process. Please bare with us. You will be notified very shortly by SMS & Email.
            </div>  
            <div class="alert alert-success col-md-10 col-md-offset-1" ng-if="user.services[0].status==='Created'">
                <strong>Status!</strong> Your WiFi account is created. A notification email and sms have already been sent to your contact.
            </div>
        </div>
        <div class="alert alert-success" ng-if="wifiapplied">
            You have successfully applied for <span class="badge">WiFi</span>
        </div>
    </div>
</div>