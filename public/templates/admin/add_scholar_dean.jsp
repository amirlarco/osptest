<%
    String label = (String) session.getAttribute("label");
    String dean = label.replace("Dean", "").trim();
%>
<div class="panel-heading">
    <div class="page-title"><span class="glyphicon glyphicon-plus"></span> Add Research Scholar</div>
</div>

<div ng-controller="ResearchScholarDeanCtrl" class="panel-body"> 

    <form name="addscholar" ng-submit="addRScholar()">
        <div class="row">
            <div class="col-xs-4">
                <fieldset class="form-group">
                    <label for="name">Name of Ph.D Scholar</label>
                    <input ng-model="name" name="name" type="text" class="form-control" id="title" placeholder="Name of Ph.D Scholar" required="true">
                </fieldset>
                <fieldset class="form-group">
                    <label for="enroll">Enrollment Number</label>
                    <input ng-model="enroll" name="enroll" type="text" pattern="^[a-zA-Z][a-zA-Z0-9\.]{1,5}$" class="form-control" placeholder="Enrollment Number" required="true">
                </fieldset>
                <fieldset class="form-group">
                    <label for="regno">Registration Number</label>
                    <input ng-model="regno" name="regno" type="text" class="form-control" id="title" placeholder="Registration Number" pattern="[A-Za-z0-9]{8,16}" required="true">
                </fieldset>
                <fieldset class="form-group">
                    <label for="dor">Date of Registration</label>
                    <input ng-model="dor" name="dor" id="dor" type="text" class="form-control" placeholder="DD-MM-YYYY" pattern="^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d$" required="true">
                    <small class="text text-muted text-danger">Hint: dd-mm-yyyy (eg. 31-12-1998 for DEC 31, 1998)</small>
                </fieldset>
                <fieldset class="form-group">
                    <label for="doc">Likely Date of Completion</label>
                    <input ng-model="doc" name="doc" id="doc" type="text" class="form-control" placeholder="DD-MM-YYYY" pattern="^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d$" required="true">
                    <small class="text text-muted text-danger">Hint: dd-mm-yyyy (eg. 31-12-1998 for DEC 31, 1998)</small>
                </fieldset>
                <fieldset class="form-group">
                    <label for="fac_dep">Department</label>
                    <select name="fac_dep" ng-model="fac_dep" class="form-control" ng-options="x for x in departments| orderBy: 1" ng-click="populatesupervisor()" ng-init="initdata('<%=dean%>')" required="true">
                        <option value="">Select Department</option>
                    </select>
                </fieldset> 
                <fieldset class="form-group">
                    <label for="supervisor">Supervisor</label>
                    <select name="supervisor" ng-model="supervisor" class="form-control" ng-options="x for x in supervisors| orderBy: 1" required="true">
                        <option value="">Select Supervisor</option>
                    </select>
                </fieldset> 
            </div>
            <div class="col-xs-4">                 
                <fieldset class="form-group">
                    <label for="cption">Is there any Co-Supervisor?</label>
                    <select name="cption" ng-model="cption" class="form-control" required="true">
                        <option value="">Select</option>
                        <option value="No">No</option>
                        <option value="Yes">Yes</option>
                    </select>
                </fieldset>
                <div class="form-group" ng-show="cption === 'Yes'">
                    <label for="ctype">Type of Co-Supervisor</label>
                    <select name="ctype" ng-model="ctype" class="form-control" ng-required="cption === 'Yes'">
                        <option value="">Select</option>
                        <option value="Internal">Internal</option>
                        <option value="External">External</option>
                    </select>
                </div>                
                <div class="form-group" ng-show="cption === 'Yes' && ctype === 'Internal'">
                    <label for="faculty">Faculty</label>
                    <select id="faculty" name="faculty" ng-model="faculty" class="form-control" ng-options="x for x in faculties| orderBy: 1" ng-change="populatedepartments()" ng-required="cption === 'Yes' && ctype === 'Internal'">
                        <option value="">Select Faculty</option>
                    </select>
                </div> 
                <div class="form-group" ng-show="cption === 'Yes' && ctype === 'Internal'">
                    <label for="department">Department</label>
                    <select name="department" ng-model="department" class="form-control" ng-options="x for x in departments| orderBy: 1" ng-change="populatecosupervisor()" ng-required="cption === 'Yes' && ctype === 'Internal'">
                        <option value="">Select Department</option>
                    </select>
                </div> 
                <div class="form-group" ng-show="cption === 'Yes' && ctype === 'Internal'">
                    <label for="cosupervisor">Co-Supervisor</label>
                    <select name="cosupervisor" ng-model="cosupervisor" class="form-control" ng-options="x for x in cosupervisors" ng-required="cption === 'Yes' && ctype === 'Internal'">                        
                        <option value="">Select Co-Supervisor</option>                        
                    </select>
                </div> 
                <div class="form-group" ng-show="cption === 'Yes' && ctype === 'External'">
                    <label for="ecosup">External Co-Supervisor</label>
                    <input ng-model="ecosup" name="ecosup" type="text" class="form-control" placeholder="External Co-Supervisor" ng-required="cption === 'Yes' && ctype === 'External'">
                </div> 
                <fieldset class="form-group">
                    <label for="mode">Mode of Ph.D.</label>
                    <select name="mode" ng-model="mode" class="form-control" required="true">
                        <option value="">Mode</option>
                        <option value="Part Time">Part Time</option>
                        <option value="Full Time">Full Time</option>
                    </select>
                </fieldset>
                <fieldset class="form-group">
                    <label for="rtopic">Research Topic approved by BOS</label>
                    <input ng-model="rtopic" name="rtopic" type="text" class="form-control" placeholder="Research Topic" required="true">
                </fieldset>  
                <fieldset class="form-group">
                    <label for="fellowship">Availing Fellowship</label>
                    <select name="fellowship" ng-model="fellowship" class="form-control" required="true">
                        <option value="">Select Fellowship</option>
                        <option value="Yes">Yes</option>
                        <option value="No">No</option>
                    </select>
                </fieldset>
                <fieldset class="form-group">
                    <label for="agency">Funding Agency of Fellowship</label>
                    <input ng-model="fagency" name="fagency" type="text" class="form-control" placeholder="Funding Agency of Fellowship" required="true">
                </fieldset>
            </div>
            <div class="col-xs-4">                                
                <fieldset class="form-group">
                    <label for="status">Status</label>
                    <select name="status" ng-model="status" class="form-control" required="true">
                        <option value="">Select Status</option>
                        <option value="Ongoing">Ongoing</option>
                        <option value="Completed">Completed</option>
                    </select>
                </fieldset>
                <fieldset class="form-group">
                    <label for="id_type">ID Type</label>
                    <select name="idtype" ng-model="idtype" ng-options="x for x in idtypes" class="form-control" required="true">
                        <option value="">Select Type</option>                                                
                    </select>
                </fieldset>
                <fieldset class="form-group">
                    <label for="id_no">ID Number</label>
                    <input ng-model="idno" name="idno" type="text" class="form-control" id="title" placeholder="ID Number" required="true">
                </fieldset>
                <fieldset class="form-group">
                    <label for="title">Upload Scholar's Photo</label>
                    <input ng-model="attch" file-model="upload" type="file" required="true">
                    <small class="text text-muted text-danger">Hint: File format must be png, gif, jpeg or pjpeg and not more than 2 MB</small>
                </fieldset>                
            </div>            
        </div>
        <div class='row'>
            <div class="col-xs-12">     
                <hr>
                <button type="submit" class="btn btn-primary btn-sm">Submit</button>
                <button type="reset" class="btn btn-primary btn-sm">Reset</button>
            </div>
        </div>
    </form>
</div>