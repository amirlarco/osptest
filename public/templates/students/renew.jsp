<div class="panel-heading" ng-controller="ContinuationCtrl">
    <div class="page-title">
        <span class="glyphicon glyphicon-refresh"></span> Continue
        <select class="select2-arrow pull-right">
            <option>{{contstatus.session}}</option>
        </select>
    </div>
</div>
<div class="panel-body" ng-controller="ContinuationCtrl">
    <div class="alert alert-danger alert-dismissable">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        Special <strong>4th</strong> window for applying WiFi Continuation is now open till 25th November 2017. All pending Continuation Requests may be completed within the time-line.
    </div>
    <div class="row" ng-show="contstatus.isopen">
        <div ng-show="!contstatus.contapplied">
            <div ng-show="contstatus.applied && contstatus.status !== 'Created'">
                <div class="col-xs-8 col-xs-offset-2">
                    <div class="alert alert-warning">
                        You have provided your MAC ID but your WiFi Account is not yet Created. Continuation process can be initiated only after successful WiFi account creation. Contact IT Help Desk to create your account.
                    </div>
                </div>
            </div>
            <div ng-show="contstatus.applied && contstatus.status === 'Created'">
                <div class="form-horizontal col-lg-12 col-lg-offset-2">            
                    <div class="row" ng-show="continuation">
                        <label class="btn btn-info radio radio-inline">
                            <input type="radio" ng-model="type" value="Same Course">I am continuing in the same course
                        </label>
                        <label class="btn btn-warning radio radio-inline">
                            <input type="radio" ng-model="type" value="New Course">I have got admission in new course 
                        </label>
                        <br><br><br>                
                        <div ng-show="type === 'Same Course'">
                            <div class="row">
                                <div class="col-xs-8">
                                    <div class="panel panel-info">
                                        <div class="panel-heading">
                                            Continuing in the same course <strong>[ {{cntstudent.profile.courseType}} - {{cntstudent.profile.courseName}} ]</strong>
                                        </div>
                                        <div class="panel-body">
                                            <form enctype="multipart/form-data" ng-submit="doContinuationSame()" class="col-xs-6 col-xs-offset-3">
                                                <fieldset class="form-group">
                                                    <label for="semesterYear">Select your semester/year for current session</label>
                                                    <select ng-model="cntstudent.profile.semesterYear" ng-options="x for x in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]" class="form-control" name="semesterYear" id="semesterYear" required="true">
                                                        <option value="">Select Semester/Year</option>
                                                    </select>
                                                </fieldset>
                                                <fieldset class="form-group">
                                                    <label for="hall">Select your hall of residence for current session</label>
                                                    <select name="hall" ng-model="cntstudent.profile.hall" ng-options="x for x in halls" class="form-control" id="hall" required="true">
                                                        <option value="">Select Hall of Residence</option>
                                                    </select>
                                                    <small class="text-danger">Note: If you enrolled in an Evening Course and don't belong to any Hall, select "Not Applicable".</small>                                                
                                                </fieldset>
                                                <fieldset class="form-group" ng-show="cntstudent.profile.hall !== 'N.R.S.C. Hall'">
                                                    <label for="hall">Mention your hostel for current session</label>
                                                    <input ng-model="cntstudent.profile.hostel" type="text" class="form-control" placeholder="Hostel Name" ng-required="cntstudent.profile.hall !== 'N.R.S.C. Hall'">
                                                    <small class="text-danger">Note: If hostel is not allotted, Enter "Not Allotted"</small>
                                                </fieldset>
                                                <fieldset class="form-group" ng-show="cntstudent.profile.hall !== 'N.R.S.C. Hall'">
                                                    <label for="hall">Mention your room number for current session</label>
                                                    <input ng-model="cntstudent.profile.room" type="number" class="form-control" placeholder="Room Number" ng-required="cntstudent.profile.hall !== 'N.R.S.C. Hall'">
                                                    <small class="text-danger">Note: If hostel is not allotted, Enter room number "00"</small>
                                                </fieldset>
                                                <fieldset class="form-group" ng-show="cntstudent.profile.hall === 'N.R.S.C. Hall'">
                                                    <label for="hall">NRSC Address Complete</label>
                                                    <input ng-model="cntstudent.profile.nrscadd" type="text" class="form-control" placeholder="Complete Address" ng-required="cntstudent.profile.hall === 'N.R.S.C. Hall'">
                                                </fieldset>
                                                <fieldset class="form-group">
                                                    <label for="department">Select your department of current session</label>
                                                    <select name="department" ng-model="cntstudent.profile.department" ng-options="x for x in deps" class="form-control" id="hall" required="true">
                                                        <option value="">Select Department</option>
                                                    </select>                                                    
                                                </fieldset>
                                                <fieldset class="form-group">
                                                    <label for="title">Upload your continuation slip of current session</label>
                                                    <input file-model="contUpload" type="file" required="true">
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
                        </div>
                        <div ng-show="type === 'New Course'">
                            <div class="row">
                                <div class="col-xs-8">
                                    <div class="panel panel-warning">
                                        <div class="panel-heading">
                                            Continuing in the new course
                                        </div>
                                        <div class="panel-body">
                                            <form enctype="multipart/form-data" ng-submit="doContinuationNew()" class="col-xs-6 col-xs-offset-3">
                                                <fieldset class="form-group">
                                                    <label for="coursetype">Select your course type of current session</label>
                                                    <select ng-model="cntstudent.profile.courseType" ng-options="x.name for x in courseTypes" class="form-control" name="coursetype" id="semesterYear" required="true">
                                                        <option value="">Select Course Type</option>
                                                    </select>
                                                </fieldset>
                                                <fieldset class="form-group">
                                                    <label for="coursename">Select your course name of current session</label>
                                                    <select ng-model="cntstudent.profile.courseName" ng-options="x.name for x in courses.data| orderBy: 'name'" class="form-control" name="coursename" id="semesterYear" required="true">
                                                        <option value="">Select Course Name</option>
                                                    </select>
                                                </fieldset>
                                                <fieldset class="form-group">
                                                    <label for="semesterYear">Select your semester/year of current session</label>
                                                    <select ng-model="cntstudent.profile.semesterYear" ng-options="x for x in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]" class="form-control" name="semesterYear" id="semesterYear" required="true">
                                                        <option value="">Select Semester/Year</option>
                                                    </select>
                                                </fieldset>
                                                <fieldset class="form-group">
                                                    <label for="hall">Select your hall of residence for current session</label>
                                                    <select name="hall" ng-model="cntstudent.profile.hall" ng-options="x for x in halls" class="form-control" id="hall" required="true">
                                                        <option value="">Select Hall of Residence</option>
                                                    </select>
                                                    <small class="text-danger">Note: If you enrolled in an Evening Course and don't belong to any Hall, select "Not Applicable".</small>                                                
                                                </fieldset>
                                                <fieldset class="form-group" ng-show="cntstudent.profile.hall !== 'N.R.S.C. Hall'">
                                                    <label for="hall">Mention your hostel for current session</label>
                                                    <input ng-model="cntstudent.profile.hostel" type="text" class="form-control" placeholder="Hostel Name" ng-required="cntstudent.profile.hall !== 'N.R.S.C. Hall'">
                                                    <small class="text-danger">Note: If hostel is not allotted, Enter "Not Allotted"</small>
                                                </fieldset>
                                                <fieldset class="form-group" ng-show="cntstudent.profile.hall !== 'N.R.S.C. Hall'">
                                                    <label for="hall">Mention your room number for current session</label>
                                                    <input ng-model="cntstudent.profile.room" type="number" class="form-control" placeholder="Room Number" ng-required="cntstudent.profile.hall !== 'N.R.S.C. Hall'">
                                                    <small class="text-danger">Note: If hostel is not allotted, Enter room number "00"</small>
                                                </fieldset>
                                                <fieldset class="form-group" ng-show="cntstudent.profile.hall === 'N.R.S.C. Hall'">
                                                    <label for="hall">NRSC Address Complete</label>
                                                    <input ng-model="cntstudent.profile.nrscadd" type="text" class="form-control" placeholder="Complete Address" ng-required="cntstudent.profile.hall === 'N.R.S.C. Hall'">
                                                </fieldset>
                                                <fieldset class="form-group">
                                                    <label for="department">Select your department of current session</label>
                                                    <select name="department" ng-model="cntstudent.profile.department" ng-options="x for x in deps" class="form-control" id="hall" required="true">
                                                        <option value="">Select Department</option>
                                                    </select>                                                    
                                                </fieldset>
                                                <fieldset class="form-group">
                                                    <label for="facultyNumber">Your faculty number of current session</label>
                                                    <input ng-model="cntstudent.profile.facultyNumber" type="text" class="form-control" placeholder="New Faculty Number" required="true">
                                                </fieldset>
                                                <fieldset class="form-group">
                                                    <label for="title">Upload your admission slip of current session</label>
                                                    <input file-model="contUpload" type="file" required="true">
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
                    </div>
                    <div class="row" ng-show="success">
                        <div class="col-xs-8">
                            <div class="alert alert-success">
                                You have successfully applied for continuation. Your application is sent to your <label class="label label-warning">Chairperson</label> and <label class="label label-warning">Provost</label> for verification.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div ng-show="contstatus.contapplied">
            <div class="col-xs-8 col-xs-offset-2">
                <div class="alert alert-warning">
                    You have already applied for continuation.
                </div>
            </div>
        </div>
    </div>
    <div class="row" ng-show="!contstatus.isopen">
        <div class="col-xs-8 col-xs-offset-2">
            <div class="alert alert-warning">
                Continuation is now closed.
            </div>
        </div>
    </div>
</div>
