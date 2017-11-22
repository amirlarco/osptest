<div class="row" ng-controller="MyOfficeCtrl">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                Create New Employee
            </header>
            <div class="panel-body">
                <form role="form">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="prefix">Prefix</label>
                                <select name="prefix" ng-model="userInfo.prefix" class="form-control" ng-options="x for x in prefixes" required="true">
                                    <option value="">Prefix</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="fname">First Name</label>
                                <input type="text" class="form-control" id="fname" placeholder="First Name">
                            </div>
                            <div class="form-group">
                                <label for="lname">Last Name</label>
                                <input type="text" class="form-control" id="lname" placeholder="Last Name">
                            </div>
                            <div class="form-group">
                                <label for="prefix">Designation</label>
                                <select name="prefix" ng-model="userInfo.desig" class="form-control" ng-options="x for x in designations" required="true">
                                    <option value="">Designation</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="prefix">Role</label>
                                <select name="prefix" ng-model="userInfo.role" class="form-control" ng-options="x for x in roles" required="true">
                                    <option value="">Role</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="checkbox-custom check-success">
                                    <input type="checkbox" value=" " id="checkbox2"> <label for="checkbox2">Check me out</label>
                                </label>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="prefix">Prefix</label>
                                <select name="prefix" ng-model="userInfo.prefix" class="form-control" ng-options="x for x in prefixes" required="true">
                                    <option value="">Prefix</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="fname">First Name</label>
                                <input type="text" class="form-control" id="fname" placeholder="First Name">
                            </div>
                            <div class="form-group">
                                <label for="lname">Last Name</label>
                                <input type="text" class="form-control" id="lname" placeholder="Last Name">
                            </div>
                            <div class="form-group">
                                <label for="prefix">Designation</label>
                                <select name="prefix" ng-model="userInfo.desig" class="form-control" ng-options="x for x in designations" required="true">
                                    <option value="">Designation</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="prefix">Role</label>
                                <select name="prefix" ng-model="userInfo.role" class="form-control" ng-options="x for x in roles" required="true">
                                    <option value="">Role</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="checkbox-custom check-success">
                                    <input type="checkbox" value=" " id="checkbox2"> <label for="checkbox2">Check me out</label>
                                </label>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-info">Submit</button>
                </form>
            </div>
        </section>
    </div>
</div>