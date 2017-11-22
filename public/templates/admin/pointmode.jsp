<div ng-controller="ContinuationCtrl">
    <div class="row">
        <div class="col-xs-12">
            <section class="panel">
                <header class="panel-heading ">
                    <i class="fa fa-bolt"></i> Point Mode
                    <span class="pull-right">Continuation</span>
                </header>                 
                <div class="panel panel-body">
                    <div class="col-xs-8 col-xs-offset-2">
                        <form name="cont" ng-submit="startNow()">
                        <fieldset class="form-group">
                            <label for="name">Session</label>
                            <select class="form-control" ng-model="session" ng-options="x for x in sessions" required="true">
                                <option value="">Select Session</option>
                            </select>
                        </fieldset>
                        <hr>
                        <button type="submit" class="btn btn-primary btn-sm">Start Now</button>
                        </form>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>