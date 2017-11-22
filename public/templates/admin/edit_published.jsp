<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<div class="panel-heading">
    <div class="page-title"><span class="glyphicon glyphicon-edit"></span> Edit Published</div>
</div>
<div class="panel-body" ng-controller="RSEditPublishedCtrl">     
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-xs-8 col-xs-offset-2">
                        <form ng-submit="findRScholar()">
                            <fieldset class="form-group">
                                <label for="name">Registration No</label>
                                <input name="name" type="text" ng-model="regno" class="form-control" id="title" placeholder="Registration No" required="true">
                                <br><button class="btn btn-primary btn-sm" ng-click="">Find</button>                                
                            </fieldset>
                        </form>
                    </div>
                </div>
                <div class="row" ng-show="found">
                    <div class="col-xs-8 col-xs-offset-2">
                        <form ng-submit="editRScholar()">
                            <fieldset class="form-group">
                                <label for="name">Name of Ph.D Scholar</label>
                                <input ng-model="rscholar.name" name="name" type="text" class="form-control" placeholder="Name of Ph.D Scholar" required="true">
                            </fieldset>
                            <fieldset class="form-group">
                                <label for="enroll">Enrollment Number</label>
                                <input ng-model="rscholar.enrolno" name="enroll" type="text" pattern="^[a-zA-Z][a-zA-Z0-9\.]{1,5}$" class="form-control" placeholder="Enrollment Number" required="true">
                            </fieldset>
                            <fieldset class="form-group">
                                <label for="id_type">ID Type</label>
                                <select name="idtype" ng-model="rscholar.idtype" ng-options="x for x in idtypes" class="form-control" required="true">
                                    <option value="">Select Type</option>                                                
                                </select>
                            </fieldset>
                            <fieldset class="form-group">
                                <label for="id_no">ID Number</label>
                                <input ng-model="rscholar.idno" name="idno" type="text" class="form-control" id="title" placeholder="ID Number" required="true">
                            </fieldset>
                            <fieldset class="form-group">
                                <label for="title">Upload Scholar's Photo</label>
                                <input file-model="upload" type="file" required="true">
                                <small class="text text-muted text-danger">Hint: File format must be png, gif, jpeg or pjpeg and not more than 40 KB</small>
                            </fieldset> 
                            <fieldset class="form-group">
                                <input type="submit" class="btn btn-primary btn-sm" value="Update"/>
                                <input type="reset" class="btn btn-primary btn-sm" value="Reset"/>                            
                            </fieldset>
                        </form>
                    </div>
                </div>
                <div class="row" ng-if="notfound">
                    <div class="col-xs-8 col-xs-offset-2">
                        <div class="alert alert-danger">Not Found!</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>