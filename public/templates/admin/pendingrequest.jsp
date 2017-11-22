<div ng-controller="ContRequestCntrl">
    <div class="row">
        <div class="col-xs-12">
            <section class="panel">
                <header class="panel-heading ">
                    <i class="fa fa-check"></i> Continuation Request Pending
                </header>                 
                <div class="panel panel-body">
                    <div ng-if="unapproved.length > 0" class="pull-right">
                        <button class="btn btn-success btn-xs" ng-csv="getUnapproved" csv-header="getHeader()" filename="cont_request.csv">
                            <i class="fa fa-file-excel-o"></i> Export to CSV
                        </button>
                        <button class="btn btn-danger btn-xs" ng-click="processCont()">
                            <i class="fa fa-cogs"></i> Process
                        </button>
                    </div>
                    <br/><br/>
                    <table class="table">
                        <th>SR#</th>  
                        <th>
                            <input type="checkbox" ng-model="checker" ng-click="checkAll()">                                        
                        </th>
                        <th>Name of Students</th>
                        <th>Enrollment No</th>
                        <th>Faculty No</th>
                        <th>Course Type</th>
                        <th>Course Name</th>
                        <th>Sem/Year</th>
                        <th>Hall</th>
                        <th>Continuation Type</th>
                        </tr>
                        <tr ng-repeat="student in unapproved">                        
                            <td>{{$index + 1}}</td>
                            <td><input type="checkbox" ng-model="student.student.isChecked" /></td>
                            <td>
                                <a href="#" data-toggle="modal" data-target="{{'#' + student.enroll}}">{{student.student[0].fullName}}</a>
                                <div class="modal modal-wide fade " id="{{student.enroll}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header text-center">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <a href="{{student.student[0].attachments[0].realPath}}" target="blank">    
                                                    <img alt="{{student.student[0].fullName}}" src="{{student.student[0].attachments[0].url}}" class="img-thumbnail img-responsive" height="100" width="100">
                                                </a>
                                                <h4 class="modal-title" id="myModalLabel">{{student.student[0].fullName}}</h4>
                                            </div>
                                            <div class="modal-body">
                                                <table class="table table-user-information">
                                                    <tbody>
                                                        <tr>
                                                            <th>Full Name</th>
                                                            <td>{{student.student[0].profile.fullName}}</td>
                                                            <th>Course Type</th>
                                                            <td>{{student.student[0].profile.courseType}}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Enrollment Number</th>
                                                            <td>{{student.student[0].profile.enroll}}</td>
                                                            <th>Course Name</th>
                                                            <td>{{student.student[0].profile.courseName}}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Father's Name</th>
                                                            <td>{{student.student[0].profile.fatherName}}</td>
                                                            <th>Semester/Year</th>
                                                            <td>{{student.student[0].profile.semesterYear}}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Mother's Name</th>
                                                            <td>{{student.student[0].profile.motherName}}</td>
                                                            <th>Faculty Number</th>
                                                            <td>{{student.student[0].profile.facultyNumber}}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Date of Birth</th>
                                                            <td>{{student.student[0].profile.dob.$date| date: 'longDate'}}</td>
                                                            <th>Department</th>
                                                            <td>{{student.student[0].profile.department}}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Gender</th>
                                                            <td>{{student.student[0].profile.gender}}</td>
                                                            <th>Hall of Residence</th>
                                                            <td ng-if="student.student[0].profile.hall === 'N.R.S.C. Hall'">{{student.student[0].profile.hall}}
                                                                Address: {{student.student[0].profile.nrscadd}}
                                                            </td>
                                                            <td ng-if="student.student[0].profile.hall !== 'N.R.S.C. Hall'">{{student.student[0].profile.hall}}<br>
                                                                Hostel: {{student.student[0].profile.hostel}}<br>
                                                                Room: {{student.student[0].profile.room}}
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th>Nationality</th>
                                                            <td>                                                        
                                                                <span class="label label-success">{{student.student[0].profile.country}}</span>
                                                            </td>                                                    
                                                            <th>Contact</th>
                                                            <td>
                                                                Email: <a href="mailto:{{student.student[0].email}}">{{student.student[0].email}}</a><br/>
                                                                Mobile: {{student.student[0].mobile}}
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th>Permanent Address</th>
                                                            <td>{{student.student[0].profile.address}}<br/>
                                                                {{student.student[0].profile.city}}<br/>
                                                                {{student.student[0].profile.state}} - {{student.student[0].profile.pincode}}<br/>
                                                                {{student.student[0].profile.country}}
                                                            </td>
                                                            <th>Emergency Contact</th>
                                                            <td>
                                                                Person: {{student.student[0].profile.emergencyContactPerson.name}} <span class="label label-info">{{student.student[0].profile.emergencyContactPerson.emergency_relation}}</span><br/>
                                                                Mobile: {{student.student[0].profile.emergencyContactPerson.mobile}}<br/>
                                                                Email: {{student.student[0].profile.emergencyContactPerson.email}}<br/>
                                                                Address: {{student.student[0].profile.emergencyContactPerson.address}} {{student.student[0].profile.emergencyContactPerson.city}} {{student.profile.emergencyContactPerson.state}} 
                                                            </td>
                                                        </tr>
                                                        <tr class="text-center">                                                    
                                                            <td colspan="4">
                                                                <a href="{{student.student[0].attachments[1].realPath}}" target="blank">
                                                                    <div class="col-md-4 col-sm-6 hero-feature">
                                                                        <div class="thumbnail">
                                                                            <img id="cert" src="{{student.student[0].attachments[1].url}}" alt="{{student.attachments[1].label}}">
                                                                            <h5><span class="label label-default">{{student.student[0].attachments[1].label}}</span></h5>
                                                                        </div>
                                                                    </div> 
                                                                </a>
                                                                <a href="{{student.student[0].attachments[2].realPath}}" target="blank">
                                                                    <div class="col-md-4 col-sm-6 hero-feature">
                                                                        <div class="thumbnail">
                                                                            <img src="{{student.student[0].attachments[2].url}}" alt="{{student.student[0].attachments[2].label}}">                                                                
                                                                            <h5><span class="label label-default">{{student.student[0].attachments[2].label}}</span></h5>
                                                                        </div>
                                                                    </div>
                                                                </a>
                                                                <a href="{{student.student[0].attachments[3].realPath}}" target="blank">    
                                                                    <div class="col-md-4 col-sm-6 hero-feature">
                                                                        <div class="thumbnail">
                                                                            <img src="{{student.student[0].attachments[3].url}}" alt="{{student.student[0].attachments[3].label}}">
                                                                            <h5><span class="label label-default">{{student.student[0].attachments[3].label}}</span></h5>
                                                                        </div>
                                                                    </div>
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>                                    
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td>{{student.student[0].profile.enroll}}</td>
                            <td ng-if="student.type === 'Same Course'">{{student.student[0].profile.facultyNumber}}</td>
                            <td ng-if="student.type === 'New Course'">{{student.details[1].facno}}</td>
                            <td ng-if="student.type === 'Same Course'">{{student.student[0].profile.courseType}}</td>
                            <td ng-if="student.type === 'New Course'">{{student.details[1].courseType}}</td>
                            <td ng-if="student.type === 'Same Course'">{{student.student[0].profile.courseName}}</td>
                            <td ng-if="student.type === 'New Course'">{{student.details[1].courseName}}</td>
                            <td>{{student.details[1].semesterYear}}</td>
                            <td>{{student.details[1].hall}}</td>                            
                            <td><span class="label label-info">{{student.type}}</span></td>                    
                        </tr>                    
                    </table>
                    <button ng-if="unverified.length > 0" class="btn btn-success btn-sm" ng-click="verify()">Verify</button>
                </div>
            </section>
        </div>
    </div>
</div>