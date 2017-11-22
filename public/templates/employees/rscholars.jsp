<div class="panel-heading" ng-controller="MyRScholarsCtrl">
    <div class="page-title">
        <strong><span class="fa fa-check"></span> My Research Scholars <span class="badge">{{pickedouts.scholars.length}}</span></strong>
    </div>
</div>

<div class="panel-body" ng-controller="MyRScholarsCtrl">
    <div ng-show="pickedouts.scholars.length > 0">
        <h4 class="text text-center text-error">List of Research Scholars of department <strong>{{pickedouts.scholars[0].dept}}</strong> and faculty <strong>{{pickedouts.scholars[0].faculty}}</strong></h4>
        <center><span class="text text-danger text-center">[Under your supervision]</span></center>
        <br>
        <table class="table table-condensed">
            <th>Sr#</th>        
            <th>Name</th>
            <th>Topic</th>
            <th>Mode</th>
            <th>Department</th>
            <th>Faculty</th>
            <th>Supervisor</th>
            <tbody>
                <tr ng-repeat="scholar in pickedouts.scholars">
                    <td>{{$index + 1}}</td>                
                    <td>{{scholar.name}}</td>
                    <td>{{scholar.topic}}</td>
                    <td>{{scholar.mode}}</td>
                    <td>{{scholar.dept}}</td>
                    <td>{{scholar.faculty}}</td>
                    <td>{{scholar.supervisor}}</td>
                </tr>
            </tbody>
        </table>
    </div>
    <div ng-if="!pickedouts.success" class="text text-muted">
        <center><span class="fa fa-dropbox fa-5x"></span><br>{{pickedouts.message}}</center>
    </div>
</div>

