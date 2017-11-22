<div class="panel-heading">
    <div class="page-title"><span class="glyphicon glyphicon-phone"></span> My Contact</div>
</div>
<div class="panel-body" ng-controller="UpdateContactsCtrl">     
    <div class="row">
        <div class="form-horizontal col-lg-6 col-lg-offset-3">
            <div class="form-group">
                <label class="control-label col-sm-2" for="email">Email:</label>
                <div class="checkbox">
                    {{user.email}} 
                    <a href="#" class="label label-primary" ng-click="changeEmail()">
                        <i class="fa fa-edit"></i> Change
                    </a>        
                </div>                
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="pwd">Mobile:</label>
                <div class="checkbox">
                    {{user.mobile}}
                    <a href="#" class="label label-primary" ng-click="changeMobile()">
                        <i class="fa fa-edit"></i> Change
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>