<div class="row">
    <div class="col-xs-12">
        <h4><i class="fa fa-upload"></i> Upload Video</h4>        
        <div class="col-sm-8 col-sm-offset-2" ng-controller="PROCtrl"> 
            <div>
                <form enctype="multipart/form-data" ng-submit="uploadVideo()" ng-show="!vdouploaded">
                    <fieldset class="form-group">
                        <label for="title">Title</label>
                        <input class="form-control" name="title" type="text" ng-model="video.title" required="true">            
                    </fieldset>
                    <fieldset class="form-group">
                        <label for="des">Description</label>
                        <textarea class="form-control" name="des" type="text" ng-model="video.des" required="true"></textarea>
                    </fieldset>
                    <fieldset class="form-group">
                        <label for="des">Video</label>
                        <input type="file" file-model="upload" required="true" title="Select MP4 video" />
                    </fieldset>
                    <fieldset class="form-group">
                        <label for="link">Link to fetch video from <span class="text text-danger">YouTube <i class="fa fa-youtube-play"></i></span></label>
                        <input class="form-control" name="link" type="text" ng-model="video.url">
                    </fieldset>
                    <input type="checkbox" name="declation" required="true"/>I agree hereby
                    <br/><br/>            
                    <input type="submit" class="btn btn-primary btn-sm" value="Submit" /> 
                </form>
                <div class="alert alert-success" ng-show="vdouploaded">
                    Video uploaded successfully
                </div>
            </div>
        </div>
    </div>
</div>

