<div class="panel-heading">
    <div class="page-title"><span class="glyphicon glyphicon-check"></span> Verified Students</div>
</div>
<div class="panel-body" ng-controller="VerificationDeanCtrl">
    <div class="row">
        <div class="col-xs-12">            
            <form class="form-inline text-center" role="form" ng-submit="findVerified()">
                <div class="form-group">
                    <select class="form-control input-sm" ng-model="forVerified.dep" ng-options="x for x in departments" required="true">
                        <option value="">Department</option>
                    </select>
                    <button type="submit" class="btn btn-success btn-sm">Find</button>
                </div>
            </form>
            <br/>
            <div class="pull-right" ng-if="verified_by_dean.length > 0">
                <button class="btn btn-success btn-xs" ng-csv="getVerified" csv-header="getHeaderV()" filename="dean_verified.csv">
                    <i class="fa fa-file-excel-o"></i> Export to CSV
                </button>
                <button class="btn btn-danger btn-xs" ng-click="print('printarea')">
                    <i class="fa fa-print"></i> Print
                </button>
            </div>
            <br><br>
            <div id="printarea" hidden="true">                
                <p>
                <center>List of Verified Students by: <strong>Dean {{dean}}</strong></center>
                </p>
                <table border="1">
                    <tr>
                        <th>SR#</th>                    
                        <th>Name of Students</th>
                        <th>Enrollment No</th>
                        <th>Faculty No</th>
                        <th>Course</th>
                        <th>Sem/Year</th>
                        <th>Department</th>
                        <th>District</th>
                        <th>State</th>
                        <th>Country</th>
                    </tr>
                    <tr ng-repeat="student in verified_by_dean | orderBy: 'profile.department'">
                        <td>{{$index + 1}}</td>
                        <td>{{student.fullName}}</td>
                        <td>{{student.enroll}}</td>
                        <td>{{student.profile.facultyNumber}}</td>
                        <td>{{student.profile.courseName}}</td>
                        <td>{{student.profile.semesterYear}}</td>
                        <td>{{student.profile.department}}</td>
                        <td>{{student.profile.city}}</td>
                        <td>{{student.profile.state}}</td>
                        <td>{{student.profile.country}}</td>
                    </tr>                    
                </table>
            </div>
            <table class="table table-striped" ng-if="verified_by_dean.length > 0">
                <tr>
                    <th>SR#</th>                    
                    <th>Name of Students</th>
                    <th>Enrollment No</th>
                    <th>Faculty No</th>
                    <th>Course</th>
                    <th>Department</th>
                    <th>Hall</th>
                    <th>Verified By</th>
                </tr>
                <tr ng-repeat="student in verified_by_dean | orderBy: 'fullName'">                        
                    <td>{{$index + 1}}</td>                    
                    <td>
                        <a href="#" data-toggle="modal" data-target="{{'#' + student.enroll}}">{{student.fullName}}</a>
                        <!-- Modal -->
                        <div class="modal fade" id="{{student.enroll}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header text-center">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <a href="{{student.attachments[0].realPath}}" target="blank">    
                                            <img alt="{{student.fullName}}" src="{{student.attachments[0].url}}" class="img-thumbnail img-responsive" height="100" width="100">
                                        </a>
                                        <h4 class="modal-title" id="myModalLabel">{{student.fullName}}</h4>
                                    </div>
                                    <div class="modal-body">
                                        <table class="table table-user-information">
                                            <tbody>
                                                <tr>
                                                    <td>Full Name</td>
                                                    <td>{{student.profile.fullName}}</td>
                                                    <td>Course Type</td>
                                                    <td>{{student.profile.courseType}}</td>
                                                </tr>
                                                <tr>
                                                    <td>Enrollment Number</td>
                                                    <td>{{student.profile.enroll}}</td>
                                                    <td>Course Name</td>
                                                    <td>{{student.profile.courseName}}</td>
                                                </tr>
                                                <tr>
                                                    <td>Father's Name</td>
                                                    <td>{{student.profile.fatherName}}</td>
                                                    <td>Semester/Year</td>
                                                    <td>{{student.profile.semesterYear}}</td>
                                                </tr>
                                                <tr>
                                                    <td>Mother's Name</td>
                                                    <td>{{student.profile.motherName}}</td>
                                                    <td>Faculty Number</td>
                                                    <td>{{student.profile.facultyNumber}}</td>
                                                </tr>
                                                <tr>
                                                    <td>Date of Birth</td>
                                                    <td>{{student.profile.dob.$date | date: 'longDate'}}</td>
                                                    <td>Department</td>
                                                    <td>{{student.profile.department}}</td>
                                                </tr>
                                                <tr>
                                                    <td>Gender</td>
                                                    <td>{{student.profile.gender}}</td>
                                                    <td>Hall of Residence</td>
                                                    <td ng-if="student.profile.hall === 'N.R.S.C. Hall'">{{student.profile.hall}}
                                                        Address: {{student.profile.nrscadd}}
                                                    </td>
                                                    <td ng-if="student.profile.hall !== 'N.R.S.C. Hall'">{{student.profile.hall}}<br>
                                                        Hostel: {{student.profile.hostel}}<br>
                                                        Room: {{student.profile.room}}
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Nationality</td>
                                                    <td>                                                        
                                                        <span class="label label-success">{{student.profile.country}}</span>
                                                    </td>                                                    
                                                    <td>Contact</td>
                                                    <td>
                                                        Email: <a href="mailto:{{student.email}}">{{student.email}}</a><br/>
                                                        Mobile: {{student.mobile}}
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Permanent Address</td>
                                                    <td>{{student.profile.address}}<br/>
                                                        {{student.profile.city}}<br/>
                                                        {{student.profile.state}} - {{student.profile.pincode}}<br/>
                                                        {{student.profile.country}}
                                                    </td>
                                                    <td>Emergency Contact</td>
                                                    <td>
                                                        Person: {{student.profile.emergencyContactPerson.name}} <span class="label label-info">{{student.profile.emergencyContactPerson.emergency_relation}}</span><br/>
                                                        Mobile: {{student.profile.emergencyContactPerson.mobile}}<br/>
                                                        Email: {{student.profile.emergencyContactPerson.email}}<br/>
                                                        Address: {{student.profile.emergencyContactPerson.address}} {{student.profile.emergencyContactPerson.city}} {{student.profile.emergencyContactPerson.state}} 
                                                    </td>
                                                </tr>
                                                <tr class="text-center">                                                    
                                                    <td colspan="4">
                                                        <a href="{{student.attachments[1].realPath}}" target="blank">
                                                            <div class="col-md-4 col-sm-6 hero-feature">
                                                                <div class="thumbnail">
                                                                    <img id="cert" src="{{student.attachments[1].url}}" alt="{{student.attachments[1].label}}">
                                                                    <h5><span class="label label-default">{{student.attachments[1].label}}</span></h5>
                                                                </div>
                                                            </div> 
                                                        </a>
                                                        <a href="{{student.attachments[2].realPath}}" target="blank">
                                                            <div class="col-md-4 col-sm-6 hero-feature">
                                                                <div class="thumbnail">
                                                                    <img src="{{student.attachments[2].url}}" alt="{{student.attachments[2].label}}">                                                                
                                                                    <h5><span class="label label-default">{{student.attachments[2].label}}</span></h5>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <a href="{{student.attachments[3].realPath}}" target="blank">    
                                                            <div class="col-md-4 col-sm-6 hero-feature">
                                                                <div class="thumbnail">
                                                                    <img src="{{student.attachments[3].url}}" alt="{{student.attachments[3].label}}">
                                                                    <h5><span class="label label-default">{{student.attachments[3].label}}</span></h5>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="modal-footer">                                        
                                        
                                        <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Cancel</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                    <td>{{student.enroll}}</td>
                    <td>{{student.profile.facultyNumber}}</td>
                    <td>{{student.profile.courseName}}</td>
                    <td>{{student.profile.department}}</td>
                    <td>{{student.profile.hall}}</td>
                    <td>
                        {{student.profile.verification[1].verifiedBy}}<br> 
                        <small class="text-muted">{{student.profile.verification[1].verifiedOn.$date | date:'medium'}}</small>
                    </td>
                </tr>                    
            </table>            
        </div>
    </div>
</div>