<div class="panel-heading">
    <div class="page-title"><span class="glyphicon glyphicon-map-marker"></span> Track Status</div>
</div>
<div class="panel-body" ng-controller="ContinuationCtrl">   
    
    <div class="row" ng-show="!contstatus.isopen">        
        <div class="col-xs-8 col-xs-offset-2">
            <div class="alert alert-warning">
                Continuation is now closed.
            </div>
        </div>
    </div>
    <div class="row" ng-show="contstatus.isopen">
        <div ng-show="!contstatus.contapplied">
            <br>
            <div class="col-xs-8 col-xs-offset-2">
                <div class="alert alert-warning">
                    You have not yet applied for continuation.
                </div>
            </div>
        </div>
        <div class="col-lg-12" ng-show="contstatus.contapplied">
            <div class="row bs-wizard" style="border-bottom:0;">
                <div class="{{linestatus.applied}}">
                    <div class="text-center bs-wizard-stepnum">Applied for Continuation</div>
                    <div class="progress"><div class="progress-bar"></div></div>
                    <a href="#" class="bs-wizard-dot" ng-click="showstatus('Applied')"></a>
                </div>
                <div class="{{linestatus.chair}}">
                    <div class="text-center bs-wizard-stepnum">Approved by Department</div>
                    <div class="progress"><div class="progress-bar"></div></div>
                    <a href="#" class="bs-wizard-dot" ng-click="showstatus('Approved by Department')"></a>                    
                </div>
                <div class="{{linestatus.provost}}">
                    <div class="text-center bs-wizard-stepnum">Approved by Provost</div>
                    <div class="progress"><div class="progress-bar"></div></div>
                    <a href="#" class="bs-wizard-dot" ng-click="showstatus('Approved by Provost')"></a>                    
                </div>
                <div class="{{linestatus.cc}}">
                    <div class="text-center bs-wizard-stepnum">Processed by Computer Centre</div>
                    <div class="progress"><div class="progress-bar"></div></div>
                    <a href="#" class="bs-wizard-dot" ng-click="showstatus('Processed by Computer Centre')"></a>                    
                </div>                
            </div>
            <hr>
            <div class="row">
                <div class="col-lg-12">
                    <strong><u>CURRENT CONTINUATION STATUS</u></strong><br><br>
                    <div ng-if="contuser.status === 'Pending at Chairperson'">
                        <ol>
                            <li>You have applied for continuation on <strong>{{contuser.appliedOn.$date| date: "medium"}}</strong></li>
                            <li>Awaiting approval from your department <strong>{{contuser.details[1].dep}}</strong></li>                               
                        </ol>
                    </div>
                    <div ng-if="contuser.status === 'Pending at Provost'">
                        <ol>
                            <li>You have applied for continuation on <strong>{{contuser.appliedOn.$date| date: "medium"}}</strong></li>
                            <li>Approval made by <strong>{{contuser.verification[0].actedBy}}</strong> on <strong>{{contuser.verification[0].actedOn.$date| date: "medium"}}</strong></li>
                            <li>Awaiting approval from your <strong>Provost {{contuser.details[1].hall}}</strong></li>
                        </ol>
                    </div>                    
                    <div ng-if="contuser.status === 'Pending at Computer Centre'">
                        <ol>
                            <li>You have applied for continuation on <strong>{{contuser.appliedOn.$date| date: "medium"}}</strong></li>
                            <li>Approval made by <strong>{{contuser.verification[0].actedBy}}</strong> on <strong>{{contuser.verification[0].actedOn.$date| date: "medium"}}</strong></li>
                            <li>Approval made by <strong>{{contuser.verification[1].actedBy}}</strong> on <strong>{{contuser.verification[1].actedOn.$date| date: "medium"}}</strong></li>
                            <li>Awaiting your account to be processed by <strong>Computer Centre</strong></li>
                        </ol>
                    </div>
                    <div ng-if="contuser.status === 'Processed'">
                        <ol>
                            <li>You have applied for continuation on <strong>{{contuser.appliedOn.$date| date: "medium"}}</strong></li>
                            <li>Approval made by <strong>{{contuser.verification[0].actedBy}}</strong> on <strong>{{contuser.verification[0].actedOn.$date| date: "medium"}}</strong></li>
                            <li>Approval made by <strong>{{contuser.verification[1].actedBy}}</strong> on <strong>{{contuser.verification[1].actedOn.$date| date: "medium"}}</strong></li>
                            <li>Continuation processed by <strong>Computer Centre</strong> on <strong>{{contuser.verification[2].actedOn.$date| date: "medium"}}</strong></li>
                            <li>Continuation Done</li>
                        </ol>
                        <span class="text text-danger"><strong>Warning:</strong> Kindly don't share your account with anybody. Any misuse may lead to disciplinary action or account blocking. Activities of all accounts are being seriously monitored.</span>
                    </div>
                </div>
            </div>             
        </div>        
    </div>
</div>