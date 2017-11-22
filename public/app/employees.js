var app = angular.module('employees', ['ui.router', 'ngSanitize', 'ngCsv', 'Services']);
app.config(function ($stateProvider) {
    $stateProvider.state('changewifipass', {
        url: "/changewifipass",
        views: {
            "contents": {templateUrl: "../public/templates/employees/changewifipass.jsp"}
        }
    }).state('salary', {
        url: "/salary",
        views: {
            "contents": {templateUrl: "../public/templates/employees/salary.jsp"}
        }
    }).state('pf', {
        url: "/pf",
        views: {
            "contents": {templateUrl: "../public/templates/employees/pf.jsp"}
        }
    }).state('choose', {
        url: "/choose",
        views: {
            "contents": {templateUrl: "../public/templates/employees/choose.jsp"}
        }
    }).state('rscholars', {
        url: "/rscholars",
        views: {
            "contents": {templateUrl: "../public/templates/employees/rscholars.jsp"}
        }
    });
});
app.controller('EmployeeCtrl', function ($scope, $http, $location, Departments, Halls) {
    $http({
        method: 'GET',
        url: 'empnotify'
    }).success(function (data, status, headers, config) {
        $scope.user = data;
        console.log($scope.user);
    }).error(function (data, status, headers, config) {

    });
});
app.controller('InitialCtrl', function ($scope, $http, $location, Departments, Halls) {
    $scope.step1 = true;
    $scope.step2 = false;
    $scope.sendOTP = function (pid) {
        $http({
            method: 'GET',
            url: 'sendempotp?email=' + $scope.email + "&mobile=" + $scope.mobile + "&pid=" + pid
        }).success(function (data, status, headers, config) {
            if (!data.success) {
                alert(data.message);
            } else {
                $scope.step1 = false;
                $scope.step2 = true;
            }
        }).error(function (data, status, headers, config) {
            alert(data);
        });
    };
    $scope.validateOTP = function (pid) {
        $http({
            method: 'GET',
            url: 'validateempotp?emailotp=' + $scope.otpe + "&mobileotp=" + $scope.otpm + "&pid=" + pid + '&email=' + $scope.email + "&mobile=" + $scope.mobile
        }).success(function (data, status, headers, config) {
            if (!data.success) {
                alert(data.message);
            } else {
                alert(data.message);
                location.reload();
            }
        }).error(function (data, status, headers, config) {
            alert(data);
        });
    };
});
app.controller('WiFiPassChangeCtrl', function ($scope, $http, $location, Departments, Halls) {
    $scope.success = false;
    $scope.changepass = function () {
        if ($scope.pass1 !== $scope.pass2) {
            alert("Both passwords must be same");
        } else {
            $http({
                method: 'POST',
                url: 'changewifipass',
                data: {"pass": $scope.pass1},
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(function (data, status, headers, config) {
                if (!data.success) {
                    alert(data.message);
                } else {
                    $scope.success = true;
                    $scope.message = data.message;
                }
            }).error(function (data, status, headers, config) {
                alert(data);
            });
        }
    };
});
app.controller('MyRScholarsCtrl', function ($scope, $http, $location, Departments, Halls) {
    $scope.fetchScholars = function () {
        $http({
            method: 'GET',
            url: 'fetchrscholars'
        }).success(function (data, status, headers, config) {
            $scope.rcholars = data;
        }).error(function (data, status, headers, config) {
            alert(data);
        });
    };
    $http({
        method: 'GET',
        url: 'empstatus'
    }).success(function (data, status, headers, config) {
        $scope.empstatus = data.empstatus;
    }).error(function (data, status, headers, config) {
        alert(data);
    });
    $scope.fetchScholars();
    $scope.checkAll = function () {
        angular.forEach($scope.rcholars.scholars, function (scholar) {
            scholar.checked = $scope.checker;
        });
    };
    $scope.pickOut = function () {
        var selected = [];
        angular.forEach($scope.rcholars.scholars, function (scholar) {
            if (scholar.checked) {
                selected.push(scholar);
            }
        });
        if (confirm("Are you sure? Do you really want to associate selected scholar(s) under your supervision?")){
            $http({
                method: 'POST',
                url: 'pickout',
                data: selected,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $location.path("/choose");
                    location.reload();
                } else {
                    alert(data.message);
                }
            }).error(function (data, status, headers, config) {
                alert(data);
            });
        }
    };
    $http({
        method: 'GET',
        url: 'pickedouts'
    }).success(function (data, status, headers, config) {
        $scope.pickedouts = data;
    }).error(function (data, status, headers, config) {
        alert(data);
    });
});