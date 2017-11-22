<div class="row" ng-controller="VerificationCtrl">
    <div class="col-sm-12">
        <section class="panel">
            <header class="panel-heading ">
                Verification
            </header>
            <div class="panel-body">
                <form class="form-inline text-center" role="form" ng-submit="go()">
                    <div class="form-group">
                        <select class="form-control input-sm" ng-model="searchInfo.mode" ng-options="x for x in modes" required="true">
                            <option value="">Mode</option>
                        </select>
                        <select class="form-control input-sm" ng-model="searchInfo.hall" ng-if="searchInfo.mode === 'Hall'" ng-options="x.name for x in halls.data | orderBy: 'name'">
                            <option value="">Hall</option>
                        </select>
                        <select class="form-control input-sm" ng-model="searchInfo.dep" ng-if="searchInfo.mode === 'Department'" ng-options="x.name for x in departments.data | orderBy: 'name'">
                            <option value="">Department</option>
                        </select>
                        <button type="submit" class="btn btn-success btn-sm">Go!</button>
                    </div>
                </form> 
                <br/>
                <table ng-if="dataTable" class="table">
                    <tr>
                        <th>SR#</th>
                        <th>Name</th>
                        <th>Enrollment No</th>
                        <th>Course</th>
                        <th>Department</th>
                        <th>Hall</th>
                        <th>
                            <input type="checkbox" ng-model="provost.value" ng-click="provostAll()" id="provost">
                            Provost                         
                        </th>
                        <th>
                            <input type="checkbox" ng-model="chairman.value" ng-click="chairmanAll()" id="chairman">                                
                            Chairman
                        </th>
                    </tr>
                    <tr ng-repeat="student in unverified | orderBy: 'fullName'" ng-class="student.profile.verification[0].provost || student.profile.verification[1].chairman ? 'bg-inverse' : ''">                        
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
                                        <table class="table">
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
                                        <!--                                        <input type="text" ng-model="comment" required="true" class="form-control" placeholder="Mention the reason for rejecting" /><br/>
                                                                                <button type="button" class="btn btn-danger btn-sm" ng-click="reject(comment, student._id, student.enroll)" data-dismiss="modal">Reject</button>
                                                                                <button type="button" class="btn btn-success btn-sm" ng-click="verifySingle()" data-dismiss="modal">Verify</button>-->
                                        <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Cancel</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </td>
                        <td>{{student.enroll}}</td>
                        <td>{{student.profile.courseName}}</td>
                        <td>{{student.profile.department}}</td>
                        <td>{{student.profile.hall}}</td>
                        <td>
                            <!--                            <label class="checkbox-custom check-success">-->
                            <input type="checkbox" ng-model="student.profile.verification[0].provost">
                            <!--                                <label for="{{student.enroll}}">
                                                                <span ng-class="student.profile.verification[0].provost ? 'badge noti-arrow bg-success' : 'badge noti-arrow bg-danger'">{{student.profile.verification[0].provost == true ? "Verified" : "Unverified"}}</span>
                                                            </label>
                                                        </label>                         -->
                        </td>
                        <td>
                            <!--                            <label class="checkbox-custom check-success">
                                                            <input type="checkbox" ng-model="student.profile.verification[1].chairman" id="{{student._id}}">
                                                            <label for="{{student._id}}">
                                                                <span ng-class="student.profile.verification[1].chairman ? 'badge noti-arrow bg-success' : 'badge noti-arrow bg-danger'">{{student.profile.verification[1].chairman == true ? "Verified" : "Unverified"}}</span>
                                                            </label>
                                                        </label>                            -->
                            <input type="checkbox" ng-model="student.profile.verification[1].chairman">
                        </td>
                    </tr>                    
                </table> 
                <button ng-if="dataTable && unverified.length > 0" class="btn btn-success btn-sm" ng-click="verify()">Verify</button>                 
            </div>
        </section>
    </div>
</div>
