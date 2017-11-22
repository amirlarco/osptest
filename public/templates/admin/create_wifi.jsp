<%-- 
    Document   : create_profile
    Created on : Sep 3, 2016, 11:04:10 AM
    Author     : Mohammad
--%>

<div ng-controller="CreateAccountsCtrl">
    <div class="row">
        <div class="col-xs-12">
            <section class="panel">
                <header class="panel-heading ">
                    Create WiFi Account
                </header>                 
                <div class="panel panel-body">
                    <div ng-show="!uploaded">
                        <form enctype="multipart/form-data" ng-submit="uploadCSV()">                        
                            <input type="file" file-model="upload" name="csv" id="csv" required="true" />                    
                            <input type="submit" class="btn btn-primary btn-sm" value="Upload CSV"/>
                        </form>
                    </div>
                </div>
                <div class="panel panel-body">
                    <div ng-show="created">
                        <button class="btn btn-primary btn-sm" ng-click="createWiFi()">Create</button>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
