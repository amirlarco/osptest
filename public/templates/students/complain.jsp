<div class="panel-heading">
    <div class="page-title"><span class="fa fa-commenting"></span> Register Complaint</div>
</div>

<div ng-controller="ServicesCtlr" class="panel-body"> 

    <form ng-submit="createProfile()">
        <div class="row">
            <div class="col-xs-6 col-xs-offset-3">
                <fieldset class="form-group">
                    <label for="title">Title of your complaint</label>
                    <input ng-model="formData.title" name="title" type="text" class="form-control" id="title" placeholder="Title">
                </fieldset>
                <fieldset class="form-group">
                    <label for="description">Description of your complaint</label>
                    <textarea class="form-control " id="description" name="description" placeholder="Brief your problem here..." required="true"></textarea>
                </fieldset>
                <button type="submit" class="btn btn-primary btn-sm">Submit</button>
                <button type="reset" class="btn btn-primary btn-sm">Reset</button>
            </div>
        </div>
    </form>

</div>