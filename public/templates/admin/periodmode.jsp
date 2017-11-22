<div ng-controller="ContinuationCtrl">
    <div class="row">
        <div class="col-xs-12">
            <section class="panel">
                <header class="panel-heading ">
                    <i class="fa fa-bars"></i> Period Mode
                    <span class="pull-right">Continuation</span>
                </header>                 
                <div class="panel panel-body">
                    <div class="col-xs-8 col-xs-offset-2">
                        <form name="cont" ng-submit="startPeriod()">
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label for="name">Session</label>
                                        <select class="form-control" ng-model="session" ng-options="x for x in sessions" required="true">
                                            <option value="">Select Session</option>
                                        </select>
                                    </div>
                                </div>                            
                                <div class="form-group">                                
                                    <div class="col-md-6">
                                        <label for="enddate">Start Date</label>
                                        <input class="form-control" ng-model="startdate" placeholder="DD-MM-YYYY" pattern="^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d$" required="true"/>
                                        <small class="text text-muted text-danger">Hint: dd-mm-yyyy (eg. 31-12-1998 for DEC 31, 1998)</small>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="enddate">Start Time</label>
                                        <input class="form-control" ng-model="starttime" pattern="([0-1]{1}[0-9]{1}|20|21|22|23):[0-5]{1}[0-9]{1}" placeholder="15:30 (24 Hour)" required="true"/>
                                        <small class="text text-muted text-danger">Hint: HH:MM (eg. 15:30 for 03:30 PM)</small>
                                    </div>
                                </div>
                                <br><br>
                                <div class="form-group">                                
                                    <div class="col-md-6">
                                        <label for="enddate">End Date</label>
                                        <input class="form-control"  ng-model="enddate" placeholder="DD-MM-YYYY" pattern="^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d$" required="true"/>
                                        <small class="text text-muted text-danger">Hint: dd-mm-yyyy (eg. 31-12-1998 for DEC 31, 1998)</small>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="enddate">End Time</label>
                                        <input class="form-control" ng-model="endtime" pattern="([0-1]{1}[0-9]{1}|20|21|22|23):[0-5]{1}[0-9]{1}" placeholder="15:30 (24 Hour)" required="true">
                                        <small class="text text-muted text-danger">Hint: HH:MM (eg. 15:30 for 03:30 PM)</small>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <button type="submit" class="btn btn-primary btn-sm">Schedule Continuation</button>
                        </form>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>