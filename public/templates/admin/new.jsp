<div ng-controller="UserCtrl" class="row">
    <form method="post" ng-submit="createAccount()" class="template_form">
        <div class="col-sm-8 col-sm-offset-2">            
            <fieldset class="form-group">
                <label for="prefix">Prefix *</label>
                <select name="prefix" ng-model="userInfo.prefix" class="form-control" ng-options="x for x in prefixes" required="true">
                    <option value="">Prefix</option>
                </select>
            </fieldset>
            <fieldset class="form-group">
                <label for="fullName">Full Name *</label>
                <input name="fullName" type="text" ng-model="userInfo.fullName" class="form-control" id="fullName" placeholder="Full Name" required oninvalid="this.setCustomValidity('This field should not be left blank')" oninput="setCustomValidity('')">
            </fieldset>
            <fieldset class="form-group">
                <label for="username">Username *</label>
                <input name="username" type="text" ng-model="userInfo.username" class="form-control" id="username" placeholder="Username" required oninvalid="this.setCustomValidity('This field should not be left blank')" oninput="setCustomValidity('')">
            </fieldset>
            <fieldset class="form-group">
                <label for="email">Email *</label>
                <input name="email" type="email" ng-model="userInfo.email" class="form-control" id="email" placeholder="Email" required oninvalid="this.setCustomValidity('Please enater a valid email')" oninput="setCustomValidity('')">
            </fieldset>
            <fieldset class="form-group">
                <label for="gender">Gender *</label>
                <select name="gender" ng-model="userInfo.gender" class="form-control" ng-options="x for x in genders" required="true">
                    <option value="">Gender</option>
                </select>
            </fieldset>
            <fieldset class="form-group">
                <label for="desig">Role *</label>
                <select name="desig" ng-model="userInfo.desig" class="form-control" ng-options="x for x in designations" required="true">
                    <option value="">Select Role</option>
                </select>
            </fieldset>
            <fieldset class="form-group" ng-if="userInfo.desig === 'Chairman'">
                <label for="dep">Department *</label>
                <select name="dep" ng-model="userInfo.dep" class="form-control" ng-options="x.name for x in departments.data | orderBy: 'name'" ng-change="getLabel()"required="true">
                    <option value="">Select Department</option>
                </select>
            </fieldset>
            <fieldset class="form-group" ng-if="userInfo.desig === 'Director'">
                <label for="dep">Department *</label>
                <select name="dep" ng-model="userInfo.dep" class="form-control" ng-options="x.name for x in departments.data | orderBy: 'name'" ng-change="getLabel()"required="true">
                    <option value="">Select Department</option>
                </select>
            </fieldset>
            <fieldset class="form-group" ng-if="userInfo.desig === 'Executive'">
                <label for="dep">Department *</label>
                <select name="dep" ng-model="userInfo.dep" class="form-control" ng-options="x.name for x in departments.data | orderBy: 'name'" ng-change="getLabel()"required="true">
                    <option value="">Select Department</option>
                </select>
            </fieldset>
            <fieldset class="form-group" ng-if="userInfo.desig === 'Principal'">
                <label for="dep">Department *</label>
                <select name="dep" ng-model="userInfo.dep" class="form-control" ng-options="x.name for x in departments.data | orderBy: 'name'" ng-change="getLabel()"required="true">
                    <option value="">Select Department</option>
                </select>
            </fieldset>
            <fieldset class="form-group" ng-if="userInfo.desig === 'Coordinator'">
                <label for="dep">Department *</label>
                <select name="dep" ng-model="userInfo.dep" class="form-control" ng-options="x.name for x in departments.data | orderBy: 'name'" ng-change="getLabel()"required="true">
                    <option value="">Select Department</option>
                </select>
            </fieldset>
            <fieldset class="form-group" ng-if="userInfo.desig === 'PRO'">
                <label for="dep">Department *</label>
                <select name="dep" ng-model="userInfo.dep" class="form-control" ng-options="x.name for x in departments.data | orderBy: 'name'" ng-change="getLabel()"required="true">
                    <option value="">Select Department</option>
                </select>
            </fieldset>
            <fieldset class="form-group" ng-if="userInfo.desig === 'Provost'">
                <label for="hall">Hall *</label>
                <select name="hall" ng-model="userInfo.hall" class="form-control" ng-options="x.name for x in halls.data | orderBy: 'name'" ng-change="getLabel()" required="true">
                    <option value="">Hall</option>
                </select>
            </fieldset>
            <fieldset class="form-group" ng-if="userInfo.desig === 'Dean'">
                <label for="hall">Faculty *</label>
                <select name="hall" ng-model="userInfo.faculty" class="form-control" ng-options="x.faculty for x in faculties.data | orderBy: 'faculty'" ng-change="getLabel()" required="true">
                    <option value="">Faculty</option>
                </select>
            </fieldset>
            <fieldset class="form-group">
                <label for="label">Label</label>
                <input name="label" type="text" value="{{label}}" class="form-control" id="label" disabled="" required oninvalid="this.setCustomValidity('This field should not be left blank')" oninput="setCustomValidity('')">
            </fieldset>
            <fieldset class="form-group">
                <label for="pid">Permanent ID</label>
                <input name="pid" type="text" ng-model="userInfo.pid" class="form-control" id="pid" placeholder="Permnent ID" oninvalid="this.setCustomValidity('This field should not be left blank')" oninput="setCustomValidity('')">
            </fieldset>
            <fieldset class="form-group">
                <label for="mobile">Mobile</label>
                <input name="mobile" type="text" ng-model="userInfo.mobile" pattern="[7-9]{1}[0-9]{9}" class="form-control" id="mobile" placeholder="Mobile" oninvalid="this.setCustomValidity('This field should not be left blank')" oninput="setCustomValidity('')">
            </fieldset>
            <fieldset class="form-group">
                <label for="tel">Telephone</label>
                <input name="tel" type="text" ng-model="userInfo.tel" class="form-control" id="tel" placeholder="Mobile" oninvalid="this.setCustomValidity('This field should not be left blank')" oninput="setCustomValidity('')">
            </fieldset>
            <fieldset class="form-group">
                <label for="ext">Extension No</label>
                <input name="ext" type="text"  ng-model="userInfo.ext" class="form-control" id="ext" placeholder="Extension No" oninvalid="this.setCustomValidity('This field should not be left blank')" oninput="setCustomValidity('')">
            </fieldset>               
        </div>
        <div class="col-sm-8 col-sm-offset-2">
            <input class="btn btn-primary btn-sm" type="submit" value="Create" />
            <input class="btn btn-primary btn-sm" type="reset" value="Reset" />
        </div>
    </form>
</div>