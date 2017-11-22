<div ng-controller="SmartMailer" class="row">
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
                                <input type="radio" ng-model="account" value="dean"  name="dean" id="single">
                                <label for="single">Single Persona Account</label>
                            </div>
                            <div class="radio-custom radio-success inline">
                                <input type="radio" ng-model="account" value="chair" name="chair" id="multi">
                                <label for="multi">Multi Persona Account</label>
                            </div>
                            <div class="radio-custom radio-success inline">
                                <input type="radio" ng-model="account" value="pricipal" name="pricipal" id="multi">
                                <label for="multi">Multi Persona Account</label>
                            </div>
                        </center>
                        <div ng-show="account === 'dean'">
                            dean
                        </div>
                        <div ng-show="account === 'chair'">
                            chair
                        </div>
                        <div ng-show="account === 'pricipal'">
                            pricipal
                        </div>
                    </div>
                </div>
        </section>
    </div>
</div>