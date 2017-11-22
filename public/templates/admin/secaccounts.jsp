<div ng-controller="SecondaryAccountsCtrl">
    <div class="row">
        <div class="col-xs-12">
            <section class="panel">
                <header class="panel-heading ">
                    <i class="fa fa-list"></i> List of Secondary Accounts
                </header>                 
                <div class="panel panel-body">
                    <!--                    <div ng-if="listofsecaccounts.length > 0" class="pull-right">
                                            <button class="btn btn-success btn-xs" ng-csv="getUnapproved" csv-header="getHeader()" filename="cont_request.csv">
                                                <i class="fa fa-file-excel-o"></i> Export to CSV
                                            </button>
                                            <button class="btn btn-danger btn-xs" ng-click="processCont()">
                                                <i class="fa fa-cogs"></i> Process
                                            </button>
                                        </div>
                                        <br/><br/>-->
                    <table class="table">
                        <tr>
                            <th>SR#</th>
                            <th>Name of Employee</th>
                            <th>Permanent ID</th>
                            <th>Designation</th>
                            <th>Gender</th>
                            <th>Department</th>
                            <th>SSPR</th>
                            <th>Accounts</th>
                            <th>Source</th>
                            <th>Created On</th>
                        </tr>
                        <tr ng-repeat="emp in listofsecaccounts">                        
                            <td>{{$index + 1}}</td>                                                        
                            <td>{{emp.name}}</td>
                            <td>{{emp.pid}}</td>
                            <td>{{emp.desig}}</td>
                            <td>{{emp.gender}}</td>
                            <td>{{emp.dname}}</td>
                            <td>{{emp.isprofileready}}</td>
                            <td>
                                <table class="table">
                                    <tr ng-repeat="item in emp.secondaryAccount">
                                        <td><strong>{{$index + 1}}</strong></td>
                                        <td class="text text-danger" style="font-size: 10px;">
                                            Persona: {{item.persona}}<br>
                                            Validity: {{item.validity}}<br>
                                            Created By: {{item.createdBy}}<br>
                                            Created On: {{item.createdOn}}
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>{{emp.source}}</td>
                            <td>{{emp.createdOn}}</td>                                                
                        </tr>                    
                    </table>                    
                </div>
            </section>
        </div>
    </div>
</div>