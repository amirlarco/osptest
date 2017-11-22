<div class="panel-heading">
    <div class="page-title"><span class="fa fa-upload"></span> Uploads</div>
</div>
<div class="panel-body" ng-controller="ServicesCtlr">
    <div class="well-sm text-center text-danger">
        <strong>Alert</strong>: You can modify/update your profile until it is not verified by your Chairman or Provost. Once it is verified you will not be able to modify your profile.
    </div>
    <div ng-show="!user.profile.verification[0].provost && !user.profile.verification[1].chairman">
        <div class="page-content text-center">
            <form enctype="multipart/form-data" ng-submit="uploadPhoto()" ng-show="!photouploaded">
                <table>
                    <tr>
                        <td>
                            <input type="file" file-model="upload" required="true" title="Select your Profile Photo" />                    
                        </td>
                        <td><input type="submit" class="btn btn-primary btn-xs" value="Edit Profile Photo" /></td>
                    </tr>
                </table>  
            </form>
            <div class="alert alert-success" ng-show="photouploaded">
                Your Profile Photo uploaded successfully
            </div>
            <br/>
            <form enctype="multipart/form-data" ng-submit="uploadCert()" ng-show="!certuploaded">
                <table>
                    <tr>
                        <td>
                            <input type="file" file-model="upload" required="true" title="Select your High School Certificate" />                    
                        </td>
                        <td>
<input type="submit" class="btn btn-primary btn-xs" value="Edit High School Certificate" />
Kindly ensure that your High School Certificate is self attested before uploading
</td>
                    </tr>
                </table>  
            </form>
            <div class="alert alert-success" ng-show="certuploaded">
                Your High School Certificate uploaded successfully
            </div>
            <br/>
            <form enctype="multipart/form-data" ng-submit="uploadSignature()" ng-show="!siguploaded">
                <table>
                    <tr>
                        <td>
                            <input type="file" file-model="upload" required="true" title="Select your Signature" />                    
                        </td>
                        <td><input type="submit" class="btn btn-primary btn-xs" value="Edit Signature" /></td>
                    </tr>
                </table>  
            </form>
            <div class="alert alert-success" ng-show="siguploaded">
                Your Signature uploaded successfully
            </div>
            <br/>
            <form enctype="multipart/form-data" ng-submit="uploadAddConti()" ng-show="!adcontuploaded">
                <table>
                    <tr>
                        <td>
                            <input type="file" file-model="upload" name="addressproof" id="file_id" required="true" title="Select your Addmission/Continuation Slip" />                    
                        </td>
                        <td>
<input type="submit" class="btn btn-primary btn-xs" value="Edit Admission/Continuation Slip" />
Kindly ensure that your Admission/Continuation Slip is self attested before uploading.
</td>
                    </tr>
                </table>  
            </form>
            <div class="alert alert-success" ng-show="adcontuploaded">
                Your Admission/Continuation Slip uploaded successfully
            </div>
        </div>
    </div>
    <div ng-if="user.profile.verification[0].provost || user.profile.verification[1].chairman">
        <div class="well-sm text-center text-danger">
            Your profile is not editable as this account is verified by Chairperson or Provost or Both.
        </div>
    </div>
</div>
