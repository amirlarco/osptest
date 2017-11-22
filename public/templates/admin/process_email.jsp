<div class="row">
    <div ng-controller="ProcessEmailCtrl">    
        <div class="col-xs-12">
            <section class="panel">
                <header class="panel-heading">
                    Process Email Accounts
                </header>
                <div class="panel-body">
                    <div ng-if="email_new.length > 0" class="pull-right">
                        <button class="btn btn-success btn-xs" ng-csv="getEmailrequest" csv-header="getEmailHeader()" filename="email_request.csv">
                            <i class="fa fa-file-excel-o"></i> Export to CSV
                        </button>
                        <!--                        <button class="btn btn-danger btn-xs" ng-click="process_email()">
                                                    <i class="fa fa-cogs"></i> Process
                                                </button>-->
                    </div>
                    <br/><br/>
                    <table class="table">
                        <tr>
                            <th>Sr#</th>                    
                            <th>Name of Students</th>
                            <th>Enrollment No</th>
                            <th>Faculty No</th>
                            <th>Course</th>
                            <th>Department</th>
                            <th>Hall</th>
                            <th>Applied On</th>
                            <th>Action</th>
                        </tr>
                        <tr ng-repeat="student in email_new| orderBy: '-services[3].appliedOn.$date'">                        
                            <td>{{$index + 1}}</td>
                            <td>
                                <a href="#" data-toggle="modal" data-target="{{'#' + student.enroll}}">{{student.fullName}}</a>
                                <!-- Modal -->
                                <div class="modal modal-wide fade" id="{{student.enroll}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
                                                            <td>{{student.profile.dob.$date| date: 'mediumDate'}}</td>
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
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td>{{student.enroll}}</td>
                            <td>{{student.profile.facultyNumber}}</td>
                            <td>{{student.profile.courseName}}</td>
                            <td>{{student.profile.department}}</td>
                            <td>{{student.profile.hall}}</td>
                            <td>{{student.services[3].appliedOn.$date | date: 'medium'}}</td>
                            <td>
                                <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="{{'#act' + student.enroll}}"><i class="fa fa-bolt"></i></a>
                                <div class="modal fade" id="{{'act' + student.enroll}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <form class="form-horizontal" role="form" ng-submit="processEmail(student.enroll)">                                                                                
                                                            <div class="form-group">
                                                                <label class="col-lg-4 control-label" for="reasonid">Email Created:</label>
                                                                <div class="col-lg-4">
                                                                    <input type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" class="form-control" id="premail" placeholder="Created Email" required="true" />
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="col-lg-4 control-label" for="docid">Password:</label>
                                                                <div class="col-lg-4">
                                                                    <input type="text" class="form-control" id="prpassword" placeholder="Password" required="true" />
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="col-lg-4 control-label"></label>
                                                                <div class="col-lg-4">
                                                                    <input type="submit" class="btn btn-primary btn-sm" value="Process" />
                                                                    <button type="button" class="btn btn-primary  btn-sm" data-dismiss="modal">Cancel</button>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>                    
                    </table>                    
                </div>
        </div>
    </div>
</div>
