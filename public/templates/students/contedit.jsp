<%-- 
    Document   : contedit
    Created on : 12 Jun, 2017, 12:47:40 PM
    Author     : amir
--%>
<div class="panel-heading" ng-controller="ContinuationEditCtrl">
    <div class="page-title">
        <span class="glyphicon glyphicon-edit"></span> Edit
        <strong class="pull-right">[{{contuser.type}}]</strong>
    </div>
</div>

<div ng-controller="ContinuationEditCtrl">    
    <div class="row" ng-show="contstatus.isopen">
        <div ng-show="contstatus.contapplied">
            <div ng-show="!contstatus.isApproved">
                <br>
                <div ng-show="contuser.type === 'Same Course'">
                    <div class="row">
                        <div class="col-xs-8 col-xs-offset-2">
                            <div class="panel-body">
                                <form enctype="multipart/form-data" ng-submit="editContinuationSame()" class="col-xs-12">
                                    <fieldset class="form-group">
                                        <label for="semesterYear">Select your semester/year for current session</label>
                                        <select ng-model="contuser.details[1].semesterYear" ng-options="x for x in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]" class="form-control" name="semesterYear" id="semesterYear" required="true">
                                            <option value="">Select Semester/Year</option>
                                        </select>
                                    </fieldset>
                                    <fieldset class="form-group">
                                        <label for="hall">Select your hall of residence for current session</label>
                                        <select name="hall" ng-model="contuser.details[1].hall" ng-options="x for x in halls" class="form-control" id="hall" required="true">
                                            <option value="">Select Hall of Residence</option>
                                        </select>
                                        <small class="text-danger">Note: If you enrolled in an Evening Course and don't belong to any Hall, select "Not Applicable".</small>                                                
                                    </fieldset>
                                    <fieldset class="form-group" ng-show="contuser.details[1].hall !== 'N.R.S.C. Hall'">
                                        <label for="hall">Mention your hostel for current session</label>
                                        <input ng-model="contuser.details[1].hostel" type="text" class="form-control" placeholder="Hostel Name" ng-required="contuser.details[1].hall !== 'N.R.S.C. Hall'">
                                        <small class="text-danger">Note: If hostel is not allotted, Enter "Not Allotted"</small>
                                    </fieldset>
                                    <fieldset class="form-group" ng-show="contuser.details[1].hall !== 'N.R.S.C. Hall'">
                                        <label for="hall">Mention your room number for current session</label>
                                        <input ng-model="contuser.details[1].room" class="form-control" placeholder="Room Number" ng-required="contuser.details[1].hall !== 'N.R.S.C. Hall'">
                                        <small class="text-danger">Note: If hostel is not allotted, Enter room number "00"</small>
                                    </fieldset>
                                    <fieldset class="form-group" ng-show="contuser.details[1].hall === 'N.R.S.C. Hall'">
                                        <label for="hall">NRSC Address Complete</label>
                                        <input ng-model="contuser.details[1].nrscadd" type="text" class="form-control" placeholder="Complete Address" ng-required="contuser.details[1].hall === 'N.R.S.C. Hall'">
                                    </fieldset>
                                    <fieldset class="form-group">
                                        <label for="department">Select your department of current session</label>
                                        <select name="department" ng-model="contuser.details[1].dep" ng-options="x for x in deps" class="form-control" id="hall" required="true">
                                            <option value="">Select Department</option>
                                        </select>                                                    
                                    </fieldset>
                                    <fieldset class="form-group">
                                        <label for="title">Upload your continuation slip of current session</label>
                                        <input file-model="contUploadEditSame" type="file" required="true">
                                        <small class="text text-muted text-danger">Hint: File format must be png, gif, jpeg or pjpeg and not more than 40 KB</small>
                                    </fieldset> 
                                    <fieldset class="form-group">                                                
                                        <input type="submit" class="btn btn-info btn-sm" value="Submit"/>
                                        <input type="reset" class="btn btn-info btn-sm" value="Reset"/>
                                    </fieldset>                                            
                                </form>
                            </div>                                    
                        </div>
                    </div>
                </div>
                <div ng-show="contuser.type === 'New Course'">
                    <div class="row">
                        <div class="col-xs-8 col-xs-8 col-xs-offset-2">
                            <div class="panel-body">
                                <form enctype="multipart/form-data" ng-submit="editContinuationNew()" class="col-xs-12">
                                    <fieldset class="form-group">
                                        <fieldset class="form-group">
                                            <label for="coursetype">Select your course type of current session</label>
                                            <select ng-model="contuser.details[1].courseType" ng-options="x.name for x in courseTypes" class="form-control" name="coursetype" id="semesterYear" required="true">
                                                <option value="">Select Course Type</option>
                                            </select>
                                        </fieldset>
                                        <fieldset class="form-group">
                                            <label for="coursename">Select your course name of current session</label>
                                            <select ng-model="contuser.details[1].courseName" ng-options="x.name for x in courses.data| orderBy: 'name'" class="form-control" name="coursename" id="semesterYear" required="true">
                                                <option value="">Select Course Name</option>
                                            </select>
                                        </fieldset>
                                        <label for="semesterYear">Select your semester/year of current session</label>
                                        <select ng-model="contuser.details[1].semesterYear" ng-options="x for x in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]" class="form-control" name="semesterYear" id="semesterYear" required="true">
                                            <option value="">Select Semester/Year</option>
                                        </select>
                                    </fieldset>
                                    <fieldset class="form-group">
                                        <label for="hall">Select your hall of residence for current session</label>
                                        <select name="hall" ng-model="contuser.details[1].hall" ng-options="x for x in halls" class="form-control" id="hall" required="true">
                                            <option value="">Select Hall of Residence</option>
                                        </select>
                                        <small class="text-danger">Note: If you enrolled in an Evening Course and don't belong to any Hall, select "Not Applicable".</small>                                                
                                    </fieldset>
                                    <fieldset class="form-group" ng-if="contuser.details[1].hall !== 'N.R.S.C. Hall'">
                                        <label for="hall">Mention your hostel for current session</label>
                                        <input ng-model="contuser.details[1].hostel" type="text" class="form-control" placeholder="Hostel Name" required="true">
                                        <small class="text-danger">Note: If hostel is not allotted, Enter "Not Allotted"</small>
                                    </fieldset>
                                    <fieldset class="form-group" ng-if="contuser.details[1].hall !== 'N.R.S.C. Hall'">
                                        <label for="hall">Mention your room number for current session</label>
                                        <input ng-model="contuser.details[1].room" class="form-control" placeholder="Room Number" required="true">
                                        <small class="text-danger">Note: If hostel is not allotted, Enter room number "00"</small>
                                    </fieldset>
                                    <fieldset class="form-group" ng-if="contuser.details[1].hall === 'N.R.S.C. Hall'">
                                        <label for="hall">NRSC Address Complete</label>
                                        <input ng-model="contuser.details[1].nrscadd" type="text" class="form-control" placeholder="Complete Address" required="true">
                                    </fieldset>
                                    <fieldset class="form-group">
                                        <label for="department">Select your department of current session</label>
                                        <select name="department" ng-model="contuser.details[1].dep" ng-options="x for x in deps" class="form-control" id="hall" required="true">
                                            <option value="">Select Department</option>
                                        </select>
                                        {{contuser.details[1].dep}}
                                        <small class="text-danger">Note: If you enrolled in an Evening Course and don't belong to any Hall, select "Not Applicable".</small>                                                
                                    </fieldset>
                                    <fieldset class="form-group">
                                        <label for="facultyNumber">Your faculty number of current session</label>
                                        <input ng-model="contuser.details[1].facno" type="text" class="form-control" placeholder="New Faculty Number" required="true">
                                    </fieldset>
                                    <fieldset class="form-group">
                                        <label for="title">Upload your admission slip of current session</label>
                                        <input file-model="contEditUpload" type="file" required="true">
                                        <small class="text text-muted text-danger">Hint: File format must be png, gif, jpeg or pjpeg and not more than 40 KB</small>
                                    </fieldset> 
                                    <fieldset class="form-group">                                                
                                        <input type="submit" class="btn btn-warning btn-sm" value="Submit"/>
                                        <input type="reset" class="btn btn-warning btn-sm" value="Reset"/>
                                    </fieldset>                                            
                                </form>
                            </div>                                    
                        </div>
                    </div>
                </div>
            </div>
            <div ng-show="contstatus.isApproved">
                <br>
                <div class="col-xs-8 col-xs-offset-2">
                    <div class="alert alert-warning">
                        As your account is approved from Provost or Chairperson, you cannot edit your continuation request.
                    </div>
                </div>
            </div>
        </div>
        <div ng-show="!contstatus.contapplied">
            <br>
            <div class="col-xs-8 col-xs-offset-2">
                <div class="alert alert-warning">
                    You have not yet applied for continuation.
                </div>
            </div>
        </div>
    </div>
    <div class="row" ng-show="!contstatus.isopen">
        <br>
        <div class="col-xs-8 col-xs-offset-2">
            <div class="alert alert-warning">
                Continuation is now Closed.
            </div>
        </div>
    </div>
</div>
