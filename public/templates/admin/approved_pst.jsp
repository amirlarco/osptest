<%@page import="java.util.Date"%>
<div class="panel-heading" ng-controller="ApprovalProvostCtrl">
    <div class="page-title"><strong><span class="glyphicon glyphicon-check"></span> Approved Students <span class="badge">{{approved.length}}</span></strong></div>
</div>
<div class="panel-body" ng-controller="ApprovalProvostCtrl">
    <div class="row">
        <div class="col-xs-12"> 
            <div class="pull-right" ng-if="approved.length > 0">
                <button class="btn btn-success btn-xs" ng-csv="getApproved" csv-header="getHeaderA()" filename="chairperson_verified.csv">
                    <i class="fa fa-file-excel-o"></i> Export to CSV
                </button>
                <button class="btn btn-danger btn-xs" ng-click="print('printarea')">
                    <i class="fa fa-print"></i> Print
                </button>
            </div>
            <br><br>
            <div id="printarea" hidden="true">                
                <%
                    Date dt = new Date();
                %>
                <p>
                <center>
                    List of Approved Students for continuation by: <strong>Provost {{approved[0].details[1].hall}}</strong>
                    <br>As on <%=dt%>
                </center>
                </p>
                <table border="1">
                    <tr>
                        <th>SR#</th>                                     
                        <th>Name of Students</th>
                        <th>Enrollment No</th>
                        <th>Faculty No</th>
                        <th>Course Type</th>
                        <th>Course Name</th>
                        <th>Sem/Year</th>
                        <th>Hall</th>
                        <th>Continuation Type</th>
                    </tr>
                    <tr ng-repeat="student in approved | orderBy: 'profile.department'">
                        <td>{{$index + 1}}</td>
                        <td>{{student.student[0].fullName}}</td>
                        <td>{{student.student[0].enroll}}</td>
                        <td ng-if="student.type === 'Same Course'">{{student.student[0].profile.facultyNumber}}</td>
                        <td ng-if="student.type === 'New Course'">{{student.details[1].facno}}</td>
                        <td ng-if="student.type === 'Same Course'">{{student.student[0].profile.courseType}}</td>
                        <td ng-if="student.type === 'New Course'">{{student.details[1].courseType}}</td>
                        <td ng-if="student.type === 'Same Course'">{{student.student[0].profile.courseName}}</td>
                        <td ng-if="student.type === 'New Course'">{{student.details[1].courseName}}</td>
                        <td>{{student.details[1].semesterYear}}</td>
                        <td>{{student.details[1].hall}}</td>
                        <td>{{student.type}}</td>
                    </tr>                   
                </table>
            </div>
            <table class="table table-striped">
                <tr>
                    <th>SR#</th>                                     
                    <th>Name of Students</th>
                    <th>Enrollment No</th>
                    <th>Faculty No</th>
                    <th>Course Type</th>
                    <th>Course Name</th>
                    <th>Sem/Year</th>
                    <th>Hall</th>
                    <th>Continuation Type</th>
                </tr>
                <tr ng-repeat="student in approved">                        
                    <td>{{$index + 1}}</td>                    
                    <td>
                        <strong>{{student.student[0].fullName | uppercase}}</strong>
<!--                        <a href="#" data-toggle="modal" data-target="{{'#' + student.enroll}}">{{student.student[0].fullName}}</a>
                         Modal 
                        <div class="modal modal-wide fade" id="{{student.enroll}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
                                        <table class="table">
                                            <tbody>
                                                <tr>
                                                    <td>Full Name</td>
                                                    <td>{{student.student[0].profile.fullName}}</td>
                                                    <td>Course Type</td>
                                                    <td>{{student.student[0].profile.courseType}}</td>
                                                </tr>
                                                <tr>
                                                    <td>Enrollment Number</td>
                                                    <td>{{student.student[0].profile.enroll}}</td>
                                                    <td>Course Name</td>
                                                    <td>{{student.student[0].profile.courseName}}</td>
                                                </tr>
                                                <tr>
                                                    <td>Father's Name</td>
                                                    <td>{{student.student[0].profile.fatherName}}</td>
                                                    <td>Semester/Year</td>
                                                    <td>{{student.student[0].profile.semesterYear}}</td>
                                                </tr>
                                                <tr>
                                                    <td>Mother's Name</td>
                                                    <td>{{student.student[0].profile.motherName}}</td>
                                                    <td>Faculty Number</td>
                                                    <td>{{student.student[0].profile.facultyNumber}}</td>
                                                </tr>
                                                <tr>
                                                    <td>Date of Birth</td>
                                                    <td>{{student.student[0].profile.dob.$date| date: 'longDate'}}</td>
                                                    <td>Department</td>
                                                    <td>{{student.student[0].profile.department}}</td>
                                                </tr>
                                                <tr>
                                                    <td>Gender</td>
                                                    <td>{{student.student[0].profile.gender}}</td>
                                                    <td>Hall of Residence</td>
                                                    <td ng-if="student.student[0].profile.hall === 'N.R.S.C. Hall'">{{student.student[0].profile.hall}}
                                                        Address: {{student.student[0].profile.nrscadd}}
                                                    </td>
                                                    <td ng-if="student.student[0].profile.hall !== 'N.R.S.C. Hall'">{{student.student[0].profile.hall}}<br>
                                                        Hostel: {{student.student[0].profile.hostel}}<br>
                                                        Room: {{student.student[0].profile.room}}
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Nationality</td>
                                                    <td>                                                        
                                                        <span class="label label-success">{{student.student[0].profile.country}}</span>
                                                    </td>                                                    
                                                    <td>Contact</td>
                                                    <td>
                                                        Email: <a href="mailto:{{student.student[0].email}}">{{student.student[0].email}}</a><br/>
                                                        Mobile: {{student.student[0].mobile}}
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Permanent Address</td>
                                                    <td>{{student.student[0].profile.address}}<br/>
                                                        {{student.student[0].profile.city}}<br/>
                                                        {{student.student[0].profile.state}} - {{student.student[0].profile.pincode}}<br/>
                                                        {{student.student[0].profile.country}}
                                                    </td>
                                                    <td>Emergency Contact</td>
                                                    <td>
                                                        Person: {{student.student[0].profile.emergencyContactPerson.name}} <span class="label label-info">{{student.student[0].profile.emergencyContactPerson.emergency_relation}}</span><br/>
                                                        Mobile: {{student.student[0].profile.emergencyContactPerson.mobile}}<br/>
                                                        Email: {{student.student[0].profile.emergencyContactPerson.email}}<br/>
                                                        Address: {{student.student[0].profile.emergencyContactPerson.address}} {{student.student[0].profile.emergencyContactPerson.city}} {{student.student[0].profile.emergencyContactPerson.state}} 
                                                    </td>
                                                </tr>
                                                <tr class="text-center">                                                    
                                                    <td colspan="4">
                                                        <a href="{{student.student[0].attachments[1].realPath}}" target="blank">
                                                            <div class="col-md-4 col-sm-6 hero-feature">
                                                                <div class="thumbnail">
                                                                    <img id="cert" src="{{student.student[0].attachments[1].url}}" alt="{{student.student[0].attachments[1].label}}">
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
                                    <div class="modal-footer">                                        
                                                                                <input type="text" ng-model="comment" required="true" class="form-control" placeholder="Mention the reason for rejecting" /><br/>
                                                                                <button type="button" class="btn btn-danger btn-sm" ng-click="reject(comment, student._id, student.enroll)" data-dismiss="modal">Reject</button>
                                                                                <button type="button" class="btn btn-success btn-sm" ng-click="verifySingle()" data-dismiss="modal">Verify</button>
                                        <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Cancel</button>
                                    </div>
                                </div>
                            </div>
                        </div>-->
                    </td>
                    <td>{{student.student[0].enroll}}</td>
                    <td ng-if="student.type === 'Same Course'">{{student.student[0].profile.facultyNumber}}</td>
                    <td ng-if="student.type === 'New Course'">{{student.details[1].facno}}</td>
                    <td ng-if="student.type === 'Same Course'">{{student.student[0].profile.courseType}}</td>
                    <td ng-if="student.type === 'New Course'">{{student.details[1].courseType}}</td>
                    <td ng-if="student.type === 'Same Course'">{{student.student[0].profile.courseName}}</td>
                    <td ng-if="student.type === 'New Course'">{{student.details[1].courseName}}</td>
                    <td>{{student.details[1].semesterYear}}</td>
                    <td>{{student.details[1].hall}}</td>
                    <td>{{student.type}}</td>
                </tr>                    
            </table>                                   
        </div>
    </div>
</div>
