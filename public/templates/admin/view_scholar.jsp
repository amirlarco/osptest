<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<div class="panel-heading">
    <div class="page-title"><span class="glyphicon glyphicon-eye-open"></span> View Research Scholar</div>
</div>
<div class="panel-body" ng-controller="ResearchScholarCtrl">     
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-12">
                <div class="pull-right" ng-if="scholars.length > 0">
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
                    <center> List of Research Scholar as on (<%=dt%>)</center>
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
                            <td>{{scholar.department}}</td>
                            <td>{{scholar.name}}</td>
                            <td>{{scholar.mode}}</td>
                            <td>{{scholar.regno}}</td>
                            <td>{{scholar.dor.$date| date: 'dd-MM-yyyy'}}</td>
                            <td>{{scholar.rtopic}}</td>
                            <td>{{scholar.doc.$date| date: 'dd-MM-yyyy'}}</td>
                            <td>{{scholar.fellowship}}</td>
                            <td>{{scholar.fagency}}</td>
                            <td>{{scholar.phdstatus}}</td>
                            <td>{{scholar.supervisor}}</td>
                            <td>{{scholar.idtype}}</td>
                            <td>{{scholar.idno}}</td>
                        </tr>                    
                    </table>
                </div>
                <table class="table table-striped">
                    <tr>
                        <th>SR#</th>  
                        <th>Scholar Name</th>
                        <th>Faculty</th>
                        <th>Department</th>                        
                        <th>Mode of Ph.D</th>
                        <th>Registration No</th>
                        <th>Registration Date</th>
                        <th>Research Topic</th>
                        <th>Likely date of Completion of Ph.D.</th>
                        <th>Action</th>
                        <th>Status</th>
                    </tr>
                    <tr ng-repeat="scholar in scholars">                        
                        <td>{{$index + 1}}</td>                    
                        <td>
                            <strong>{{scholar.name}}</strong>                            
                        </td>
                        <td>{{scholar.faculty}}</td>
                        <td>{{scholar.department}}</td>
                        <td>{{scholar.mode}}</td>
                        <td>{{scholar.regno}}</td>
                        <td>{{scholar.dor.$date| date: 'dd-MM-yyyy'}}</td>
                        <td>{{scholar.rtopic}}</td>
                        <td>{{scholar.doc.$date| date: 'dd-MM-yyyy'}}</td>
                        <td>
                            <div class="btn-group">
                                <button ng-disabled="scholar.status === 'Published' || scholar.status === 'Approved' || scholar.status === 'Pending'" type="button" data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle">
                                    <span class="glyphicon glyphicon-option-horizontal"></span>
                                </button>
                                <ul class="dropdown-menu">
                                    <li ng-show="scholar.status === 'New' || scholar.status === 'Rejected'"><a href="#" ng-click="deletescholar(scholar._id.$oid)"><span class="glyphicon glyphicon-trash"></span> Delete</a></li>
                                    <li ng-show="scholar.status === 'New'"><a href="#" data-toggle="modal" data-target="{{'#' + scholar._id.$oid}}"><span class="glyphicon glyphicon-send"></span> Forward to Dean</a></li>                                    
                                    <li ng-show="scholar.status === 'New'"><a href="#" data-toggle="modal" data-target="{{'#' + scholar.regno}}"><span class="glyphicon glyphicon-upload"></span> Publish</a></li>
                                </ul>
                            </div>
                            <div class="modal modal-wide fade" id="{{scholar.regno}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header text-center">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <a href="{{scholar.photoRealPath}}" target="blank">    
                                                <img alt="{{scholar.name}}" src="{{scholar.photoUrl}}" class="img-thumbnail img-responsive" height="100" width="100"/>
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
                                                        <td>{{scholar.enroll}}</td>                                                            
                                                    </tr>
                                                    <tr>
                                                        <th>Faculty</th>
                                                        <td>{{scholar.faculty}}</td>
                                                        <th>Department</th>
                                                        <td>{{scholar.department}}</td>
                                                    </tr>
                                                    <tr>
                                                        <th>Registration Number</th>
                                                        <td>{{scholar.regno}}</td>
                                                        <th>
                                                            Registration Date
                                                        </th>
                                                        <td>
                                                            {{scholar.dor.$date| date}}
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>Likely date of Completion of Ph.D.</th>
                                                        <td>{{scholar.doc.$date| date}}</td>
                                                        <th>Mode of Ph.D</th>
                                                        <td>{{scholar.mode}}</td>
                                                    </tr>
                                                    <tr>
                                                        <th>Research Topic</th>
                                                        <td>{{scholar.rtpoic}}</td>
                                                        <th>Availing Fellowship</th>
                                                        <td>{{scholar.fellowship}}</td>
                                                    </tr>
                                                    <tr>
                                                        <th>Funding Agency</th>
                                                        <td>{{scholar.fagency}}</td>
                                                        <th>Ph.D Status</th>
                                                        <td>
                                                            {{scholar.phdstatus}}
                                                        </td>                                                            
                                                    </tr>
                                                    <tr>
                                                        <th>Supervisor Detail</th>
                                                        <td>
                                                            <strong>Supervisor: </strong>{{scholar.supervisor}}<br/>
                                                            <strong>Is there any Co-Supervisor? </strong>{{scholar.iscosupervisor}}<br/>
                                                            <strong>Type of Co-Supervisor: </strong>{{scholar.cosuptype}}<br/>
                                                            <strong>Co-Supervisor's Faculty: </strong>{{scholar.cofaculty}}<br/>
                                                            <strong>Co-Supervisor's Department: </strong>{{scholar.codepartment}}<br/>
                                                            <strong>Co-Supervisor: </strong>{{scholar.cosupervisor}}
                                                        </td>                                                                                                                
                                                        <th>ID</th>
                                                        <td> 
                                                            <strong>Type:</strong> {{scholar.idtype}}<br>
                                                            <strong>Number:</strong> {{scholar.idno}}
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>Entry Date</th>
                                                        <td>                                                        
                                                            {{scholar.addedon.$date| date}}
                                                        </td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="modal-footer">
                                            <form  ng-submit="publishFrmChair('publish', scholar._id.$oid, scholar.regno)">                                                    
                                                <center>
                                                    <input type="checkbox" name="declation" required="true"/>
                                                    I hereby declare that data has been examined and found correct. Same may be published on University website.
                                                    <br/><br/>
                                                </center>
                                                <hr>
                                                <center>
                                                    <fieldset class="form-group">
                                                        <input type="submit" class="btn btn-success btn-sm" value="Publish"/>
                                                        <a href="#" class="btn btn-primary btn-sm" data-dismiss="modal">Cancel</a>
                                                    </fieldset> 
                                                </center>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal modal-wide fade" id="{{scholar._id.$oid}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header text-center">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <a href="{{scholar.photoRealPath}}" target="blank">    
                                                <img alt="{{scholar.name}}" src="{{scholar.photoUrl}}" class="img-thumbnail img-responsive" height="100" width="100">
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
                                                        <td>{{scholar.enroll}}</td>                                                            
                                                    </tr>
                                                    <tr>
                                                        <th>Faculty</th>
                                                        <td>{{scholar.faculty}}</td>
                                                        <th>Department</th>
                                                        <td>{{scholar.department}}</td>
                                                    </tr>
                                                    <tr>
                                                        <th>Registration Number</th>
                                                        <td>{{scholar.regno}}</td>
                                                        <th>
                                                            Registration Date
                                                        </th>
                                                        <td>
                                                            {{scholar.dor.$date| date}}
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>Likely date of Completion of Ph.D.</th>
                                                        <td>{{scholar.doc.$date| date}}</td>
                                                        <th>Mode of Ph.D</th>
                                                        <td>{{scholar.mode}}</td>
                                                    </tr>
                                                    <tr>
                                                        <th>Research Topic</th>
                                                        <td>{{scholar.rtopic}}</td>
                                                        <th>Availing Fellowship</th>
                                                        <td>{{scholar.fellowship}}</td>
                                                    </tr>
                                                    <tr>
                                                        <th>Funding Agency</th>
                                                        <td>{{scholar.fagency}}</td>
                                                        <th>Ph.D Status</th>
                                                        <td>
                                                            {{scholar.phdstatus}}
                                                        </td>                                                            
                                                    </tr>
                                                    <tr>
                                                        <th>Supervisor Detail</th>
                                                        <td>
                                                            <strong>Supervisor: </strong>{{scholar.supervisor}}<br/>
                                                            <strong>Is there any Co-Supervisor? </strong>{{scholar.iscosupervisor}}<br/>
                                                            <strong>Type of Co-Supervisor: </strong>{{scholar.cosuptype}}<br/>
                                                            <strong>Co-Supervisor's Faculty: </strong>{{scholar.cofaculty}}<br/>
                                                            <strong>Co-Supervisor's Department: </strong>{{scholar.codepartment}}<br/>
                                                            <strong>Co-Supervisor: </strong>{{scholar.cosupervisor}}
                                                        </td>                                                                                                                
                                                        <th>ID</th>
                                                        <td> 
                                                            <strong>Type:</strong> {{scholar.idtype}}<br>
                                                            <strong>Number:</strong> {{scholar.idno}}
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>Entry Date</th>
                                                        <td>                                                        
                                                            {{scholar.addedon.$date| date}}
                                                        </td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="modal-footer">
                                            <form  ng-submit="reviewedandforward(scholar._id.$oid)">                                                    
                                                <center>
                                                    <input type="checkbox" name="declation" required="true"/>
                                                    I hereby declare that data has been examined and found correct.
                                                    <br/><br/>
                                                </center>
                                                <hr>
                                                <center>
                                                    <fieldset class="form-group">
                                                        <input type="submit" class="btn btn-primary btn-sm" value="Reviewed & Forward to Dean"/>
                                                        <a href="#" class="btn btn-primary btn-sm" data-dismiss="modal">Cancel</a>
                                                    </fieldset> 
                                                </center>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </td>
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