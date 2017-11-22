<div class="panel-heading">
    <div class="page-title"><span class="fa fa-graduation-cap"></span> Academic</div>
</div>
<div class="alert-warning text-center">
    Note: You can modify/update your profile until it is not verified by your Chairperson or Provost. Once it is verified you will not be able to modify your profile.
</div>
<div ng-controller="ServicesCtlr" class="panel-body"> 
    <div ng-if="!user.profile.verification[0].provost && !user.profile.verification[1].chairman">
        <form ng-submit="createProfile()">
            <div class="row">
                <div class="col-xs-4">
                    <div class="page-header">
                        <h4><span class="glyphicon glyphicon-comment"></span> Personal Details</h4>
                    </div>
                    <fieldset class="form-group">
                        <label for="fullName">Full Name</label>
                        <input ng-model="formData.fullName" name="fullName" type="text" class="form-control" id="fullName" placeholder="Full Name">
                        <!--            <small class="text-muted">Lerum Ipsum</small>-->
                    </fieldset>
                    <fieldset class="form-group">
                        <label for="enroll">Enrollment Number</label>
                        <input name="enroll" type="text" class="form-control" id="enroll" value="{{user.enroll}}" disabled="true">
                    </fieldset>
                    <fieldset class="form-group">
                        <label for="fatherName">Father's Name</label>
                        <input ng-model="formData.fatherName" name="fatherName" type="text" class="form-control" id="fatherName" placeholder="Father's Name" required="true">
                    </fieldset>
                    <fieldset class="form-group">
                        <label for="motherName">Mother's Name</label>
                        <input ng-model="formData.motherName" name="motherName" type="text" class="form-control" id="motherName" placeholder="Mother's Name" required="true">
                    </fieldset>
                    <fieldset class="form-group">                        
                        <label for="dob">Date of Birth (dd-mm-yyyy)</label>
                        <input type="text" class="form-control" placeholder="dd-mm-yyyy (eg. 31-12-1998 for DEC 31, 1998)" ng-model="formData.dob" pattern="^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d$" oninvalid="this.setCustomValidity('Correct you date format to dd-mm-yyyy (31-12-1994 for December 31, 1994)')" oninput="setCustomValidity('')" />
                        <small class="text-muted">dd-mm-yyyy (eg. 31-12-1998 for DEC 31, 1998)</small>
                    </fieldset>
                    <fieldset class="form-group">
                        <label for="gender">Gender</label>
                        <select name="gender" ng-model="formData.gender" class="form-control" ng-options="x for x in genders" required="true">
                            <option value="">Select Gender</option>
                        </select>
                    </fieldset>
                    <fieldset>
                        <legend>Permanent Address</legend>
                        <fieldset class="form-group">
                            <label for="address">Address Line</label>
                            <input ng-model="formData.address" name="address" type="text" class="form-control" id="address"  placeholder="Address Line" required="true">
                        </fieldset>
                        <fieldset class="form-group">
                            <label for="country">Nationality</label>
                            <select ng-model="formData.country" ng-options="x.name for x in countries.data| orderBy: 'name'" class="form-control" name="country" id="country" required="true">
                                <option value="">Select Nationality</option>
                            </select>
                        </fieldset>
                        <fieldset class="form-group" ng-if="formData.country.name !== 'India'">
                            <label for="dep">State/Region</label>
                            <input ng-model="formData.state.name" type="text" class="form-control" placeholder="Region" required="true">
                        </fieldset>
                        <fieldset class="form-group"  ng-if="formData.country.name === 'India'">
                            <label for="state">State/Region</label>
                            <select ng-model="formData.state" ng-options="x.name for x in state_city.data| orderBy: 1" class="form-control" ng-change="populateCities(formData.state.name)" required="true">
                                <option value="">Select State/Region</option>
                            </select>
                        </fieldset>
                        <fieldset class="form-group" ng-if="formData.country.name !== 'India'">
                            <label for="dep">City/District</label>
                            <input ng-model="formData.city" type="text" class="form-control" placeholder="City or District" required="true">
                        </fieldset>
                        <fieldset class="form-group" ng-if="formData.country.name === 'India'">
                            <label for="city">City/District</label>
                            <select ng-model="formData.city" ng-options="x for x in cities | orderBy: 1" class="form-control" required="true">
                                <option value="">Select City/District</option>
                            </select>
                        </fieldset>                                       
                        <fieldset class="form-group">
                            <label for="pincode">Postal Code</label>
                            <input ng-model="formData.pincode" name="pincode" type="text" pattern="^([0-9]{6})?$" class="form-control" id="pincode" placeholder="Postal Code (6 Digit)" required="true">
                        </fieldset> 
                    </fieldset>
                </div>
                <div class="col-xs-4">
                    <div class="page-header">
                        <h4><span class="glyphicon glyphicon-education"></span> Academic Details</h4>
                    </div>
                    <fieldset class="form-group">
                        <label for="courseType">Course Type</label>
                        <select ng-model="formData.courseType" ng-options="course.type as course.name for course in courseTypes" class="form-control" name="courseType" id="courseType" required="true">
                            <option value="">Select Course Type</option>
                        </select>
                    <fieldset class="form-group">
                        <label for="courseName">Course Name</label>
                        <select ng-model="formData.courseName" ng-options="x.name for x in courses.data| orderBy: 'name'" class="form-control" name="courseName" id="courseName" required="true">
                            <option value="">Select Course Name</option>
                        </select>
                    </fieldset>
                    <fieldset class="form-group">
                        <label for="semesterYear">Semester/Year</label>
                        <select ng-model="formData.semesterYear" ng-options="x for x in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]" class="form-control" name="semesterYear" id="semesterYear" required="true">
                            <option value="">Select Semester/Year</option>
                        </select>
                    </fieldset>
                    <fieldset class="form-group">
                        <label for="facultyNumber">Faculty Number</label>
                        <input ng-model="formData.facultyNumber" name="facultyNumber" type="text" class="form-control" id="facultyNumber" placeholder="Faculty Number" required="true">
                    </fieldset>
                    <fieldset class="form-group">
                        <label for="department">Department</label>
                        <select ng-model="formData.department" ng-options="x.name for x in departments.data| orderBy: 'name'" class="form-control" name="department" id="department" required="true">
                            <option value="">Select Department</option>
                        </select>
                    </fieldset>
                    <fieldset class="form-group">
                        <label for="hall">Hall of Residence</label>
                        <select name="hall" ng-model="formData.hall" ng-options="x.name for x in halls.data| orderBy: 'name'" class="form-control" id="hall" required="true">
                            <option value="">Select Hall of Residence</option>
                        </select>
                        <small class="text-danger">Note: If you enrolled in an Evening Course and don't belong to any Hall, select "Not Applicable".</small>
                    </fieldset>
                    <fieldset class="form-group" ng-if="formData.hall.name !== 'N.R.S.C. Hall'">
                        <label for="hall">Hostel</label>
                        <input ng-model="formData.hostel" type="text" class="form-control" placeholder="Hostel Name" required="true">
                        <small class="text-danger">Note: If hostel is not allotted, Enter "Not Allotted"</small>
                    </fieldset>
                    <fieldset class="form-group" ng-if="formData.hall.name !== 'N.R.S.C. Hall'">
                        <label for="hall">Room Number</label>
                        <input ng-model="formData.room" type="number" class="form-control" placeholder="Room Number" required="true">
                        <small class="text-danger">Note: If hostel is not allotted, Enter room number "00"</small>
                    </fieldset>
                    <fieldset class="form-group" ng-if="formData.hall.name === 'N.R.S.C. Hall'">
                        <label for="hall">NRSC Address Complete</label>
                        <input ng-model="formData.nrscadd" type="text" class="form-control" placeholder="Complete Address" required="true">
                    </fieldset>
                </div>
                <div class="col-xs-4">
                    <div class="page-header">
                        <h4><span class="glyphicon glyphicon-fire"></span> Emergency Contact</h4>
                    </div>
                    <fieldset class="form-group">
                        <label for="courseType">Contact Person</label>
                        <input ng-model="formData.emergency_name" type="text" class="form-control" placeholder="Emergency Contact Person Name" required="true">
                    </fieldset>
                    <fieldset class="form-group">
                        <label for="courseName">Mobile</label>
                        <input ng-model="formData.emergency_mobile" type="text" pattern="[7-9]{1}[0-9]{9}" class="form-control" required="true" placeholder="Emergency Contact Person Mobile"  oninvalid="this.setCustomValidity('Mobile Number should contain 10 digit and must be strated with 7, 8 or 9')" oninput="setCustomValidity('')">
                    </fieldset>
                    <fieldset class="form-group">
                        <label for="semesterYear">Email</label>
                        <input ng-model="formData.emergency_email" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" class="form-control" required="true" placeholder="Emergency Contact Person Email" oninvalid="this.setCustomValidity('Email should not contain uppercase')" oninput="setCustomValidity('')">
                    </fieldset>
                    <fieldset class="form-group">
                        <label for="facultyNumber">Address Line</label>
                        <input ng-model="formData.emergency_add" type="text" class="form-control" placeholder="Emergency Contact Person Address" required="true">
                    </fieldset>
                    <fieldset class="form-group">
                        <label for="department">State</label>
                        <select ng-model="formData.emergency_state" ng-options="x.name for x in state_city.data| orderBy: 1" ng-change="populateCitiesE(formData.emergency_state.name)" class="form-control" required="true">
                            <option value="">Select State/Region</option>
                        </select>
                    </fieldset>
                    <fieldset class="form-group">
                        <label for="hall">City</label>
                        <select ng-model="formData.emergency_city" ng-options="x for x in citiesE | orderBy: 1" class="form-control" required="true">
                            <option value="">Select City/District</option>
                        </select>
                    </fieldset>                    
                    <fieldset class="form-group">
                        <label for="hall">Relation with student</label>
                        <select ng-model="formData.emergency_relation" ng-options="x for x in ['Father', 'Mother', 'Brother', 'Sister', 'Relative', 'Local Guardian']" class="form-control" required="true">
                            <option value="">Select Relationship</option>
                        </select>
                    </fieldset>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="col-xs-12 text-center">
                        <hr/>
                        <button type="submit" class="btn btn-primary btn-sm">Submit</button>
                        <button type="reset" class="btn btn-primary btn-sm">Reset</button>
                        <hr/>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <div ng-if="user.profile.verification[0].provost || user.profile.verification[1].chairman">
        <div class="well-sm text-center text-danger">
            Your profile is not editable as this account is verified by Chairperson or Provost or Both.
        </div>
    </div>
</div>