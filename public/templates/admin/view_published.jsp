<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<div class="panel-heading" ng-controller="ResearchScholarPublishedCtrl">
    <div class="page-title"><span class="glyphicon glyphicon-upload"></span> Published<span class="badge pull-right">{{scholars.length}}</span></div>
</div>
<div class="panel-body" ng-controller="ResearchScholarPublishedCtrl">     
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-12">
                <div class="pull-right" ng-if="scholars.length > 0"> 
                    <a href="http://www.amu.ac.in/rscholar.jsp" class="btn btn-info btn-xs" target="_blank">
                        <i class="fa fa-eye"></i> View on Website
                    </a>
                    <button class="btn btn-success btn-xs" ng-csv="getScholars" csv-header="getHeader()" filename="research_scholars.csv">
                        <i class="fa fa-file-excel-o"></i> Export to CSV
                    </button>
                    <button class="btn btn-danger btn-xs" ng-click="print('printarea')">
                        <i class="fa fa-print"></i> Print
                    </button>
                </div>
                <br><br>
                <%
                    Date dte = new Date();
                    String dt = DateFormat.getDateTimeInstance(DateFormat.MEDIUM, DateFormat.SHORT).format(dte);
                %>
                <div id="printarea" hidden="true">                
                    <p>
                    <center>                         
                        <p><h1>{{scholars[0].dept}}</h1></p>
                        <h2>{{scholars[0].faculty}}</h2>
                        List of Research Scholar as on (<%=dt%>)
                    </center>
                    </p>
                    <table border="1">
                            <tr>
                                <th>SR#</th>
                                <th>Faculty</th>
                                <th>Department</th>
                                <th>Scholar Name</th>
                                <th>Mode of Ph.D</th>
                                <th>Registration No</th>
                                <th>Registration Date</th>
                                <th>Research Topic</th>
                                <th>Likely date of Completion of Ph.D.</th>
                                <th>Availing Fellowship</th>
                                <th>Funding Agency of Fellowship</th>
                                <th>Status</th>
                                <th>Supervisor</th>
                                <th>IDType</th>
                                <th>IDNo</th>
                            </tr>
                            <tr ng-repeat="scholar in scholars">
                                <td>{{$index + 1}}</td>
                                <td>{{scholar.faculty}}</td>
                                <td>{{scholar.dept}}</td>
                                <td>{{scholar.name}}</td>
                                <td>{{scholar.mode}}</td>
                                <td>{{scholar.regno}}</td>
                                <td>{{scholar.regdate| date: 'dd-MM-yyyy'}}</td>
                                <td>{{scholar.topic}}</td>
                                <td>{{scholar.completiondate| date: 'dd-MM-yyyy'}}</td>
                                <td>{{scholar.availingfellowship}}</td>
                                <td>{{scholar.fundingagency}}</td>
                                <td>{{scholar.status}}</td>
                                <td>{{scholar.supervisor}}</td>
                                <td>{{scholar.idtype}}</td>
                                <td>{{scholar.idno}}</td>
                            </tr>
                    </table>
                </div>
                <table class="table table-striped">
                    <tr>
                        <th>SR#</th> 
                        <th>Enrollment</th>
                        <th>Scholar Name</th>                        
                        <th>Faculty</th>
                        <th>Department</th>                        
                        <th>Mode of Ph.D</th>
                        <th>Registration No</th>
                        <th>Registration Date</th>
                        <th>Research Topic</th>
                        <th>Likely date of Completion of Ph.D.</th>
                        <th>Status</th>
                    </tr>
                    <tr ng-repeat="scholar in scholars">                        
                        <td>{{$index + 1}}</td>
                        <td>{{scholar.enrolno}}</td>
                        <td>                             
                            <a href="#" data-toggle="modal" data-target="{{'#' + scholar.regno}}"> <strong>{{scholar.name}}</strong></a>
                            <div class="modal modal-wide fade" id="{{scholar.regno}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header text-center">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <a href="{{scholar.photo}}" target="blank">    
                                                <img alt="{{scholar.name}}" src="{{scholar.photo}}" class="img-thumbnail img-responsive" height="100" width="100">
                                            </a>
                                            <h4 class="modal-title" id="myModalLabel">{{scholar.name}}</h4>
                                        </div>
                                        <div class="modal-body">
                                            <table class="table table-condensed">
                                                <tbody>
                                                    <tr>
                                                        <th>Name of Ph.D Scholar</th>
                                                        <td>{{scholar.name}}</td>
                                                        <th>Enrollment Number</th>
                                                        <td>{{scholar.enrolno}}</td>                                                            
                                                    </tr>
                                                    <tr>
                                                        <th>Faculty</th>
                                                        <td>{{scholar.faculty}}</td>
                                                        <th>Department</th>
                                                        <td>{{scholar.dept}}</td>
                                                    </tr>
                                                    <tr>
                                                        <th>Registration Number</th>
                                                        <td>{{scholar.regno}}</td>
                                                        <th>
                                                            Registration Date
                                                        </th>
                                                        <td>
                                                            {{scholar.regdate}}
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>Likely date of Completion of Ph.D.</th>
                                                        <td>{{scholar.completiondate}}</td>
                                                        <th>Mode of Ph.D</th>
                                                        <td>{{scholar.mode}}</td>
                                                    </tr>
                                                    <tr>
                                                        <th>Research Topic</th>
                                                        <td>{{scholar.topic}}</td>
                                                        <th>Availing Fellowship</th>
                                                        <td>{{scholar.availingfellowship}}</td>
                                                    </tr>
                                                    <tr>
                                                        <th>Funding Agency</th>
                                                        <td>{{scholar.fundingagency}}</td>
                                                        <th>Ph.D Status</th>
                                                        <td>
                                                            {{scholar.status}}
                                                        </td>                                                            
                                                    </tr>
                                                    <tr>
                                                        <th>Supervisor Detail</th>
                                                        <td>
                                                            <strong>Supervisor: </strong>{{scholar.supervisor}}<br/>
                                                        </td>                                                                                                                
                                                        <th>ID</th>
                                                        <td> 
                                                            <strong>Type:</strong> {{scholar.idtype}}<br>
                                                            <strong>Number:</strong> {{scholar.idno}}
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>Published on</th>
                                                        <td>                                                        
                                                            {{scholar.publishedon}}
                                                        </td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>{{scholar.faculty}}</td>
                        <td>{{scholar.dept}}</td>
                        <td>{{scholar.mode}}</td>
                        <td>{{scholar.regno}}</td>
                        <td>{{scholar.regdate| date: 'dd-MM-yyyy'}}</td>
                        <td>{{scholar.topic}}</td>
                        <td>{{scholar.completiondate}}</td>                        
                        <td>
                            <span 
                                ng-class="
                                    {
                                        'label label-info': scholar.status === 'New',
                                        'label label-warning': scholar.status === 'Pending',
                                        'label label-primary': scholar.status === 'Approved',
                                        'label label-danger': scholar.status === 'Rejected',
                                        'label label-success': scholar.status === 'Published'
                                    }">
                                {{scholar.status}}
                            </span>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>