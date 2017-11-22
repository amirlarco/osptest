<div class="panel-heading">
    <div class="page-title">Signature Upload</div>
</div>
<div class="panel-body">
    <div class="page-content text-center" ng-controller="ServicesCtlr" >
        <div class="well-sm text-center text-danger">
            <strong>Alert</strong>: You can modify/update your profile until it is not verified by your Chairman or Provost. Once it is verified you will not be able to modify your profile.
        </div>
        <div ng-show="!user.profile.verification[0].provost && !user.profile.verification[1].chairman">
            <form enctype="multipart/form-data" ng-submit="uploadSignature()" ng-show="!siguploaded">
                <table>
                    <tr>
                        <td>
                            <input type="file" file-model="upload" required="true" title="Select your Signature" />
                            <!-- 
                                <input type="text" name="addressproof" hidden="true" value="addressproof" /> 
                            -->
                        </td>
                        <!-- name = name of the folder where this upload is going to be stored-->  
                        <td><input type="submit" class="btn btn-primary btn-sm" value="Upload Signature" /></td>
                    </tr>
                </table>  
            </form>
            <div class="alert alert-success" ng-show="siguploaded">
                Your Signature uploaded successfully
            </div>
        </div>
        <div ng-if="user.profile.verification[0].provost || user.profile.verification[1].chairman">
            <div class="well-sm text-center text-danger">
                Your profile is now verified by your Chairman or Provost or both.
            </div>
        </div>
    </div>
</div>