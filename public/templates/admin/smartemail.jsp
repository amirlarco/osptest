<div ng-controller="AddEmployeeCtrl" class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                <span class="glyphicon glyphicon-plus"></span> Create Employee Account
            </header>
            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-8 col-xs-offset-2">
                        <center>
                            <div class="radio-custom radio-success inline">
                                <input type="radio" ng-model="account" value="single"  name="single" id="single">
                                <label for="single">Single Persona Account</label>
                            </div>
                            <div class="radio-custom radio-success inline">
                                <input type="radio" ng-model="account" value="multi" name="multi" id="multi">
                                <label for="multi">Multi Persona Account</label>
                            </div>
                        </center>
                        <div ng-show="account === 'single'">
                            <form class="form-horizontal" role="form" ng-submit="addEmployee()">
                                <div class="form-group">
                                    <label for="pid" class="col-lg-3 col-sm-3 control-label">Employee ID</label>
                                    <div class="col-lg-8">
                                        <input type="text" class="form-control" ng-model="pid" ng-change="fetch()" placeholder="Employee ID" required="true"/>                                    
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="name" class="col-lg-3 col-sm-3 control-label">Employee Name</label>
                                    <div class="col-lg-8">
                                        <input type="text" class="form-control" ng-model="fetched.salary.name" placeholder="Employee Name" required="true" disabled />                                    
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="gender" class="col-lg-3 col-sm-3 control-label">Gender</label>
                                    <div class="col-lg-8">
                                        <input type="text" class="form-control" ng-model="fetched.salary.gender" placeholder="Employee Name" required="true" disabled />                                    
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="desig" class="col-lg-3 col-sm-3 control-label">Designation</label>
                                    <div class="col-lg-8">
                                        <input type="text" class="form-control" ng-model="fetched.salary.desig" placeholder="Designation" required="true" disabled />                                    
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="dep" class="col-lg-3 col-sm-3 control-label">Department</label>
                                    <div class="col-lg-8">
                                        <input type="text" class="form-control" ng-model="fetched.salary.dep" placeholder="Department" required="true" disabled />                                    
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="pan" class="col-lg-3 col-sm-3 control-label">Pan</label>
                                    <div class="col-lg-8">
                                        <input type="text" class="form-control" ng-model="fetched.salary.pan" placeholder="Pan" required="true"  disabled  />                                    
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="mobile" class="col-lg-3 col-sm-3 control-label">Mobile</label>
                                    <div class="col-lg-8">
                                        <input type="text" class="form-control" ng-model="mobile" pattern="[7-9]{1}[0-9]{9}" placeholder="Mobile" required="true">                                    
                                        <small class="text text-danger">Hint: Mobile number must be of 10 digit and start with 7, 8 or 9</small>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="email" class="col-lg-3 col-sm-3 control-label">Email</label>
                                    <div class="col-lg-8">
                                        <input type="text" class="form-control" ng-model="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" placeholder="Email" required="true">                                    
                                        <small class="text text-danger">Hint: Email must be in small letters</small>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div for="email" class="col-lg-3 col-sm-3"></div>
                                    <div class="col-lg-8">
                                        <input type="submit" value="Submit" class="btn btn-primary btn-sm"/>
                                        <input type="reset" value="Reset" class="btn btn-primary btn-sm"/>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div ng-show="account === 'multi'">

                        </div>
                    </div>
                </div>
        </section>
    </div>
</div>