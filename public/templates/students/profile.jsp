<%--
    Document   : profile
    Created on : 31 May, 2016, 31 May, 2016 4:09:40 PM
    Author     : HP
--%>



<div class="panel-heading"  ng-controller="UserCtrl">
    <div class="page-title">{{user.fullName}}</div>
</div>
<div class="panel-body" ng-controller="UserCtrl">
    <div class="row">
        <div class="col-sm-3" align="center">
            <a href="{{user.attachments[0].realPath}}" target="blank">    
                <img alt="{{user.fullName}}" src="{{user.attachments[0].url}}" class="img-thumbnail img-responsive" height="100" width="100">
            </a>
        </div>
        <div class=" col-sm-9">
            <table class="table table-user-information">                
                <tbody ng-if="contstatus.contapplied">
                    <tr>
                        <td>Full Name</td>
                        <td>{{user.fullName}}</td>
                        <td>Course Type</td>
                        <td ng-if="contstatus.provost">
                            <div ng-if="contuser.type === 'Same Course'">                                
                                {{user.profile.courseType}}
                            </div>
                            <div ng-if="contuser.type === 'New Course'">
                                {{contuser.details[1].courseType}}
                            </div>
                        </td>
                        <td ng-if="!contstatus.provost">
                            {{user.profile.courseType}}
                        </td>
                    </tr>
                    <tr>
                        <td>Enrollment Number</td>
                        <td>{{user.profile.enroll}}</td>
                        <td>Course Name</td>
                        <td ng-if="contstatus.provost">
                            <div ng-if="contuser.type === 'Same Course'">                                
                                {{user.profile.courseName}}
                            </div>
                            <div ng-if="contuser.type === 'New Course'">
                                {{contuser.details[1].courseName}}
                            </div>
                        </td>
                        <td ng-if="!contstatus.provost">
                            {{user.profile.courseName}}
                        </td>
                    </tr>
                    <tr>
                        <td>Mother's Name</td>
                        <td>{{user.profile.motherName}}</td>
                        <td>Faculty Number</td>
                        <td ng-if="contstatus.provost">
                            <div ng-if="contuser.type === 'Same Course'">                                
                                {{user.profile.facultyNumber}}
                            </div>
                            <div ng-if="contuser.type === 'New Course'">
                                {{contuser.details[1].facno}}
                            </div>
                        </td>
                        <td ng-if="!contstatus.provost">
                            {{user.profile.facultyNumber}}
                        </td>
                    </tr>
                </tbody>
                <tbody ng-if="!contstatus.contapplied">
                    <tr>
                        <td>Full Name</td>
                        <td>{{user.fullName}}</td>
                        <td>Course Type</td>
                        <td>{{user.profile.courseType}}</td>
                    </tr>
                    <tr>
                        <td>Enrollment Number</td>
                        <td>{{user.profile.enroll}}</td>
                        <td>Course Name</td>
                        <td>{{user.profile.courseName}}</td>
                    </tr>
                    <tr>
                        <td>Mother's Name</td>
                        <td>{{user.profile.motherName}}</td>
                        <td>Faculty Number</td>
                        <td>{{user.profile.facultyNumber}}</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <td>Father's Name</td>
                        <td>{{user.profile.fatherName}}</td>
                        <td>Semester/Year</td>
                        <td>{{user.profile.semesterYear}}</td>
                    </tr>                    
                    <tr ng-if="!contstatus.contapplied">
                        <td>Date of Birth</td>
                        <td>{{user.profile.dob.$date| date: 'longDate'}}</td>
                        <td>Department</td>
                        <td>{{user.profile.department}}</td>
                    </tr>
                    <tr ng-if="contstatus.contapplied">
                        <td>Date of Birth</td>
                        <td>{{user.profile.dob.$date| date: 'longDate'}}</td>
                        <td>Department</td>
                        <td ng-if="contstatus.provost">
                            {{contuser.details[1].dep}}
                        </td>
                        <td ng-if="!contstatus.provost">
                            {{user.profile.department}}
                        </td>
                    </tr>
                    <tr ng-if="!contstatus.contapplied">
                        <td>Gender</td>
                        <td>{{user.profile.gender}}</td>
                        <td>Hall of Residence</td>
                        <td ng-if="user.profile.hall === 'N.R.S.C. Hall'">{{user.profile.hall}}
                            Address: {{user.profile.nrscadd}}
                        </td>
                        <td ng-if="user.profile.hall !== 'N.R.S.C. Hall'">{{user.profile.hall}}<br>
                            Hostel: {{user.profile.hostel}}<br>
                            Room: {{user.profile.room}}
                        </td>
                    </tr>
                    <tr ng-if="contstatus.contapplied">
                        <td>Gender</td>
                        <td>{{user.profile.gender}}</td>
                        <td>Hall of Residence</td>
                        <td ng-if="contstatus.provost">
                            <div ng-if="contuser.details[1].hall == 'N.R.S.C. Hall'">{{contuser.details[1].hall}}
                                Address: {{contuser.details[1].nrscadd}}
                            </div>
                            <div ng-if="!contuser.details[1].hall == 'N.R.S.C. Hall'">{{contuser.details[1].hall}}<br>
                                Hostel: {{contuser.details[1].hostel}}<br>
                                Room: {{contuser.details[1].room}}
                            </div>
                        </td>
                        <td ng-if="!contstatus.provost">
                            <div ng-if="user.profile.hall == 'N.R.S.C. Hall'">{{user.profile.hall}}
                                Address: {{user.profile.nrscadd}}
                            </div>
                            <div ng-if="!user.profile.hall == 'N.R.S.C. Hall'">{{user.profile.hall}}<br>
                                Hostel: {{user.profile.hostel}}<br>
                                Room: {{user.profile.room}}
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>Nationality</td>
                        <td>                                                        
                            <span class="label label-success">{{user.profile.country}}</span>
                        </td>                                                    
                        <td>Contact</td>
                        <td>
                            Email: <a href="mailto:{{user.email}}">{{user.email}}</a><br/>
                            Mobile: {{user.mobile}}
                        </td>
                    </tr>
                    <tr>
                        <td>Permanent Address</td>
                        <td>{{user.profile.address}}<br/>
                            {{user.profile.city}}<br/>
                            {{user.profile.state}} - {{user.profile.pincode}}<br/>
                            {{user.profile.country}}
                        </td>
                        <td>Emergency Contact</td>
                        <td>
                            Person: {{user.profile.emergencyContactPerson.name}} <span class="label label-info">{{user.profile.emergencyContactPerson.emergency_relation}}</span><br/>
                            Mobile: {{user.profile.emergencyContactPerson.mobile}}<br/>
                            Email: {{user.profile.emergencyContactPerson.email}}<br/>
                            Address: {{user.profile.emergencyContactPerson.address}} {{user.profile.emergencyContactPerson.city}} {{user.profile.emergencyContactPerson.state}} 
                        </td>
                    </tr>
                    <tr class="text-center">                                                    
                        <td colspan="4">
                            <a href="{{user.attachments[1].realPath}}" target="blank">
                                <div class="col-md-3 col-sm-3 hero-feature">
                                    <div class="thumbnail">
                                        <img id="cert" src="{{user.attachments[1].url}}" alt="{{user.attachments[1].label}}">                                        
                                    </div>
                                    <h5><span class="label label-default col-md-12">{{user.attachments[1].label}}</span></h5>
                                </div> 
                            </a>
                            <a href="{{user.attachments[2].realPath}}" target="blank">
                                <div class="col-md-3 col-sm-3 hero-feature">
                                    <div class="thumbnail">
                                        <img src="{{user.attachments[2].url}}" alt="{{user.attachments[2].label}}">                                                                                                        
                                    </div>
                                    <h5><span class="label label-default col-md-12">{{user.attachments[2].label}}</span></h5>
                                </div>
                            </a>
                            <a href="{{user.attachments[3].realPath}}" target="blank">    
                                <div class="col-md-3 col-sm-3 hero-feature">
                                    <div class="thumbnail">
                                        <img src="{{user.attachments[3].url}}" alt="{{user.attachments[3].label}}">                                        
                                    </div>
                                    <h5><span class="label label-default col-md-12">{{user.attachments[3].label}}</span></h5>
                                </div>
                            </a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<div class="panel-footer">
    <!--    <a data-original-title="Broadcast Message" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-envelope"></i></a>-->
</div>

