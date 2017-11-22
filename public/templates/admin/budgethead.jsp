<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                Create New Budget Head
            </header>
            <div class="panel-body">
                <div class=" form">
                    <form class="cmxform form-horizontal tasi-form" id="commentForm" method="get" action="">
                        <div class="form-group ">
                            <label for="name" class="control-label col-lg-2">Name of Budget Head</label>
                            <div class="col-lg-10">
                                <input class=" form-control" id="name" name="name" minlength="2" type="text" required />
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="code" class="control-label col-lg-2">Budget Code</label>
                            <div class="col-lg-10">
                                <input class=" form-control" id="code" name="code" minlength="2" type="text" required />
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="location" class="control-label col-lg-2">Location</label>
                            <div class="col-lg-10">
                                <input class=" form-control" id="location" name="location" minlength="2" type="text" required />
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="amount" class="control-label col-lg-2">Sanctioned Amount</label>
                            <div class="col-lg-4">
                                <input class=" form-control" id="amount" name="amount" minlength="2" type="text" required />
                            </div>
                            <label for="amount" class="control-label col-lg-2">Sanctioned Amount For</label>
                            <div class="col-lg-4">
                                <select class="form-control" required="">
                                    <option value="">2014-15</option>
                                    <option value="">2015-16</option>
                                    <option value="">2016-17</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="description" class="control-label col-lg-2">Description</label>
                            <div class="col-lg-10">
                                <textarea class="form-control " id="description" name="description" required></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <button class="btn btn-success" type="submit">Save</button>
                                <button class="btn btn-default" type="reset">Cancel</button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </section>
    </div>
</div>