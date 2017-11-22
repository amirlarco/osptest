<%-- 
    Document   : dean
    Created on : Aug 24, 2016, 10:29:49 PM
    Author     : Mohammad
--%>

<div ng-controller="AdminAccountCtrl">
    <div class="row">
        <div class="col-xs-12">
            <section class="panel">
                <header class="panel-heading ">
                    List of Chairpersons
                    <div class="pull-right">
                        <button class="btn btn-success btn-xs" ng-csv="getChairpersons" csv-header="getHeader()" filename="chairperson_accounts.csv">
                            <i class="fa fa-file-excel-o"></i> Export to CSV
                        </button>
                        <button class="btn btn-danger btn-xs">
                            <i class="fa fa-file-pdf-o"></i> Export to PDF
                        </button>
                    </div>
                </header>
                
                <table class="table table-condensed">
                    <tr>
                        <th>SR#</th>                   
                        <th>Name</th>
                        <th>Username</th>
                        <th>Role</th>
                        <th>Label</th>
                        <th>Gender</th>                    
                        <th>Email</th>                                        
                        <th>Last Login</th>            
                    </tr>
                    <tr ng-repeat="role in chairpersons">                        
                        <td>{{$index + 1}}</td>
                        <td>{{role.fullName}}</td>
                        <td>{{role.username}}</td>
                        <td>{{role.desig}}</td>
                        <td>{{role.label}}</td>
                        <td>{{role.gender}}</td>
                        <td>{{role.email}}</td>                                        
                        <td>{{role.lastLogon}}</td>                    
                    </tr>                    
                </table>  
            </section>
        </div>
    </div>
</div>
