<div class="panel-heading">
    <div class="page-title">High School Certificate Upload</div>
</div>
<div class="panel-body">
    <div class="page-content text-center" ng-controller="ServicesCtlr" >
        <div class="well-sm text-center text-danger">
            <strong>Alert</strong>: You can modify/update your profile until it is not verified by your Chairman or Provost. Once it is verified you will not be able to modify your profile.
        </div>
        <div ng-show="!user.profile.verification[0].provost && !user.profile.verification[1].chairman">
            <form enctype="multipart/form-data" ng-submit="uploadCert()" ng-show="!certuploaded">
                <table>
                    <tr>
                        <td>
                            <input type="file" file-model="upload" required="true" title="Select your High School Certificate" />                            
                        </td>                        
                        <td>
                            <input type="submit" class="btn btn-primary btn-sm" value="Upload High School Certificate" />
                            Kindly ensure that your High School Certificate is self attested before uploading.
                        </td>
                    </tr>
                </table>  
            </form>
            <div class="alert alert-success" ng-show="certuploaded">
                Your High School Certificate uploaded successfully
            </div>
        </div>
        <div ng-if="user.profile.verification[0].provost || user.profile.verification[1].chairman">
            <div class="well-sm text-center text-danger">
                Your profile is not editable as this account is verified by Chairperson or Provost or Both.
            </div>
        </div>
    </div>
</div>
