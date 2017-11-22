<div class="panel-heading" ng-controller="MyRScholarsCtrl">
    <div class="page-title">
        <strong><span class="fa fa-check"></span> Choose from Department <span class="badge">{{rcholars.scholars.length}}</span></strong>
    </div>
</div>

<div class="panel-body" ng-controller="MyRScholarsCtrl">
    <div ng-show="rcholars.scholars.length > 0">
        <h4 class="text text-center text-error">List of Research Scholars of department <strong>{{rcholars.scholars[0].dept}}</strong> and faculty <strong>{{rcholars.scholars[0].faculty}}</strong></h4>
        <center><span class="text text-danger text-center">[Please choose your concerned scholars and click on <strong class="label label-primary">Pick Out</strong> button to associate them under your supervision]</span></center>
        <br>
        <table class="table table-condensed">
            <th>Sr#</th>
            <th><input type="checkbox" ng-model="checker" ng-click="checkAll()" /></th>
            <th>Name</th>
            <th>Topic</th>
            <th>Mode</th>
            <th>Department</th>
            <th>Faculty</th>
            <th>Supervisor</th>
            <tbody>
                <tr ng-repeat="scholar in rcholars.scholars">
                    <td>{{$index + 1}}</td>
                    <td><input type="checkbox" ng-model="scholar.checked" /></td>
                    <td>{{scholar.name}}</td>
                    <td>{{scholar.topic}}</td>
                    <td>{{scholar.mode}}</td>
                    <td>{{scholar.dept}}</td>
                    <td>{{scholar.faculty}}</td>
                    <td>{{scholar.supervisor}}</td>
                </tr>
            </tbody>
        </table>    
        <button class="btn btn-primary btn-xs" ng-click="pickOut()">Pick Out</button>
    </div>
    <div ng-if="!rcholars.success" class="text text-muted">
        <center><span class="fa fa-dropbox fa-5x"></span><br>{{rcholars.message}}</center>
    </div>
</div>

