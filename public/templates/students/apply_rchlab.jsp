<div class="panel-heading">
    <div class="page-title"><span class="fa fa-graduation-cap"></span> Apply for Research Lab</div>
</div>
<div class="panel-body">
<div ng-controller="ServicesCtlr">    
    <div class="alert alert-danger" ng-if="!user.profile.isCompleted">
        Your profile is not up to date. You cannot apply for Research Lab unless you update your profile
        <a ui-sref="personal" class="btn btn-primary btn-xs">Update</a>
    </div>
    <div class="alert alert-danger" ng-if="!user.profile.verification[0].provost && user.attachments[3].isUploaded && user.attachments[2].isUploaded && user.attachments[1].isUploaded && user.attachments[0].isUploaded && user.contact.mobileID.isVerified && user.profile.isCompleted && user.contact.emailID.isVerified">
        Your profile is pending to be verified by your <strong>PROVOST</strong>. Please have patience. Once its verified you will be able to apply for Research Lab. You will be notified by SMS & Email once it is verified by both Provost & Dean/Chairperson.
    </div>
    <div class="alert alert-danger" ng-if="!user.profile.verification[1].chairman && user.attachments[3].isUploaded && user.attachments[2].isUploaded && user.attachments[1].isUploaded && user.attachments[0].isUploaded && user.contact.mobileID.isVerified && user.profile.isCompleted && user.contact.emailID.isVerified && user.profile.isCompleted">
        Your profile is pending to be verified by your <strong>CHAIRMAN</strong>. Please have patience. Once its verified you will be able to apply for Research Lab. You will be notified by SMS & Email once it is verified by both Provost & Dean/Chairperson.
    </div>
    <div class="alert alert-danger" ng-if="!user.contact.emailID.isVerified">
        Your email is yet to be verified. Kindly verify your email to apply for Research Lab
        <a ui-sref="emailverification" class="btn btn-primary btn-xs">Verify</a>
    </div>
    <div class="alert alert-danger" ng-if="!user.contact.mobileID.isVerified">
        Your mobile is yet to be verified. Kindly verify your mobile to apply for Research Lab
        <a ui-sref="mobileverification" class="btn btn-primary btn-xs">Verify</a>
    </div>   
    <div class="alert alert-danger" ng-if="!user.attachments[0].isUploaded">
        You have not yet uploaded your profile photo. Kindly upload your Photo to apply for Research Lab
        <a ui-sref="profilephoto" class="btn btn-primary btn-xs">Upload Profile Photo</a>
    </div>
    <div class="alert alert-danger" ng-if="!user.attachments[1].isUploaded">
        You have not yet uploaded your High School Certificate. Kindly upload your High School Certificate to apply for Research Lab
        <a ui-sref="highschoolcertificate" class="btn btn-primary btn-xs">Upload High School Certificate</a>
    </div>
    <div class="alert alert-danger" ng-if="!user.attachments[2].isUploaded">
        You have not yet uploaded your Signature. Kindly upload your Signature to apply for Research Lab
        <a ui-sref="signature" class="btn btn-primary btn-xs">Upload Signature</a>
    </div>
    <div class="alert alert-danger" ng-if="!user.attachments[3].isUploaded">
        You have not yet uploaded your Admission/Continuation Slip. Kindly upload your Admission/Continuation Slip to apply for Research Lab
        <a ui-sref="addconti" class="btn btn-primary btn-xs">Upload Admission/Continuation Slip</a>
    </div>
    <div class="row" ng-if="user.attachments[3].isUploaded && user.attachments[2].isUploaded && user.attachments[1].isUploaded && user.attachments[0].isUploaded && !rschapplied && user.profile.isCompleted && user.profile.verification[0].provost && user.profile.verification[1].chairman && user.contact.emailID.isVerified && user.contact.mobileID.isVerified">
        <div class="col-sm-12">
            <h4>Application for Research Lab</h4>
        </div>
        <div class="col-md-4 col-md-offset-4" ng-if="!user.services[2].applied">
            <div class="box">
                <div class="content-wrap col-sm-6">                                 
                    <button class="btn btn-primary btn-sm" ng-click="applyRSCH()">Apply for Research Lab</button>
                </div>
            </div>
        </div>
        <div class="alert alert-success col-md-10 col-md-offset-1" ng-if="user.services[2].applied">
            Your Research Lab request is accepted & is under process. Please bare with us. You will be notified very shortly by SMS & Email.
        </div>
    </div>
    <div class="alert alert-success" ng-if="rschapplied">
        You have successfully applied for <span class="badge">Research Lab</span>
    </div>
</div>
</div>