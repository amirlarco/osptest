<%-- 
    Document   : create_profile
    Created on : Sep 3, 2016, 11:04:10 AM
    Author     : Mohammad
--%>

<div ng-controller="ResearchScholarPublishedCtrl">
    <div class="row">
        <div class="col-xs-12">
            <section class="panel">
                <header class="panel-heading ">
                    Published Research Scholars                    
                </header>  
                <div class="panel panel-body">
                    <div class="btn-group pull-right">                        
                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                Research Scholars <span class="caret"></span></button>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#" ng-click="all()">All</a></li>
                                <li><a href="#" ng-click="facwise()">Faculty Wise</a></li>
                                <li><a href="#" ng-click="depwise()">Department Wise</a></li>
                            </ul>
                        </div>
                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                Action <span class="caret"></span></button>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#" ng-csv="getScholars" csv-header="getHeader()" filename="research_scholars.csv">Export</a></li>
                                <li><a href="#" onclick="printData('printarea')">Print</a></li>
                            </ul>
                        </div>                        
                    </div> 
                    <div ng-show="alltab">
                        <a href="#" class="btn btn-success btn-xs" ng-csv="getScholars" csv-header="getHeader()" filename="research_scholars.csv">Export All to CSV</a>
                    </div>                
                    <div ng-show="factab">
                        fac
                    </div>
                    <div ng-show="deptab">
                        dep
                    </div>
            </section>            
        </div>
    </div>
</div>
