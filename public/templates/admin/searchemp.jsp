<div ng-controller="SearchEmployeeCtrl" class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                <span class="glyphicon glyphicon-user"></span> Search Employee
            </header>
            <div class="panel-body">
                <form ng-submit="searchEmployee()" class="navbar-form" role="search">
                    <center>
                        <div class="input-group">
                            <input type="text" ng-model="pid" class="form-control" placeholder="Employee ID" required="true">
                            <div class="input-group-btn">
                                <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                            </div>
                        </div>
                    </center>
                </form>
                <div class="row" ng-show="result.success">
                    <div class="col-lg-4">
                        <section class="panel">
                            <header class="panel-heading">
                                <strong><span class="fa fa-database"></span> Oracle</strong>
                            </header>
                            <div class="panel-body">
                                <center>
                                    <strong><span ng-class="result.salary.success ? 'text text-success' : 'text text-danger'">{{result.ad.success ? 'YES' : 'NO'}}</span></strong>
                                </center>
                                Name: <strong> {{result.salary.name}}</strong><br>
                                Designation: <strong> {{result.salary.desig}}</strong><br>
                                Department: <strong> {{result.salary.dep}}</strong><br>
                                Gender: <strong> {{result.salary.gender}}</strong><br>
                                Pan: <strong> {{result.salary.pan}}</strong><br>
                            </div>
                        </section>
                    </div>
                    <div class="col-lg-4">
                        <section class="panel">
                            <header class="panel-heading">
                                <strong><span class="fa fa-database"></span> LDAP</strong>
                            </header>
                            <div class="panel-body" ng-repeat="item in result.ad">
                                <center>
                                    <strong><span ng-class="item.success ? 'text text-success' : 'text text-danger'">{{item.success ? 'YES' : 'NO'}}</span></strong>
                                </center>
                                Found Object: <strong>{{item.dn}}</strong>
                            </div>
                        </section>
                    </div>                    
                    <div class="col-lg-4">
                        <section class="panel">
                            <header class="panel-heading">
                                <strong><span class="fa fa-database"></span> MongoDB</strong>                                
                            </header>
                            <div class="panel-body">
                                <center>
                                    <strong><span ng-class="result.portal.success ? 'text text-success' : 'text text-danger'">{{result.portal.success ? 'YES' : 'NO'}}</span></strong>
                                </center>
                                Name: <strong> {{result.portal.data.name}}</strong><br>
                                Designation: <strong> {{result.portal.data.desig}}</strong><br>
                                Department: <strong> {{result.portal.data.dname}}</strong><br>
                                Gender: <strong> {{result.portal.data.gender}}</strong><br>
                                Mobile <strong> {{result.portal.data.mobile}}</strong><br>
                                Email: <strong> {{result.portal.data.email}}</strong><br>
                                Random Password: <strong> {{result.portal.data.secret}}</strong><br>
                                Pan: <strong> {{result.portal.data.pan}}</strong><br>
                                First Login: <strong> {{result.portal.data.isfirstlogin}}</strong><br>
                                SSPR Processed: <span ng-class="result.portal.data.isprofileready ? 'label label-success' : 'label label-danger'"> {{result.portal.data.isprofileready ? 'YES' : 'NO'}}</span><br>
                                Last Login: <strong> {{result.portal.data.lastlogin}}</strong><br>
                                Source: <strong> {{result.portal.data.source}}</strong><br>
                                Created On:  <strong> {{result.portal.data.createdOn | date}}</strong><br>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>