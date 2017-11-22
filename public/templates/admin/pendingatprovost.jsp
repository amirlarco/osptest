<div ng-controller="UsersStatus">
    <div class="col-sm-12">
        <section class="panel">
            <header class="panel-heading ">
                Pending at Provost
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
                                            <td>{{student.profile.dob.$date| date: 'longDate'}}</td>
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
            </header>  
            <div class="panel-body">           
                <form class="form-inline text-center" role="form" ng-submit="fingPendingAtProvost()">                    
                    <div class="form-group">
                        <select name="hall" class="form-control" ng-model="hall" ng-options="x.name for x in halls| orderBy: 1" required="true">
                            <option value="">Department</option>
                        </select>                    
                    </div>
                    <button type="submit" class="btn btn-success btn-sm">Find</button>
                </form>
                <br/>
                <div class="pull-left" ng-if="provostpending.length > 0">
                    <span class="text-primary">{{hall.name}} <span class="badge">{{provostpending.length}}</span></span>
                </div>
                <div class="pull-right" ng-if="provostpending.length > 0">
                    <button class="btn btn-success btn-xs" ng-csv="getPendingStudents" csv-header="getHeader()" filename="students.csv">
                        <i class="fa fa-file-excel-o"></i> Export to CSV
                    </button>
                    <button class="btn btn-danger btn-xs" ng-click="print('printarea')">
                        <i class="fa fa-print"></i> Print
                    </button>
                </div>
                <br><br>
                <div id="printarea" hidden="true">                    
                    <center> Hall: <strong>{{hall.name}}</strong></center>
                    </p>
                    <table border="1">
                        <tr>
                            <th>SR#</th>                    
                            <th>Name of Students</th>
                            <th>Enrollment No</th>
                            <th>Hostel</th>
                            <th>Room #</th>
                            <th>Course</th>     
                            <th>Semester/Year</th> 
                        </tr>
                        <tr ng-repeat="student in provostpending| orderBy: 'fullName'">                        
                            <td>{{$index + 1}}</td>
                            <td>{{student.fullName}}</td>
                            <td>{{student.enroll}}</td>
                            <td>{{student.profile.hostel}}</td>
                            <td>{{student.profile.room}}</td>
                            <td>{{student.profile.courseName}}</td>
                            <td>{{student.profile.semesterYear}}</td>
                        </tr>                    
                    </table>
                </div>                 
                <table class="table table-striped" ng-if="provostpending.length > 0">
                    <tr>
                        <th>SR#</th>                    
                        <th>Name of Students</th>
                        <th>Enrollment No</th>
                        <th>Hostel</th>
                        <th>Room #</th>
                        <th>Course</th>     
                        <th>Semester/Year</th> 
                    </tr>
                    <tr ng-repeat="student in provostpending| orderBy: 'fullName'">
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
                                                        <td>{{student.profile.dob.$date| date: 'longDate'}}</td>
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
                        <td>{{student.profile.hostel}}</td>
                        <td>{{student.profile.room}}</td>
                        <td>{{student.profile.courseName}}</td>
                        <td>{{student.profile.semesterYear}}</td>
                    </tr>                    
                </table>
            </div>
        </section>
    </div>
</div>
