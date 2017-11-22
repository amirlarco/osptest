<%-- 
    Document   : changeemailview
    Created on : 7 Mar, 2017, 2:34:25 PM
    Author     : asad
--%>

<div class="panel-heading">
    <div class="page-title"><span class="fa fa-phone-square"></span> My Contact</div>
</div>
<div class="panel-body" ng-controller="UpdateContactsCtrl">        
    <div class="row">                
        <div class="col-sm-6 col-sm-offset-3" ng-show="!emailupdated">
            <form ng-submit="updateEmail()">
                <fieldset class="form-group">
                    <label for="email">New Email:</label>
<!--                    <input class="form-control" name="email" type="email" placeholder="New Email"> -->
                    <input ng-model="newemail" name="email" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" class="form-control" id="email" placeholder="New Email" required="true">
                </fieldset>
                <button type="submit" class="btn btn-primary btn-sm">Submit</button>
                <button type="reset" class="btn btn-primary btn-sm">Reset</button>
            </form>            
        </div>
        <div class="col-sm-6 col-sm-offset-3" ng-if="emailupdated">
            <div class="alert alert-success">
                {{message}}
            </div>            
        </div>
    </div>    
</div>
