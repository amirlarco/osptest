<div class="panel-heading">
    <div class="page-title"><span class="fa fa-cog"></span> Change MAC Address</div>
</div>
<div class="panel-body">
    <div ng-controller="WiFiUpdateCtrl">
        <div class="row">
            <div ng-if="user.services[0].status === 'Created'">
                <div class="col-sm-8 col-sm-offset-2" ng-if="!updated">
                    <form ng-submit="updateMAC()">
                        <fieldset class="form-group">
                            <label for="email">Old MAC Address of your laptop</label>
                            <input class="form-control" type="text" value="{{user.services[0].mac}}" disabled="true"/>                        
                        </fieldset>
                        <fieldset class="form-group">
                            <label for="email">New MAC Address of your laptop</label>
                            <input id="macID" class="form-control" style="text-transform: uppercase;" ng-model="mac.id" type="text" pattern="^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$" maxlength = 17 required>
                            <small class="text-success">
                                Correct MAC Address input format: 70-77-81-30-CA-4B
                            </small>
                            <br>
                            <small class="text-danger">
                                Incorrect MAC Address input format: 70:77:81:30:CA:4B
                            </small>
                        </fieldset>
                        <input type="submit" class="btn btn-primary btn-sm" value="Update MAC">
                    </form>
                </div>
                <div class="col-sm-8 col-sm-offset-2" ng-if="updated">
                    <div class="alert alert-success">
                        Your MAC address is now updated
                    </div>
                </div>
            </div>
            <div class="col-sm-8 col-sm-offset-2" ng-if="user.services[0].status !== 'Created'">
                <div class="alert alert-danger">
                    Your WiFi account is not yet created
                </div>
            </div>
        </div> 
    </div>
</div>

<script>
    var length = 1;
    $("#macID").keypress(function () {
        alert();
        var content = $(this).val();
        var content1 = content.replace(/\-/g, '');
        length = content1.length;
        if (((length % 2) === 0) && length < 12 && length > 1) {
            $('#macID').val($('#macID').val() + '-');
        }
    });
</script> 