<%@page import="java.util.Date"%>
<div class="panel-heading">
    <div class="page-title"><strong><span class="glyphicon glyphicon-edit"></span> Pending Approval</strong></div>
</div>
<div class="panel-body" ng-controller="ApprovalDeanCtrl">    
    <div class="panel-heading">
        <div class="row">
            <div class="col-xs-12">            
                <form class="form-inline text-center" role="form" ng-submit="findUnapproved()">
                    <div class="form-group">
                        <select class="form-control input-sm" ng-model="dep" ng-options="x for x in departments" required="true">
                            <option value="">Department</option>
                        </select>
                        <button type="submit" class="btn btn-success btn-sm">Find</button>
                    </div>
                </form>
                <br/>
                <div ng-if="unverified.length > 0" class="alert alert-warning">
                    <strong>Important Note for Dean Office</strong>: Kindly don't verify any request if it is not as per your record. If you found
                    any student's information not matching as per your record leave as it is unverified. In case any students whose records are 
                    not matching with yours and insisting you to verify, ask him/her to edit their profile and provide correct information.
                    Every student can edit/modify their information until you verify it.
                </div>
                <div ng-if="unverified.length > 0" class="pull-right">
                    <button class="btn btn-success btn-xs" ng-csv="getUnapproved" csv-header="getHeader()" filename="dean_unverified.csv">
                        <i class="fa fa-file-excel-o"></i> Export to CSV
                    </button>
                    <button class="btn btn-danger btn-xs" ng-click="print('printarea')">
                        <i class="fa fa-print"></i> Print
                    </button>
                </div>
                <br/><br/>
                <div id="printarea" hidden="true">
                    <p><strong>Important Note for Dean Office</strong>: Kindly don't verify any request if it is not as per your record. If you found
                        any student's information not matching as per your record leave as it is unverified. In case any students whose records are 
                        not matching with yours and insisting you to verify, ask him/her to edit their profile and provide correct information.
                        Every student can edit/modify their information until you verify it.</p>
                        <%
                        Date dt = new Date();
                        String label = (String) session.getAttribute("label");
                        %>
                    <p>
                    <center>
                        List of Un-approved Students at Department <strong>{{unverified[0].details[1].dep}}</strong>
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
                        <tr ng-repeat="student in unapproved| orderBy: 'profile.department'">
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
                        <th>Action</th>
                        <th>Continuation Type</th>
                    </tr>
                    <tr ng-repeat="student in unapproved">                        
                        <td>{{$index + 1}}</td>
                        <td>
                            <strong>{{student.student[0].fullName| uppercase}}</strong>
                            <!--                        <a href="#" data-toggle="modal" data-target="{{'#' + student.enroll}}">{{student.student[0].fullName}}</a>
                                                     Modal 
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
                                                    </div>-->
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
                        <td>
                            <div class="btn-group">
                                <button data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle">
                                    <span class="glyphicon glyphicon-option-horizontal"></span>
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a href="#" data-toggle="modal" data-target="{{'#' + student.student[0].mobile}}"><span class="glyphicon glyphicon-check"></span> Approve</a></li>
                                    <!--                                <li><a href="#" data-toggle="modal" data-target="{{'#' + student.student[0]._id.$oid}}"><span class="fa fa-times"></span> Reject</a></li>-->
                                </ul>
                            </div>
                            <div class="modal modal-wide fade " id="{{student.student[0].mobile}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="alert alert-warning">
                                                        {{student.student[0].profile.fullName}} has applied for continuation in the {{student.type}}
                                                    </div>
                                                </div>
                                                <div class="col-sm-8">                                                
                                                    <table class="table" ng-show="student.type === 'Same Course'">
                                                        <tr>
                                                            <th>Semester/Year</th>
                                                            <td>{{student.details[1].semesterYear}}</td>
                                                            <th>Continuation Type</th>
                                                            <td>{{student.type}}</td> 
                                                        </tr>
                                                        <tr>
                                                            <th>Hall</th>
                                                            <td ng-if="student.details[1].hall === 'N.R.S.C. Hall'">{{student.details[1].hall}}
                                                                <br><strong>Address:</strong> {{student.details[1].nrscadd}}
                                                            </td>
                                                            <td ng-if="student.details[1].hall !== 'N.R.S.C. Hall'">{{student.details[1].hall}}<br>
                                                                Hostel: {{student.details[1].hostel}}<br>
                                                                Room: {{student.details[1].room}}
                                                            </td>
                                                            <th>Session</th>
                                                            <td>{{student.session}}</td>                                                         
                                                        </tr>
                                                    </table>
                                                    <table class="table" ng-show="student.type === 'New Course'">
                                                        <tr>
                                                            <th>Semester/Year</th>
                                                            <td>{{student.details[1].semesterYear}}</td>
                                                            <th>Continuation Type</th>
                                                            <td>{{student.type}}</td> 
                                                        </tr>
                                                        <tr>
                                                            <th>Course Type</th>
                                                            <td>{{student.details[1].courseType}}</td>
                                                            <th>Course Name</th>
                                                            <td>{{student.details[1].courseName}}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Hall</th>
                                                            <td ng-if="student.details[1].hall === 'N.R.S.C. Hall'">{{student.details[1].hall}}
                                                                <br><strong>Address:</strong> {{student.details[1].nrscadd}}
                                                            </td>
                                                            <td ng-if="student.details[1].hall !== 'N.R.S.C. Hall'">{{student.details[1].hall}}<br>
                                                                Hostel: {{student.details[1].hostel}}<br>
                                                                Room: {{student.details[1].room}}
                                                            </td>
                                                            <th>Session</th>
                                                            <td>{{student.session}}</td>                                                         
                                                        </tr>
                                                        <tr>
                                                            <th>Department</th>
                                                            <td>{{student.details[1].dep}}</td>
                                                            <th>Faculty Number</th>
                                                            <td>{{student.details[1].facno}}</td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div class="col-sm-4">
                                                    <a href="{{student.details[1].slipRealPath}}" target="blank">
                                                        <div class="thumbnail">
                                                            <img id="cert" src="{{student.details[1].slipUrl}}" alt="{{student.attachments[1].label}}">
                                                            <hr>
                                                            <center><h5><span class="label label-default">Continuation Slip</span></h5></center>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <form  ng-submit="approve(student._id.$oid)">                                                    
                                                    <div class="col-md-6 col-md-offset-3">
                                                        <input type="checkbox" name="declation" required="true"/>
                                                        It is hereby confirmed that the continuation of student data has been verified, examined and approved for the necessary action of student IT Service.
                                                        <br/><br/>

                                                        <fieldset class="form-group">
                                                            <input type="submit" class="btn btn-success btn-xs" value="Approve"/>
                                                            <a href="#" class="btn btn-primary btn-xs" data-dismiss="modal">Cancel</a>
                                                        </fieldset> 
                                                    </div>
                                                </form>
                                            </div>
                                            <br><br>
                                            <div class="panel-group">
                                                <div class="panel panel-info">
                                                    <div class="panel-heading" data-toggle="collapse" href="{{'#' + student.student[0].mobile + 'ab'}}">
                                                        <a class="panel-heading" data-toggle="collapse" href="{{'#' + student.student[0].mobile + 'ab'}}">Previous Session Data</a>
                                                        <label class="badge pull-right">2016-17</label>
                                                    </div>
                                                    <div id="{{student.student[0].mobile + 'ab'}}" class="panel-collapse collapse">
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
                                    </div>
                                </div>
                            </div>
                            <div class="modal modal-wide fade " id="{{student.student[0]._id.$oid}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="alert alert-warning">
                                                        {{student.student[0].profile.fullName}} has applied for continuation in the {{student.type}}
                                                    </div>
                                                </div>
                                                <div class="col-sm-8">                                                
                                                    <table class="table table-striped" ng-show="student.type === 'Same Course'">
                                                        <tr>
                                                            <th>Semester/Year</th>
                                                            <td>{{student.student[0].profile.semesterYear}}</td>
                                                            <th>Continuation Type</th>
                                                            <td>{{student.type}}</td> 
                                                        </tr>
                                                        <tr>
                                                            <th>Hall</th>
                                                            <td>{{student.details[1].hall}}</td>
                                                            <th>Session</th>
                                                            <td>{{student.session}}</td> 
                                                        </tr>
                                                        <tr>
                                                            <th>Hostel</th>
                                                            <td>{{student.details[1].hostel}}</td>
                                                            <th>Room</th>
                                                            <td>{{student.details[1].room}}</td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div class="col-sm-4">
                                                    <a href="{{student.details[1].slipRealPath}}" target="blank">
                                                        <div class="thumbnail">
                                                            <img id="cert" src="{{student.details[1].slipUrl}}" alt="{{student.attachments[1].label}}">
                                                            <hr>
                                                            <center><h5><span class="label label-default">Continuation Slip</span></h5></center>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <form name="rejectionflow" class="col-sm-12" ng-submit="reject(student._id.$oid)">                                                                                                   
                                                    <center>
                                                        <fieldset class="form-group">
                                                            <textarea ng-model="rejection" class="form-control" required="true" placeholder="Mention the reason for rejection..."></textarea>
                                                            <br>
                                                            <input type="submit" class="btn btn-danger btn-xs" value="Reject"/>
                                                            <a href="#" class="btn btn-primary btn-xs" data-dismiss="modal">Cancel</a>
                                                        </fieldset> 
                                                    </center>
                                                </form>
                                            </div>                                        
                                            <div class="panel-group">
                                                <div class="panel panel-info">
                                                    <div class="panel-heading" data-toggle="collapse" href="{{'#' + student.student[0].mobile + 'cd'}}">
                                                        <a class="panel-heading" data-toggle="collapse" href="{{'#' + student.student[0].mobile + 'cd'}}">Previous Session Data</a>
                                                        <label class="badge pull-right">2016-17</label>
                                                    </div>
                                                    <div id="{{student.student[0].mobile + 'cd'}}" class="panel-collapse collapse">
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
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td><span class="label label-info">{{student.type}}</span></td>                    
                    </tr>                    
                </table>                
            </div>
        </div>
    </div>
</div>