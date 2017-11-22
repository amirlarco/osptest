<%-- 
    Document   : changemobileview
    Created on : 7 Mar, 2017, 2:21:36 PM
    Author     : asad
--%>

<div class="panel-heading">
    <div class="page-title"><span class="fa fa-phone-square"></span> My Contact</div>
</div>
<div class="panel-body" ng-controller="UpdateContactsCtrl">    
    
    <div class="row">
                
        <div class="col-sm-6 col-sm-offset-3" ng-show="!mobileupdated">
            <form ng-submit="updateMobile()">
                <fieldset class="form-group">
                    <label for="mobile">New Mobile:</label>
<!--                    <input class="form-control" ng-model="newmobile" name="mobile" type="text" placeholder="New Mobile">            -->
                    <input ng-model="newmobile" name="mobile" type="text" pattern="[7-9]{1}[0-9]{9}" class="form-control" id="mobile" required="true" placeholder="New Mobile"  oninvalid="this.setCustomValidity('Your Mobile Number should contain 10 digit and must bestrated with 7, 8 or 9')" oninput="setCustomValidity('')">
                </fieldset>
                <button type="submit" class="btn btn-primary btn-sm">Submit</button>
                <button type="reset" class="btn btn-primary btn-sm">Reset</button>
            </form>
            
        </div>
        <div class="col-sm-6 col-sm-offset-3" ng-if="mobileupdated">
            <div class="alert alert-success">
                {{message}}
            </div>            
        </div>
    </div>    
</div>
