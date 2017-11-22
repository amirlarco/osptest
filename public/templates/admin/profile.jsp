<%--
    Document   : profile
    Created on : 31 May, 2016, 31 May, 2016 4:09:40 PM
    Author     : HP
--%>

<div class="container" ng-controller="UserCtrl">
    <div class="row">
        <div class="col-xs-11">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="page-title">{{user.fullName}}</div>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-sm-3" align="center">
                            <img alt="{{user.fullName}}" src="public/img/user.png" class="img-circle img-responsive">
                            <br/><span class="text-center">
                                <a href="#" data-original-title="Edit this user" data-toggle="tooltip" type="button" class="btn btn-xs btn-warning"><i class="fa fa-edit"></i>Upload</a>
                            </span>
                        </div>
                        <div class=" col-sm-9">
                            <table class="table table-user-information">
                                <tbody>
                                    <tr>
                                        <td>Full Name</td>
                                        <td>{{user.personalProfile.fullName}}</td>
                                        <td>Course Type</td>
                                        <td>{{user.academicProfile.courseType}}</td>
                                    </tr>
                                    <tr>
                                        <td>Enrollment Number</td>
                                        <td>{{user.personalProfile.enroll}}</td>
                                        <td>Course Name</td>
                                        <td>{{user.academicProfile.courseName}}</td>
                                    </tr>
                                    <tr>
                                        <td>Father's Name</td>
                                        <td>{{user.personalProfile.fatherName}}</td>
                                        <td>Semester/Year</td>
                                        <td>{{user.academicProfile.semesterYear}}</td>
                                    </tr>
                                    <tr>
                                        <td>Mother's Name</td>
                                        <td>{{user.personalProfile.motherName}}</td>
                                        <td>Faculty Number</td>
                                        <td>{{user.academicProfile.facultyNumber}}</td>
                                    </tr>
                                    <tr>
                                        <td>Date of Birth</td>
                                        <td>{{user.personalProfile.dob| date: 'longDate'}}</td>
                                        <td>Department</td>
                                        <td>{{user.academicProfile.department}}</td>
                                    </tr>
                                    <tr>
                                        <td>Gender</td>
                                        <td>{{user.personalProfile.gender}}</td>
                                        <td>Hall of Residence</td>
                                        <td>{{user.academicProfile.hall}}</td>
                                    </tr>
                                    <tr>
                                        <td>Address</td>
                                        <td>{{user.personalProfile.address}}<br/>
                                            {{user.personalProfile.city}}<br/>
                                            {{user.personalProfile.state}} - {{user.personalProfile.pincode}}<br/>
                                            {{user.personalProfile.country}}
                                        </td>
                                    </tr>
                                    <tr>
                                    <tr>
                                        <td>Contact</td>
                                        <td>
                                            Email: <a href="mailto:{{user.email}}">{{user.email}}</a><br/>
                                            Mobile: {{user.mobile}}
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel-footer">
                    <a data-original-title="Broadcast Message" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-envelope"></i></a>
                </div>

            </div>
        </div>
    </div>
</div>