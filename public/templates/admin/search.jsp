<div ng-controller="SearchCtrl" class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                Search Student
            </header>
            <div class="panel-body">
                <form ng-submit="searchStudent()" class="navbar-form" role="search">
                    <center>
                        <div class="input-group">
                            <input type="text" ng-model="enroll" class="form-control" placeholder="Enrollment" required="true">
                            <div class="input-group-btn">
                                <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                            </div>
                        </div>
                    </center>
                </form>
                <div class="row" ng-show="result.success">
                    <div class="col-lg-4">
                        <section class="panel">
                            <div class="user-head">
                                <img src="/public/img/bg.jpg" alt="" height="376" width="207" />
                            </div>
                            <div class="panel-body">
                                <div class="user-desk">
                                    <div class="avatar">
                                        <img src="{{result.profile.attachments[0].realPath}}" alt="" />
                                    </div>
                                    <div class="clearfix"></div>
                                    <h4 class="text-uppercase">{{result.profile.fullName}}</h4>
                                    <span>{{result.profile.profile.courseType}}</span><br>
                                    <span>{{result.profile.profile.courseName}} [{{result.profile.profile.semesterYear}}]</span><br>
                                    <span>{{result.profile.profile.department}}</span><br>
                                    <span>{{result.profile.profile.hall}}</span>
                                    <div class="s-n">
                                        <i class="fa fa-{{result.profile.profile.gender| lowercase}}"></i>
                                    </div>
                                    <ul class="user-p-list">
                                        <a ng-class="result.profile.profile.verification[0].provost ? 'btn btn-sm btn-success addon-btn m-b-10 btn-block' : 'btn btn-sm btn-danger addon-btn m-b-10 btn-block'">
                                            <i ng-class="result.profile.profile.verification[0].provost ? 'fa fa-check pull-right' : 'fa fa-times pull-right'"></i>                                            Provost
                                        </a>
                                        <a ng-class="result.profile.profile.verification[1].chairman ? 'btn btn-sm btn-success addon-btn m-b-10 btn-block' : 'btn btn-sm btn-danger addon-btn m-b-10 btn-block'">
                                            <i ng-class="result.profile.profile.verification[1].chairman ? 'fa fa-check pull-right' : 'fa fa-times pull-right'"></i>                                            Chairperson
                                        </a>
                                        <a ng-class="result.profile.services[0].applied ? 'btn btn-sm btn-success addon-btn m-b-10 btn-block' : 'btn btn-sm btn-danger addon-btn m-b-10 btn-block'">
                                            <i ng-class="result.profile.services[0].applied ? 'fa fa-check pull-right' : 'fa fa-times pull-right'"></i>                                            Applied for WiFi
                                        </a>
                                        <a ng-class="result.profile.services[0].notified ? 'btn btn-sm btn-success addon-btn m-b-10 btn-block' : 'btn btn-sm btn-danger addon-btn m-b-10 btn-block'">
                                            <i ng-class="result.profile.services[0].notified ? 'fa fa-check pull-right' : 'fa fa-times pull-right'"></i>                                            WiFi Created
                                        </a>
                                        <a ng-class="result.profile.services[3].applied ? 'btn btn-sm btn-success addon-btn m-b-10 btn-block' : 'btn btn-sm btn-danger addon-btn m-b-10 btn-block'">
                                            <i ng-class="result.profile.services[3].applied ? 'fa fa-check pull-right' : 'fa fa-times pull-right'"></i>                                            Applied for Email
                                        </a>
                                    </ul>
                                </div>
                            </div>
                        </section>
                    </div>
                    <div class="col-lg-8">
                        <section class="panel" id="block-panel">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="btn-group btn-group-sm pull-right">
                                            <div class="btn-group btn-group-sm">
                                                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                                    Update <span class="caret"></span></button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href="#" data-toggle="modal" data-target="#contact">Contact</a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#photoupload">Photo</a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#certupload">High School Certificate</a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#sigupload">Signature</a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#adcontupload">Admission/Continuation Slip</a></li>
                                                </ul>
                                            </div>
                                            <div class="btn-group btn-group-sm">
                                                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                                    Make Editable <span class="caret"></span></button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href="#" data-toggle="modal" data-target="#editnew">New</a></li>
                                                    <li><a href="#" data-toggle="modal" data-target="#editcont">Continuation</a></li>
                                                </ul>
                                            </div>
                                            <div class="modal" id="editnew" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                            <h4 class="modal-title" id="myModalLabel">Make New Registration Editable</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <section class="panel">
                                                                <div class="panel-body">
                                                                    <div class="row">
                                                                        <div class="col-lg-8 col-lg-offset-2">
                                                                            <form enctype="multipart/form-data" class="form-horizontal" role="form" ng-submit="makeNewEditable(result.profile.enroll)">                                                                                
                                                                                <div class="form-group">
                                                                                    <label class="col-lg-4 control-label" for="reasonid">Reason for update:</label>
                                                                                    <div class="col-lg-8">
                                                                                        <input type="text" ng-model="mknewreason" class="form-control" id="reasonid" placeholder="Brief the reason for this update" required="true" />
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label class="col-lg-4 control-label" for="docid">Reference No.:</label>
                                                                                    <div class="col-lg-8">
                                                                                        <input type="text" ng-model="mknewdocref" class="form-control" id="docid" placeholder="Enter the reference no" required="true" />
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label class="col-lg-4 control-label"></label>
                                                                                    <div class="col-lg-8">
                                                                                        <input type="submit" class="btn btn-primary btn-sm" />
                                                                                        <button type="button" class="btn btn-primary  btn-sm" data-dismiss="modal">Cancel</button>
                                                                                    </div>
                                                                                </div>
                                                                            </form>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </section>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal" id="editcont" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                            <h4 class="modal-title" id="myModalLabel">Make Continuation Editable</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <section class="panel">
                                                                <div class="panel-body">
                                                                    <div class="row">
                                                                        <div class="col-lg-8 col-lg-offset-2">
                                                                            <form enctype="multipart/form-data" class="form-horizontal" role="form" ng-submit="makeContEditable(result.profile.enroll)">                                                                                
                                                                                <div class="form-group">
                                                                                    <label class="col-lg-4 control-label" for="reasonid">Reason for update:</label>
                                                                                    <div class="col-lg-8">
                                                                                        <input type="text" ng-model="mkcontreason" class="form-control" id="reasonid" placeholder="Brief the reason for this update" required="true" />
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label class="col-lg-4 control-label" for="docid">Reference No.:</label>
                                                                                    <div class="col-lg-8">
                                                                                        <input type="text" ng-model="mkcontdocref" class="form-control" id="docid" placeholder="Enter the reference no" required="true" />
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label class="col-lg-4 control-label"></label>
                                                                                    <div class="col-lg-8">
                                                                                        <input type="submit" class="btn btn-primary btn-sm" />
                                                                                        <button type="button" class="btn btn-primary  btn-sm" data-dismiss="modal">Cancel</button>
                                                                                    </div>
                                                                                </div>
                                                                            </form>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </section>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="btn-group btn-group-sm">
                                                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                                    Action <span class="caret"></span></button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href="#" data-toggle="modal" data-target="#delete">Delete</a></li>
                                                    <li ng-if="result.profile.services[0].status === 'Created' && !result.profile.services[0].isWiFiDisabled">
                                                        <a href="#" ng-click="disableWiFi()">Disable WiFi</a>
                                                    </li>
                                                    <li ng-if="result.profile.services[0].status === 'Created' && result.profile.services[0].isWiFiDisabled">
                                                        <a href="#" ng-click="enableWiFi()">Enable WiFi</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="modal" id="contact" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">Update Contact</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <section class="panel">
                                                            <div class="panel-body">
                                                                <form class="form-horizontal" role="form" ng-submit="updateContact(result.profile.enroll)">
                                                                    <div class="form-group">
                                                                        <label class="col-lg-4 control-label" for="emailid">Email:</label>
                                                                        <div class="col-md-8">
                                                                            <input type="text" ng-model="result.profile.email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" class="form-control" id="emailid" placeholder="Email to be updated" required="true" />
                                                                            <small class="text text-danger">Note: Should be in lowercase</small>                                                                            
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="col-lg-4 control-label" for="mobileid">Mobile:</label>
                                                                        <div class="col-lg-8">
                                                                            <input type="text" ng-model="result.profile.mobile" pattern="[7-9]{1}[0-9]{9}" class="form-control" id="mobileid" placeholder="Mobile to be updated" required="true" />
                                                                            <small class="text text-danger">Note: 10 digit must start with 7, 8 or 9</small>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="col-lg-4 control-label" for="reasonid">Reason for update:</label>
                                                                        <div class="col-lg-8">
                                                                            <input type="text" ng-model="upreason" class="form-control" id="reasonid" placeholder="Brief the reason for this update" required="true" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="col-lg-4 control-label" for="docid">Supporting Despatch No.:</label>
                                                                        <div class="col-lg-8">
                                                                            <input type="text" ng-model="supdocref" class="form-control" id="docid" placeholder="Enter the despatch number" required="true" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="col-lg-4 control-label"></label>
                                                                        <div class="col-lg-8">
                                                                            <input type="submit" class="btn btn-primary btn-sm" />
                                                                            <button type="button" class="btn btn-primary  btn-sm" data-dismiss="modal">Cancel</button>
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </section>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal" id="photoupload" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">Update Photo</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <section class="panel">
                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-lg-8 col-lg-offset-2">
                                                                        <form enctype="multipart/form-data" class="form-horizontal" role="form" ng-submit="updatePhoto(result.profile.enroll)">
                                                                            <div class="form-group">
                                                                                <div class="col-lg-12"><input type="file" file-model="uploadphoto" required="true" title="Select Photo" /></div>                                                                               
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="col-lg-4 control-label" for="reasonid">Reason for update:</label>
                                                                                <div class="col-lg-8">
                                                                                    <input type="text" ng-model="phupreason" class="form-control" id="reasonid" placeholder="Brief the reason for this update" required="true" />
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="col-lg-4 control-label" for="docid">Supporting Despatch No.:</label>
                                                                                <div class="col-lg-8">
                                                                                    <input type="text" ng-model="phsupdocref" class="form-control" id="docid" placeholder="Enter the despatch number" required="true" />
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="col-lg-4 control-label"></label>
                                                                                <div class="col-lg-8">
                                                                                    <input type="submit" class="btn btn-primary btn-sm" />
                                                                                    <button type="button" class="btn btn-primary  btn-sm" data-dismiss="modal">Cancel</button>
                                                                                </div>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </section>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal" id="certupload" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">Update High School Certificate</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <section class="panel">
                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-lg-8 col-lg-offset-2">
                                                                        <form enctype="multipart/form-data" class="form-horizontal" role="form" ng-submit="updateCert(result.profile.enroll)">
                                                                            <div class="form-group">
                                                                                <div class="col-lg-12"><input type="file" file-model="uploadcert" required="true" title="Select Photo" /></div>                                                                               
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="col-lg-4 control-label" for="reasonid">Reason for update:</label>
                                                                                <div class="col-lg-8">
                                                                                    <input type="text" ng-model="crupreason" class="form-control" id="reasonid" placeholder="Brief the reason for this update" required="true" />
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="col-lg-4 control-label" for="docid">Reference No.:</label>
                                                                                <div class="col-lg-8">
                                                                                    <input type="text" ng-model="crsupdocref" class="form-control" id="docid" placeholder="Enter the despatch number" required="true" />
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="col-lg-4 control-label"></label>
                                                                                <div class="col-lg-8">
                                                                                    <input type="submit" class="btn btn-primary btn-sm" />
                                                                                    <button type="button" class="btn btn-primary  btn-sm" data-dismiss="modal">Cancel</button>
                                                                                </div>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </section>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal" id="sigupload" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">Signature Update</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <section class="panel">
                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-lg-8 col-lg-offset-2">
                                                                        <form enctype="multipart/form-data" class="form-horizontal" role="form" ng-submit="updateSig(result.profile.enroll)">
                                                                            <div class="form-group">
                                                                                <div class="col-lg-12"><input type="file" file-model="uploadsig" required="true" title="Select Photo" /></div>                                                                               
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="col-lg-4 control-label" for="reasonid">Reason for update:</label>
                                                                                <div class="col-lg-8">
                                                                                    <input type="text" ng-model="sgupreason" class="form-control" id="reasonid" placeholder="Brief the reason for this update" required="true" />
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="col-lg-4 control-label" for="docid">Reference No.:</label>
                                                                                <div class="col-lg-8">
                                                                                    <input type="text" ng-model="sgsupdocref" class="form-control" id="docid" placeholder="Enter the despatch number" required="true" />
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="col-lg-4 control-label"></label>
                                                                                <div class="col-lg-8">
                                                                                    <input type="submit" class="btn btn-primary btn-sm" />
                                                                                    <button type="button" class="btn btn-primary  btn-sm" data-dismiss="modal">Cancel</button>
                                                                                </div>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </section>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal" id="adcontupload" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">Admission/Continuation Slip Update</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <section class="panel">
                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-lg-8 col-lg-offset-2">
                                                                        <form enctype="multipart/form-data" class="form-horizontal" role="form" ng-submit="updateADMCont(result.profile.enroll)">
                                                                            <div class="form-group">
                                                                                <div class="col-lg-12"><input type="file" file-model="uploadadm" required="true" title="Select Photo" /></div>                                                                               
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="col-lg-4 control-label" for="reasonid">Reason for update:</label>
                                                                                <div class="col-lg-8">
                                                                                    <input type="text" ng-model="admupreason" class="form-control" id="reasonid" placeholder="Brief the reason for this update" required="true" />
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="col-lg-4 control-label" for="docid">Reference No.:</label>
                                                                                <div class="col-lg-8">
                                                                                    <input type="text" ng-model="admsupdocref" class="form-control" id="docid" placeholder="Enter the despatch number" required="true" />
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="col-lg-4 control-label"></label>
                                                                                <div class="col-lg-8">
                                                                                    <input type="submit" class="btn btn-primary btn-sm" />
                                                                                    <button type="button" class="btn btn-primary  btn-sm" data-dismiss="modal">Cancel</button>
                                                                                </div>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </section>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /btn-group -->
                                        <div class="modal modal-wide" id="delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">Account Deletion</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <section class="panel">
                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-lg-6">
                                                                        <div class="widget">
                                                                            <div class="bio-row">
                                                                                <p>
                                                                                    <span>Email: </span> {{result.profile.email}}
                                                                                    <i ng-class="result.profile.contact.emailID.isVerified ? 'fa fa-check-circle text-success' : 'fa fa-times-circle text-danger'"></i>
                                                                                </p>
                                                                            </div>
                                                                            <div class="bio-row">
                                                                                <p>
                                                                                    <span>Mobile: </span> {{result.profile.mobile}}
                                                                                    <i ng-class="result.profile.contact.mobileID.isVerified ? 'fa fa-check-circle text-success' : 'fa fa-times-circle text-danger'"></i>
                                                                                </p>
                                                                            </div>
                                                                            <div class="bio-row">
                                                                                <p>
                                                                                    <span>Enrollment: </span> {{result.profile.enroll| uppercase}}
                                                                                </p>
                                                                            </div>
                                                                            <div class="bio-row">
                                                                                <p>
                                                                                    <span>Faculty Number: </span> {{result.profile.profile.facultyNumber| uppercase}}
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6">
                                                                        <div class="widget">
                                                                            <div class="bio-row">
                                                                                <p>
                                                                                    <span>Hall: </span> {{result.profile.profile.hall}}                                                                                   
                                                                                </p>
                                                                            </div>
                                                                            <div class="bio-row">
                                                                                <p>
                                                                                    <span>Department: </span> {{result.profile.profile.department}}                                                                                     
                                                                                </p>
                                                                            </div>
                                                                            <div class="bio-row">
                                                                                <p>
                                                                                    <span>Course: </span> {{result.profile.profile.courseName}} 
                                                                                </p>
                                                                            </div>
                                                                            <div class="bio-row">
                                                                                <p>
                                                                                    <span>City: </span> {{result.profile.profile.city}} <span>Country: </span> {{result.profile.profile.country}}
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-lg-12">
                                                                        <form enctype="multipart/form-data" ng-submit="deleteaccount()" class="form-horizontal col-lg-8 col-lg-offset-2">
                                                                            <div class="form-group">
                                                                                <label class="col-lg-3 col-md-4 control-label">Category:</label>
                                                                                <div class="col-lg-9 col-md-8">
                                                                                    <select ng-model="cat" class="form-control select2" required="">
                                                                                        <option value="">Select Category</option>
                                                                                        <option value="Defected">Defected</option>
                                                                                        <option value="Disciplinary">Disciplinary</option>
                                                                                        <option value="Anonymous">Anonymous</option>
                                                                                    </select>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="col-lg-3 col-md-4 control-label" for="reason">Reason:</label>
                                                                                <div class="col-lg-9 col-md-8">
                                                                                    <textarea ng-model="reason" class="form-control" id="reason" placeholder="Brief the reason for account deletion..." required="true"></textarea>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="col-lg-3 col-md-4 control-label">Attachments:</label>
                                                                                <div class="col-lg-9 col-md-8">
                                                                                    <input ng-model="attch" file-model="upload" type="file">
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="col-lg-3 col-md-4 control-label"></label>
                                                                                <div class="col-lg-9 col-md-8">
                                                                                    <input type="submit" class="btn btn-primary" />
                                                                                    <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
                                                                                </div>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </section>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <br> <br>
                                    <div class="col-lg-12">
                                        <div class="widget col-lg-6">                                            
                                            <div class="bio-row">
                                                <p>
                                                    <span>Email: </span> {{result.profile.email}}
                                                    <i ng-class="result.profile.contact.emailID.isVerified ? 'fa fa-check-circle text-success' : 'fa fa-times-circle text-danger'"></i>
                                                </p>                                               
                                            </div>
                                            <div class="bio-row">
                                                <p>
                                                    <span>Mobile: </span> **********
                                                    <i ng-class="result.profile.contact.mobileID.isVerified ? 'fa fa-check-circle text-success' : 'fa fa-times-circle text-danger'"></i>
                                                </p>
                                            </div>
                                            <div class="bio-row">
                                                <p><span>Enrollment: </span> {{result.profile.enroll}}</p>
                                            </div>
                                            <div class="bio-row">
                                                <p>
                                                    <span>Faculty Number: </span> {{result.profile.profile.facultyNumber}}
                                                </p>
                                                <p>
                                                    <span>Session: </span> {{result.profile.session}}
                                                </p>
                                            </div>
                                            <div class="bio-row">
                                                <p>
                                                    <span>Father's Name: </span> {{result.profile.profile.fatherName}}
                                                </p>
                                                <p>
                                                    <span>Mother's Name: </span> {{result.profile.profile.motherName}}
                                                </p>
                                                <p>
                                                    <span>Date of Birth: </span> {{result.profile.profile.dob}}
                                                </p>
                                            </div>
                                            <div class="bio-row">                                                
                                                <p>
                                                    <span>Hostel: </span> {{result.profile.profile.hostel}}
                                                </p>
                                                <p>
                                                    <span>Room: </span> {{result.profile.profile.room}}
                                                </p>
                                                <p>
                                                    <span>NRSC Address: </span> {{result.profile.profile.nrscadd}}
                                                </p>
                                                <p>
                                                    <span>Permanent Address: </span> {{result.profile.profile.address}}
                                                </p>
                                            </div>
                                            <div class="bio-row"> 
                                                <strong><u>EMERGENCY CONTACT:</u></strong>
                                                <p>
                                                    <span>Name: </span> {{result.profile.profile.emergencyContactPerson.name}} [{{result.profile.profile.emergencyContactPerson.emergency_relation}}]
                                                </p>
                                                <p>
                                                    <span>Mobile: </span> {{result.profile.profile.emergencyContactPerson.mobile}}
                                                </p>
                                                <p>
                                                    <span>Email: </span> {{result.profile.profile.emergencyContactPerson.email}}
                                                </p>
                                                <p>
                                                    <span>Address: </span> {{result.profile.profile.emergencyContactPerson.address}}
                                                </p>
                                                <p>
                                                    <span>City: </span> {{result.profile.profile.emergencyContactPerson.city}}
                                                </p>
                                                <p>
                                                    <span>State </span> {{result.profile.profile.emergencyContactPerson.state}}
                                                </p>
                                            </div>
                                        </div>
                                        <div class="widget col-lg-6">
                                            <div class="bio-row">
                                                <p>
                                                    <span>Photo: </span>
                                                    <i ng-class="result.profile.attachments[0].isUploaded ? 'fa fa-check-circle text-success' : 'fa fa-times-circle text-danger'"></i>
                                                    <a href="{{result.profile.attachments[0].realPath}}" target="_blank">View</a>
                                                </p>
                                            </div>
                                            <div class="bio-row">
                                                <p>
                                                    <span>High School Certificate: </span>
                                                    <i ng-class="result.profile.attachments[1].isUploaded ? 'fa fa-check-circle text-success' : 'fa fa-times-circle text-danger'"></i>                                          
                                                    <a href="{{result.profile.attachments[1].realPath}}" target="_blank">View</a>
                                                </p>
                                            </div>
                                            <div class="bio-row">
                                                <p>
                                                    <span>Signature: </span>
                                                    <i ng-class="result.profile.attachments[2].isUploaded ? 'fa fa-check-circle text-success' : 'fa fa-times-circle text-danger'"></i>                                          
                                                    <a href="{{result.profile.attachments[2].realPath}}" target="_blank">View</a>
                                                </p>
                                            </div>
                                            <div class="bio-row">
                                                <p>
                                                    <span>Admission/Continuation Slip: </span>
                                                    <i ng-class="result.profile.attachments[3].isUploaded ? 'fa fa-check-circle text-success' : 'fa fa-times-circle text-danger'"></i>                                          
                                                    <a href="{{result.profile.attachments[3].realPath}}" target="_blank">View</a>
                                                </p>
                                            </div>
                                            <div class="bio-row">
                                                <p>
                                                    <span>MAC: </span> {{result.profile.services[0].mac}}
                                                </p>
                                                <p>
                                                    <span>MAC on AD: </span> {{result.profile.mac}}
                                                </p>
                                            </div>
                                            <div class="bio-row">
                                                <strong><u>CONTINUATION:</u></strong>
                                                <p>
                                                    <span>Applied: </span> <label ng-class="result.applied ? 'label label-success' : 'label label-danger'">{{result.applied ? 'Yes': 'No'}}</label>
                                                </p>                                                
                                            </div>
                                            <div class="bio-row" ng-if="result.applied">
                                                <p>
                                                    <span>Continuation Type: </span> {{result.cont.type}}
                                                </p>
                                                <p>
                                                    <span>Hall: </span> {{result.cont.details[1].hall}}
                                                </p>
                                                <p>
                                                    <span>Department: </span> {{result.cont.details[1].dep}}
                                                </p>
                                                <p>
                                                    <span>Chairperson: </span> <label ng-class="result.cont.verification[0].status === 'Approved' ? 'label label-success' : 'label label-danger'">{{result.cont.verification[0].status === 'Approved' ? 'Yes': 'No'}}</label>
                                                </p>
                                                <p>
                                                    <span>Provost: </span> <label ng-class="result.cont.verification[1].status === 'Approved' ? 'label label-success' : 'label label-danger'">{{result.cont.verification[1].status === 'Approved' ? 'Yes': 'No'}}</label>
                                                </p>   
                                                <p>
                                                    <span>Processed: </span> <label ng-class="result.cont.verification[2].status === 'Processed' ? 'label label-success' : 'label label-danger'">{{result.cont.verification[2].status === 'Processed' ? 'Yes': 'No'}}</label>
                                                </p>
                                                <p>
                                                    <span>Applied On: </span> {{result.cont.appliedOn| date}}
                                                </p>
                                                <p>
                                                    <span>Session: </span> {{result.cont.session}}
                                                </p>
                                            </div>
                                        </div>
                                    </div>                                    
                                </div>
                            </div>
                        </section>
                    </div>
                </div>

            </div>
        </section>
    </div>
</div>