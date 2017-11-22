<div ng-controller="ReportsCtrl">
    <div class="col-sm-6">
        <section class="panel">
            <header class="panel-heading ">
                Daily Registered Users
            </header>
            <div class="panel-body">
                <div id="fetchdailyreport_bar" style="height: 250px;"></div>
            </div>
        </section>
    </div>
    <div class="col-sm-6">
        <section class="panel">
            <header class="panel-heading ">
                Daily Registered Users
            </header>
            <div class="panel-body">
                <div id="fetchdailyreport_line" style="height: 250px;"></div>
            </div>
        </section>
    </div>
    <div class="col-sm-6">
        <section class="panel">
            <header class="panel-heading ">
                Monthly Registered Users
            </header>
            <div class="panel-body">
                <div id="fetchmonthlyreport_bar" style="height: 250px;"></div>
            </div>
        </section>
    </div>
    <div class="col-sm-6">
        <section class="panel">
            <header class="panel-heading ">
                Monthly Registered Users
            </header>
            <div class="panel-body">
                <div id="fetchmonthlyreport_line" style="height: 250px;"></div>
            </div>
        </section>
    </div>
    <div class="col-sm-6">
        <section class="panel">
            <header class="panel-heading ">
                Over All Data <span class="badge pull-right">{{totalusers}}</span>
            </header>
            <div class="panel-body">
                <div id="fetchoverall" style="height: 250px;"></div>
            </div>
        </section>
    </div>
    <div class="col-sm-6">
        <section class="panel">
            <header class="panel-heading ">
                Pending at Provost <span class="badge pull-right">{{pendingatprovost}}</span>
            </header>
            <div class="panel-body">
                <div id="pendinghallwise" style="height: 250px;"></div>
            </div>
        </section>
    </div>
    <div class="col-sm-12">
        <section class="panel">
            <header class="panel-heading ">
                Pending at Chairperson <span class="badge pull-right">{{pendingatchaiperson}}</span>
            </header>
            <div class="panel-body">
                <div id="pendingdepwise" style="height: 250px;"></div>
            </div>
        </section>
    </div>
</div>
