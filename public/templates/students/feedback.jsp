<div class="panel-heading">
    <div class="page-title"><span class="fa fa-phone"></span> Feedback & Suggestion</div>
</div>
<div class="panel-body" ng-controller="ServicesCtlr">    
    <h4 class="text-center text-info">
        If you have any feedback/suggestions, kindly share the same with us:
    </h4>
    <div class="row">
        <div class="col-sm-8 col-sm-offset-2">
            <form ng-submit="feedback()" ng-show="!feedbackDone">
                <fieldset class="form-group">
                    <label for="subject">Subject</label>
                    <input class="form-control" name="subject" type="text" ng-model="suggestion.subject" required="true" placeholder="Subject of your Feedback/Suggestion">
                </fieldset>
                <fieldset class="form-group">
                    <label for="description">Description</label>
                    <textarea class="form-control" rows="5" name="description" ng-model="suggestion.description" required="true" placeholder="Write your Feedback/Suggestion in detail">
                        
                    </textarea>
                </fieldset>
                <button type="submit" class="btn btn-primary btn-sm">Submit</button>
                <button type="reset" class="btn btn-primary btn-sm">Reset</button>
            </form>
            <div class="alert alert-success" ng-show="feedbackDone">
                Your feedback submitted successfully.
            </div>
        </div>
    </div>    
</div>