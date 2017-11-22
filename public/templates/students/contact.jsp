<div class="panel-heading">
    <div class="page-title"><span class="glyphicon glyphicon-phone"></span> My Contact</div>
</div>
<div class="panel-body" ng-controller="ServicesCtlr">    
    <div class="well-sm text-center text-danger">
        <strong>Alert</strong>: You can modify/update your profile until it is not verified by your Chairman or Provost. Once it is verified you will not be able to modify your profile.
    </div>
    <div class="row">
        <div class="col-sm-8 col-sm-offset-2">
            <form ng-submit="updateContact()" ng-show="!updated">
                <fieldset class="form-group">
                    <label for="email">My Email</label>
                    <input class="form-control" name="email" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" ng-model="user.email" required="true"  ng-disabled="user.profile.verification[0].provost || user.profile.verification[1].chairman">            
                </fieldset>
                <fieldset class="form-group">
                    <label for="mobile">Mobile</label>
                    <input class="form-control" name="mobile" type="text" pattern="[7-9]{1}[0-9]{9}" ng-model="user.mobile" required="true"  ng-disabled="user.profile.verification[0].provost || user.profile.verification[1].chairman">            
                </fieldset>
                <button type="submit" class="btn btn-primary btn-sm" ng-disabled="user.profile.verification[0].provost || user.profile.verification[1].chairman">Update</button>
                <button type="reset" class="btn btn-primary btn-sm"  ng-disabled="user.profile.verification[0].provost || user.profile.verification[1].chairman">Reset</button>
            </form>
            <div class="alert alert-success" ng-show="updated">
                Your contact details updated successfully
            </div>
        </div>
    </div>    
</div>
