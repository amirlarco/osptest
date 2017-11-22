<div ng-controller="NonAcademicDepCtrl">    
    <div class="col-sm-12">
        <section class="panel">
            <header class="panel-heading ">
                Non-Academic
            </header>  
            <div class="panel-body">
                <form class="form-inline text-center" role="form" ng-submit="findNonAcademicStaff()">
                    <!--                <div class="form-group">
                                        <select name="hall" class="form-control" ng-model="userInfo.faculty" ng-options="x.faculty for x in faculties.data | orderBy: 'faculty'" required="true" ng-change="showDeaprtments()">
                                            <option value="">Faculty</option>
                                        </select>                    
                                    </div>-->
                    <div class="form-group">
                        <select name="hall" class="form-control" ng-model="dep" ng-options="x.dname for x in nonacademic_deps| orderBy: 1" required="true">
                            <option value="">Department</option>
                        </select>                    
                    </div>
                    <button type="submit" class="btn btn-success btn-sm">Find</button>
                </form>
                <br/>
                <div class="pull-right" ng-if="nonacademic_staff.length > 0">
                    <button class="btn btn-success btn-xs" ng-csv="getStaff" csv-header="getHeader()" filename="staff.csv">
                        <i class="fa fa-file-excel-o"></i> Export to CSV
                    </button>
                    <button class="btn btn-danger btn-xs" ng-click="print('printarea')">
                        <i class="fa fa-print"></i> Print
                    </button>
                </div>
                <br><br>
                <div id="printarea" hidden="true">                
                    <p>
                    <center>List of Staff: <strong> {{dep.dname}}</strong></center>
                    </p>
                    <table border="1">
                        <tr>
                            <th>SR#</th>                    
                            <th>Employee ID</th>
                            <th>Name</th>
                            <th>Designation</th>
                            <th>Mobile</th>
                            <th>Telephone</th>
                            <th>Email</th>
                            <th>Date of Birth</th>
                            <th>Gender</th>
                        </tr>
                        <tr ng-repeat="staff in nonacademic_staff| orderBy: 'orderlist'">
                            <td>{{$index + 1}}</td>
                            <td>{{staff.pid}}</td>
                            <td>{{staff.name}}</td>
                            <td>{{staff.desig}}</td>
                            <td>{{staff.mobile}}</td>
                            <td>{{staff.telephone}}</td>
                            <td>{{staff.email}}</td>
                            <td>{{staff.dob}}</td>
                            <td>{{staff.gender}}</td>
                        </tr>                    
                    </table>
                </div>
                <table class="table table-striped" ng-if="nonacademic_staff.length > 0">
                    <tr>
                        <th>SR#</th>                    
                        <th>Employee ID</th>
                        <th>Name</th>
                        <th>Designation</th>
                        <th>Mobile</th>
                        <th>Telephone</th>
                        <th>Email</th>
                        <th>Date of Birth</th>
                        <th>Gender</th>
                    </tr>
                    <tr ng-repeat="staff in nonacademic_staff| orderBy: 'orderlist'">
                        <td>{{$index + 1}}</td>
                        <td>{{staff.pid}}</td>
                        <td>{{staff.name}}</td>
                        <td>{{staff.desig}}</td>
                        <td>{{staff.mobile}}</td>
                        <td>{{staff.telephone}}</td>
                        <td>{{staff.email}}</td>
                        <td>{{staff.dob}}</td>
                        <td>{{staff.gender}}</td>
                    </tr>                  
                </table> 
            </div>
        </section>
    </div>
</div>
