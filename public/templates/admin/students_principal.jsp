<div class="panel-heading">
    <div class="page-title"><stron><span class="glyphicon glyphicon-edit"></span> Unverified Students</stron></div>
</div>
<div class="panel-body" ng-controller="VerificationPrincipalCtrl">
    <div class="row">
        <div class="col-xs-12">
            <div ng-if="unverified.length > 0" class="alert alert-warning">
                <strong>Important Note for Principal Office</strong>: Kindly don't verify any request if it is not as per your record. If you found
                any student's information not matching as per your record leave as it is unverified. In case any students whose records are 
                not matching with yours and insisting you to verify, ask him/her to edit their profile and provide correct information.
                Every student can edit/modify their information until you verify it.
            </div>
            <table class="table table-striped">
                <tr>
                    <th>SR#</th>
                    <th>
                        <input type="checkbox" ng-model="chairman.value" ng-click="chairmanAll()">                                        
                    </th>                    
                    <th>Name of Students</th>
                    <th>Enrollment No</th>
                    <th>Faculty No</th>
                    <th>Course</th>
                    <th>Department</th>
                    <th>Hall</th>            
                </tr>
                <tr ng-repeat="student in unverified">                        
                    <td>{{$index + 1}}</td>
                    <td>
                        <input type="checkbox" ng-model="student.profile.verification[1].chairman">
                    </td>
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
                </tr>                    
            </table>
            <button ng-if="unverified.length > 0" class="btn btn-success btn-sm" ng-click="verify()">Verify</button>                 
        </div>
    </div>
</div>
