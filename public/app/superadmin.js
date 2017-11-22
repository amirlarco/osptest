var app = angular.module('superadmin', ['ui.router', 'ngSanitize', 'ngCsv', 'Services']);
app.config(function ($stateProvider) {
    $stateProvider
            .state('new', {
                url: "/new", //both are in same template
                views: {
                    "contents": {templateUrl: "../public/templates/admin/new.jsp"}
                }
            })
            .state('verification', {
                url: "/verification", //both are in same template
                views: {
                    "contents": {templateUrl: "../public/templates/admin/verification.jsp"}
                }
            })
            .state('ping_report', {
                url: "/ping_report", //both are in same template
                views: {
                    "contents": {templateUrl: "../public/templates/admin/ping_report.jsp"}
                }
            })
            .state('totalusers', {
                url: "/totalusers", //both are in same template
                views: {
                    "contents": {templateUrl: "../public/templates/admin/totalusers.jsp"}
                }
            })
            .state('pendingatprovost', {
                url: "/pendingatprovost", //both are in same template
                views: {
                    "contents": {templateUrl: "../public/templates/admin/pendingatprovost.jsp"}
                }
            })
            .state('pendingatchaiperson', {
                url: "/pendingatchaiperson", //both are in same template
                views: {
                    "contents": {templateUrl: "../public/templates/admin/pendingatchaiperson.jsp"}
                }
            })
            .state('incomplete', {
                url: "/incomplete", //both are in same template
                views: {
                    "contents": {templateUrl: "../public/templates/admin/incomplete.jsp"}
                }
            })
            .state('all_verified', {
                url: "/all_verified", //both are in same template
                views: {
                    "contents": {templateUrl: "../public/templates/admin/all_verified.jsp"}
                }
            })
            .state('wifi_request', {
                url: "/wifi_request", //both are in same template
                views: {
                    "contents": {templateUrl: "../public/templates/admin/wifi_request.jsp"}
                }
            })
            .state('gcl_request', {
                url: "/gcl_request", //both are in same template
                views: {
                    "contents": {templateUrl: "../public/templates/admin/gcl_request.jsp"}
                }
            })
            .state('research_request', {
                url: "/research_request", //both are in same template
                views: {
                    "contents": {templateUrl: "../public/templates/admin/research_request.jsp"}
                }
            })
            .state('email_request', {
                url: "/email_request", //both are in same template
                views: {
                    "contents": {templateUrl: "../public/templates/admin/email_request.jsp"}
                }
            })
            .state('principal', {
                url: "/principal", //both are in same template
                views: {
                    "contents": {templateUrl: "../public/templates/admin/principal.jsp"}
                }
            })
            .state('dean', {
                url: "/dean", //both are in same template
                views: {
                    "contents": {templateUrl: "../public/templates/admin/dean.jsp"}
                }
            })
            .state('chairperson', {
                url: "/chairperson",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/chairperson.jsp"}
                }
            })
            .state('director', {
                url: "/director",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/director.jsp"}
                }
            })
            .state('provost', {
                url: "/provost",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/provost.jsp"}
                }
            })
            .state('coordinator', {
                url: "/coordinator",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/coordinator.jsp"}
                }
            })
            .state('pro', {
                url: "/pro",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/pro.jsp"}
                }
            })
            .state('executive', {
                url: "/executive",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/executive.jsp"}
                }
            })
            .state('create_wifi', {
                url: "/create_wifi",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/create_wifi.jsp"}
                }
            })
            .state('process_wifi', {
                url: "/process_wifi",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/process_wifi.jsp"}
                }
            })
            .state('newemployee', {
                url: "/newemployee",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/newemployee.jsp"}
                }
            })
            .state('academic', {
                url: "/academic",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/academic.jsp"}
                }
            })
            .state('nonacademic', {
                url: "/nonacademic",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/nonacademic.jsp"}
                }
            })
            .state('reports', {
                url: "/reports",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/reports.jsp"}
                }
            })
            .state('budgethead', {
                url: "/budgethead",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/budgethead.jsp"}
                }
            })
            .state('vendor', {
                url: "/vendor",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/vendor.jsp"}
                }
            })
            .state('item', {
                url: "/item",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/item.jsp"}
                }
            })
            .state('dlocation', {
                url: "/dlocation",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/dlocation.jsp"}
                }
            })
            .state('search', {
                url: "/search",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/search.jsp"}
                }
            })
            .state('add_scholar', {
                url: "/add_scholar",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/add_scholar_sup.jsp"}
                }
            })
            .state('view_scholar', {
                url: "/view_scholar",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/view_scholar.jsp"}
                }
            })
            .state('process_csv', {
                url: "/process_csv",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/process_csv.jsp"}
                }
            })
            .state('published', {
                url: "/published",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/published.jsp"}
                }
            })
            .state('pointmode', {
                url: "/pointmode",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/pointmode.jsp"}
                }
            })
            .state('periodmode', {
                url: "/periodmode",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/periodmode.jsp"}
                }
            })
            .state('searchemp', {
                url: "/searchemp",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/searchemp.jsp"}
                }
            })
            .state('addemp', {
                url: "/addemp",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/addemp.jsp"}
                }
            })
            .state('pendingrequest', {
                url: "/pendingrequest",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/pendingrequest.jsp"}
                }
            })
            .state('process_email', {
                url: "/process_email",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/process_email.jsp"}
                }
            })
            .state('smartsms', {
                url: "/smartsms",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/smartsms.jsp"}
                }
            })
            .state('emailcreated', {
                url: "/emailcreated",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/emailcreated.jsp"}
                }
            })
            .state('smartemail', {
                url: "/smartemail",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/smartemail.jsp"}
                }
            })
            .state('secaccounts', {
                url: "/secaccounts",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/secaccounts.jsp"}
                }
            });
});
app.directive('fileModel', ['$parse', function ($parse) {
        return {
            restrict: 'A',
            link: function (scope, element, attrs) {
                var model = $parse(attrs.fileModel);
                var modelSetter = model.assign;
                element.bind('change', function () {
                    scope.$apply(function () {
                        modelSetter(scope, element[0].files[0]);
                    });
                });
            }
        };
    }]);
app.controller('UserCtrl', function ($scope, $http, Departments, Halls, Faculties) {
    $scope.prefixes = ['Mr', 'Miss', 'Prof', 'Dr', 'Mrs'];
    $scope.designations = ['Chairman', 'Provost', 'Dean', 'Director', 'Principal', 'Coordinator', 'Executive', 'PRO'];
    $scope.label = "";
    $scope.genders = ["Male", "Female"];
    $scope.userInfo = {};
    $scope.account = {};
    Departments.get().then(function (data) {
        $scope.departments = data;
    });
    Halls.get().then(function (data) {
        $scope.halls = data;
    });
    Faculties.get().then(function (data) {
        $scope.faculties = data;
    });
    $scope.getLabel = function () {
        var pid = "", mobile = "", tel = "", ext = "";
        if ($scope.userInfo.pid == null) {
            pid = "NA";
        } else {
            pid = $scope.userInfo.pid;
        }
        if ($scope.userInfo.mobile == null) {
            mobile = "NA";
        } else {
            mobile = $scope.userInfo.mobile;
        }
        if ($scope.userInfo.tel == null) {
            tel = "NA";
        } else {
            tel = $scope.userInfo.tel;
        }
        if ($scope.userInfo.ext == null) {
            ext = "NA";
        } else {
            ext = $scope.userInfo.ext;
        }
        if ($scope.userInfo.desig === 'Chairman') {
            $scope.account = {
                "prefix": $scope.userInfo.prefix,
                "fullName": $scope.userInfo.fullName,
                "username": $scope.userInfo.username,
                "email": $scope.userInfo.email,
                "gender": $scope.userInfo.gender,
                "pid": pid,
                "mobile": mobile,
                "tel": tel,
                "ext": ext,
                "desig": $scope.userInfo.desig,
                "label": $scope.userInfo.desig + " " + $scope.userInfo.dep.name
            };
        } else if ($scope.userInfo.desig === 'Director') {
            $scope.account = {
                "prefix": $scope.userInfo.prefix,
                "fullName": $scope.userInfo.fullName,
                "username": $scope.userInfo.username,
                "email": $scope.userInfo.email,
                "gender": $scope.userInfo.gender,
                "pid": pid,
                "mobile": mobile,
                "tel": tel,
                "ext": ext,
                "desig": $scope.userInfo.desig,
                "label": $scope.userInfo.desig + " " + $scope.userInfo.dep.name
            };
        } else if ($scope.userInfo.desig === 'Principal') {
            $scope.account = {
                "prefix": $scope.userInfo.prefix,
                "fullName": $scope.userInfo.fullName,
                "username": $scope.userInfo.username,
                "email": $scope.userInfo.email,
                "gender": $scope.userInfo.gender,
                "pid": pid,
                "mobile": mobile,
                "tel": tel,
                "ext": ext,
                "desig": $scope.userInfo.desig,
                "label": $scope.userInfo.desig + " " + $scope.userInfo.dep.name
            };
        } else if ($scope.userInfo.desig === 'Provost') {
            $scope.account = {
                "prefix": $scope.userInfo.prefix,
                "fullName": $scope.userInfo.fullName,
                "username": $scope.userInfo.username,
                "email": $scope.userInfo.email,
                "gender": $scope.userInfo.gender,
                "pid": pid,
                "mobile": mobile,
                "tel": tel,
                "ext": ext,
                "desig": $scope.userInfo.desig,
                "label": $scope.userInfo.desig + " " + $scope.userInfo.hall.name
            };
        } else if ($scope.userInfo.desig === 'Dean') {
            $scope.account = {
                "prefix": $scope.userInfo.prefix,
                "fullName": $scope.userInfo.fullName,
                "username": $scope.userInfo.username,
                "email": $scope.userInfo.email,
                "gender": $scope.userInfo.gender,
                "pid": pid,
                "mobile": mobile,
                "tel": tel,
                "ext": ext,
                "desig": $scope.userInfo.desig,
                "label": $scope.userInfo.desig + " " + $scope.userInfo.faculty.faculty
            };
        } else if ($scope.userInfo.desig === 'Executive') {
            $scope.account = {
                "prefix": $scope.userInfo.prefix,
                "fullName": $scope.userInfo.fullName,
                "username": $scope.userInfo.username,
                "email": $scope.userInfo.email,
                "gender": $scope.userInfo.gender,
                "pid": pid,
                "mobile": mobile,
                "tel": tel,
                "ext": ext,
                "desig": $scope.userInfo.desig,
                "label": $scope.userInfo.desig + " " + $scope.userInfo.dep.name
            };
        } else if ($scope.userInfo.desig === 'Coordinator') {
            $scope.account = {
                "prefix": $scope.userInfo.prefix,
                "fullName": $scope.userInfo.fullName,
                "username": $scope.userInfo.username,
                "email": $scope.userInfo.email,
                "gender": $scope.userInfo.gender,
                "pid": pid,
                "mobile": mobile,
                "tel": tel,
                "ext": ext,
                "desig": $scope.userInfo.desig,
                "label": $scope.userInfo.desig + " " + $scope.userInfo.dep.name
            };
        } else if ($scope.userInfo.desig === 'PRO') {
            $scope.account = {
                "prefix": $scope.userInfo.prefix,
                "fullName": $scope.userInfo.fullName,
                "username": $scope.userInfo.username,
                "email": $scope.userInfo.email,
                "gender": $scope.userInfo.gender,
                "pid": pid,
                "mobile": mobile,
                "tel": tel,
                "ext": ext,
                "desig": $scope.userInfo.desig,
                "label": $scope.userInfo.desig + " " + $scope.userInfo.dep.name
            };
        }
        $scope.label = $scope.account.label;
    };
    $scope.createAccount = function () {
        $scope.getLabel();
        $http({
            method: 'POST',
            url: 'createaccount',
            data: $scope.account,
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).success(function (data, status, headers, config) {
            $scope.res = data;
            alert($scope.res.message);
        }).error(function (data, status, headers, config) {
            alert("error");
        });
    };
    $http({
        method: 'GET',
        url: 'adminnotify'
    }).success(function (data, status, headers, config) {
        $scope.user = data;
    }).error(function (data, status, headers, config) {

    });
});
app.controller('VerificationCtrl', function ($scope, $http, Departments, Halls) {
    $scope.modes = ['Department', 'Hall'];
    $scope.dataTable = false;
    $scope.searchInfo = {};
    $http({
        method: 'GET',
        url: 'adminnotify'
    }).success(function (data, status, headers, config) {
        $scope.user = data;
    }).error(function (data, status, headers, config) {

    });
    Departments.get().then(function (data) {
        $scope.departments = data;
    });
    Halls.get().then(function (data) {
        $scope.halls = data;
    });
    $scope.go = function () {
        var where = {};
        if ($scope.searchInfo.mode === 'Department') {
            $scope.where = {
                "mode": "Chairman",
                "dep": $scope.searchInfo.dep.name
            };
        } else if ($scope.searchInfo.mode === 'Hall') {
            $scope.where = {
                "mode": "Provost",
                "hall": $scope.searchInfo.hall.name
            };
        }
        $http({
            method: 'POST',
            url: 'find_unverified',
            data: $scope.where,
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).success(function (data, status, headers, config) {
            $scope.dataTable = true;
            $scope.unverified = data;
        }).error(function (data, status, headers, config) {
            alert("error");
        });
    };
    $scope.provost = {};
    $scope.chairman = {};
    $scope.provostAll = function () {
        $scope.prvst = {"value": $scope.provost.value};
        angular.forEach($scope.unverified, function (doc) {
            //if (!doc.profile.verification[0].provost){
            doc.profile.verification[0].provost = $scope.prvst.value;
            //}
        });
    };
    $scope.chairmanAll = function () {
        $scope.chmn = {"value": $scope.chairman.value};
        angular.forEach($scope.unverified, function (doc) {
            //if (!doc.profile.verification[0].chairman){
            doc.profile.verification[1].chairman = $scope.chmn.value;
            //}
        });
    };
    $scope.verify = function () {
        var ctr = 0;
        angular.forEach($scope.unverified, function (doc) {
            if ((doc.profile.verification[0].provost || doc.profile.verification[1].chairman)) {
                ctr++;
            }
        });
        if (ctr === 0) {
            alert("Please mark atleast one to verify");
        } else {
            if (confirm("Are you sure want to verify marked student(s)")) {
                var selected = [];
                angular.forEach($scope.unverified, function (doc) {
                    selected.push({
                        "_id": doc._id.$oid,
                        "provost": doc.profile.verification[0].provost,
                        "chairman": doc.profile.verification[1].chairman,
                        "verifiedBy": $scope.user.label
                    });
                });
                $http({
                    method: 'POST',
                    url: 'bulk_verify',
                    data: selected,
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).success(function (data, status, headers, config) {
                    alert(data.message);
                }).error(function (data, status, headers, config) {
                    alert("error");
                });
            }
        }
    };
});
app.controller('UsersStatus', function ($scope, $http, Faculties, Halls, $interval) {
    Faculties.get().then(function (data) {
        $scope.faculties = data;
    });
    Halls.get().then(function (res) {
        $scope.halls = res.data;
        $scope.halls.push({"name": "All"});
    });
    $scope.hall = {};
    $scope.fingPendingAtProvost = function () {
        $http({
            method: 'GET',
            url: 'provostpending?hall=' + $scope.hall.name
        }).success(function (data, status, headers, config) {
            if (data.success) {
                $scope.provostpending = data.provostpending;
                $scope.getPendingStudents = [];
                $scope.getHeader = function () {
                    return [
                        "EnrollmentNo",
                        "StudentName",
                        "Gender",
                        "Dob",
                        "FatherName",
                        "MobileNo",
                        "Email",
                        "FacultyNo",
                        "Department",
                        "CourseName",
                        "HallName",
                        "Hostel",
                        "Room #"
                    ];
                };
                angular.forEach($scope.provostpending, function (student) {
                    $scope.getPendingStudents.push({
                        "EnrollmentNo": student.enroll,
                        "StudentName": student.fullName,
                        "Gender": student.profile.gender,
                        "Dob": student.profile.dob,
                        "FatherName": student.profile.fatherName,
                        "MobileNo": student.mobile,
                        "Email": student.email,
                        "FacultyNo": student.profile.facultyNumber,
                        "Department": student.profile.department,
                        "CourseName": student.profile.courseName,
                        "HallName": student.profile.hall,
                        "Hostel": student.profile.hostel,
                        "Room #": student.profile.room
                    });
                });
            } else {
                alert(data.message);
            }
        }).error(function (data, status, headers, config) {
            alert(data);
        });
    };
    $scope.print = function (divName) {
        var printContents = document.getElementById(divName).innerHTML;
        var popupWin = window.open('', '_blank');
        popupWin.document.open();
        popupWin.document.write('<html><head><link href="../public/css/print.css" rel="stylesheet" type="text/css"/></head><body onload="window.print()">' + printContents + '</body></html>');
        popupWin.document.close();
    };
    $scope.loading = true;
    $scope.loaded = false;
    $http({
        method: 'GET',
        url: 'totalusers'
    }).success(function (data, status, headers, config) {
        if (data.success) {
            $scope.allusers = data.totalusers;
            $scope.loading = false;
            $scope.loaded = true;
            $scope.getTotal = [];
            $scope.getHeader = function () {
                return [
                    "EnrollmentNo",
                    "StudentName",
                    "Gender",
                    "Dob",
                    "FatherName",
                    "MobileNo",
                    "Email",
                    "FacultyNo",
                    "Department",
                    "Course Type",
                    "Course Name",
                    "Semester/Year",
                    "Hall",
                    "Hostel",
                    "Room No",
                    "Profile Completed",
                    "City",
                    "State",
                    "Pin Code",
                    "Country"
                ];
            };
            angular.forEach($scope.allusers, function (student) {
                $scope.getTotal.push({
                    "EnrollmentNo": student.enroll,
                    "StudentName": student.fullName,
                    "Gender": student.profile.gender,
                    "Dob": student.profile.dob,
                    "FatherName": student.profile.fatherName,
                    "MobileNo": student.mobile,
                    "Email": student.email,
                    "FacultyNo": student.profile.facultyNumber,
                    "Department": student.profile.department,
                    "Course Type": student.profile.courseName,
                    "Course Name": student.profile.courseName,
                    "Semester/Year": student.profile.semesterYear,
                    "Hall": student.profile.hall,
                    "Hostel": student.profile.hostel,
                    "Room No": student.profile.room,
                    "Profile Completed": student.profile.isCompleted,
                    "City": student.profile.city,
                    "State": student.profile.state,
                    "Pin Code": student.profile.pincode,
                    "Country": student.profile.country
                });
            });
        } else {
            $scope.message = data.message;
        }
    }).error(function (data, status, headers, config) {
        alert(data);
    });
    $http({
        method: 'GET',
        url: 'allusers'
    }).success(function (data, status, headers, config) {
        if (data.success[0]) {
            $scope.totalusers = data.totalusers[0];
            $scope.incomplete = data.incomplete[0];
            $scope.pendingatchaiperson = data.pendingatchaiperson[0];
            $scope.pendingatprovost = data.pendingatprovost[0];
            $scope.total_pending = data.total_pending[0];
            $scope.all_verified = data.all_verified[0];
            $scope.wifi_request = data.wifi_request[0];
            $scope.not_applied = data.not_applied[0];
            $scope.wifi_created = data.wifi_created[0];
            $scope.gcl_request = data.gcl_request[0];
            $scope.research_request = data.research_request[0];
            $scope.email_request = data.email_request[0];
            $scope.emailcreated = data.email_created[0];
            $scope.cont = data.cont[0];
        } else {
            alert(data.message[0]);
        }
    }).error(function (data, status, headers, config) {
        alert(data.message[0]);
    });
    $http({
        method: 'GET',
        url: 'wifi_request'
    }).success(function (data, status, headers, config) {
        if (data.success[0]) {
            $scope.wifi_new = data.wifi_request[0];
            $scope.getWifirequest = [];
            $scope.getWiFiHeader = function () {
                return [
                    "enrollmentNo", "StudentName", "FirstName", "LastName",
                    "Gender", "dob", "FatherName", "MobileNo", "Email", "FacultyNo",
                    "FacultyName", "Department", "CourseName", "HallName",
                    "CourseLevel", "MAC Address", "Applied On"
                ];
            };
            for (var i = 0; i < $scope.wifi_new.length; i++) {
                for (var v = 0; v < $scope.wifi_new[i].services.length; v++) {

                    var name = $scope.wifi_new[i].fullName.split(' ');
                    var first = name[0];
                    var last = "";
                    for (var s = 1; s < name.length; s++) {
                        last += name[s] + " ";
                    }
                    last = last.trim();
                    var facultyName = "";
                    angular.forEach($scope.faculties.data, function (faculty) {
                        angular.forEach(faculty.departments, function (dep) {
                            if (dep === $scope.wifi_new[i].profile.department) {
                                facultyName = faculty.faculty;
                            }
                        });
                    });
                    var db = $scope.wifi_new[i].profile.dob.split(" ");
                    if ($scope.wifi_new[i].services[v].service === "WiFi") {
                        var date = $scope.wifi_new[i].services[v].appliedOn.split(" ");
                        $scope.getWifirequest.push({
                            "enrollmentNo": $scope.wifi_new[i].enroll,
                            "StudentName": $scope.wifi_new[i].fullName,
                            "FirstName": first,
                            "LastName": last,
                            "Gender": $scope.wifi_new[i].profile.gender,
                            "dob": db[1] + " " + db[2] + " " + db[5],
                            "FatherName": $scope.wifi_new[i].profile.fatherName,
                            "MobileNo": $scope.wifi_new[i].mobile,
                            "Email": $scope.wifi_new[i].email,
                            "FacultyNo": $scope.wifi_new[i].profile.facultyNumber,
                            "FacultyName": facultyName,
                            "Department": $scope.wifi_new[i].profile.department,
                            "CourseName": $scope.wifi_new[i].profile.courseName,
                            "HallName": $scope.wifi_new[i].profile.hall,
                            "CourseLevel": $scope.wifi_new[i].profile.courseType,
                            "MAC Address": $scope.wifi_new[i].services[v].mac,
                            "Applied On": date[1] + " " + date[2] + " " + date[5]
                        });
                    }
                }
            }
        } else {
            alert(data.message[0]);
        }
    }).error(function (data, status, headers, config) {
        alert("error");
    });
    $http({
        method: 'GET',
        url: 'email_request'
    }).success(function (data, status, headers, config) {
        if (data.success[0]) {
            $scope.email_new = data.email_request[0];
            $scope.getEmailrequest = [];
            $scope.getEmailHeader = function () {
                return [
                    "enrollmentNo", "StudentName", "FirstName", "LastName",
                    "Gender", "dob", "FatherName", "MobileNo", "Email", "FacultyNo",
                    "FacultyName", "Department", "CourseName", "HallName",
                    "CourseLevel", "Applied On"
                ];
            };
            for (var i = 0; i < $scope.email_new.length; i++) {
                for (var v = 0; v < $scope.email_new[i].services.length; v++) {

                    var name = $scope.email_new[i].fullName.split(' ');
                    var first = name[0];
                    var last = "";
                    for (var s = 1; s < name.length; s++) {
                        last += name[s] + " ";
                    }
                    last = last.trim();
                    var facultyName = "";
                    angular.forEach($scope.faculties.data, function (faculty) {
                        angular.forEach(faculty.departments, function (dep) {
                            if (dep === $scope.email_new[i].profile.department) {
                                facultyName = faculty.faculty;
                            }
                        });
                    });
                    var db = $scope.email_new[i].profile.dob.split(" ");
                    if ($scope.email_new[i].services[v].service === "Email") {

                        var date = $scope.email_new[i].services[v].appliedOn.split(" ");
                        $scope.getEmailrequest.push({
                            "enrollmentNo": $scope.email_new[i].enroll,
                            "StudentName": $scope.email_new[i].fullName,
                            "FirstName": first,
                            "LastName": last,
                            "Gender": $scope.email_new[i].profile.gender,
                            "dob": db[1] + " " + db[2] + " " + db[5],
                            "FatherName": $scope.email_new[i].profile.fatherName,
                            "MobileNo": $scope.email_new[i].mobile,
                            "Email": $scope.email_new[i].email,
                            "FacultyNo": $scope.email_new[i].profile.facultyNumber,
                            "FacultyName": facultyName,
                            "Department": $scope.email_new[i].profile.department,
                            "CourseName": $scope.email_new[i].profile.courseName,
                            "HallName": $scope.email_new[i].profile.hall,
                            "CourseLevel": $scope.email_new[i].profile.courseType,
                            "Applied On": date[1] + " " + date[2] + " " + date[5]
                        });
                    }
                }
            }
        } else {
            alert(data.message[0]);
        }
    }).error(function (data, status, headers, config) {
        alert("error");
    });
    $http({
        method: 'GET',
        url: 'emailcreated'
    }).success(function (data, status, headers, config) {
        $scope.email_created = data;
        $scope.getEmailCreated = [];
        $scope.getEmailHeader = function () {
            return [
                "EnrollmentNo", "Student Name",
                "Gender", "Father Name", "Email", "FacultyNo",
                "Department", "Hall", "Course Type", "Course Name"
            ];
        };
        angular.forEach($scope.email_created, function (item) {
            $scope.getEmailCreated.push({
                "enrollmentNo": item.enroll,
                "Student Name": item.fullName,
                "Gender": item.profile.gender,
                "Father Name": item.profile.fatherName,
                "Email": item.email,
                "FacultyNo": item.profile.facultyNumber,
                "Department": item.profile.department,
                "Hall": item.profile.hall,
                "Course Type": item.profile.courseType,
                "Course Name": item.profile.courseName
            });
        });
    }).error(function (data, status, headers, config) {
        alert(data);
    });
    $http({
        method: 'GET',
        url: 'gcl_request'
    }).success(function (data, status, headers, config) {
        if (data.success[0]) {
            $scope.gcl_new = data.gcl_request[0];
            $scope.getGCLrequest = [];
            $scope.getGCLHeader = function () {
                return [
                    "enrollmentNo", "StudentName", "FirstName", "LastName",
                    "Gender", "dob", "FatherName", "MobileNo", "Email", "FacultyNo",
                    "FacultyName", "Department", "CourseName", "HallName",
                    "CourseLevel", "Applied On"
                ];
            };
            for (var i = 0; i < $scope.gcl_new.length; i++) {
                for (var v = 0; v < $scope.gcl_new[i].services.length; v++) {

                    var name = $scope.gcl_new[i].fullName.split(' ');
                    var first = name[0];
                    var last = "";
                    for (var s = 1; s < name.length; s++) {
                        last += name[s] + " ";
                    }
                    last = last.trim();
                    var facultyName = "";
                    angular.forEach($scope.faculties.data, function (faculty) {
                        angular.forEach(faculty.departments, function (dep) {
                            if (dep === $scope.gcl_new[i].profile.department) {
                                facultyName = faculty.faculty;
                            }
                        });
                    });
                    var db = $scope.gcl_new[i].profile.dob.split(" ");
                    if ($scope.gcl_new[i].services[v].service === "GCL Lab") {

                        var date = $scope.gcl_new[i].services[v].appliedOn.split(" ");
                        $scope.getGCLrequest.push({
                            "enrollmentNo": $scope.gcl_new[i].enroll,
                            "StudentName": $scope.gcl_new[i].fullName,
                            "FirstName": first,
                            "LastName": last,
                            "Gender": $scope.gcl_new[i].profile.gender,
                            "dob": db[1] + " " + db[2] + " " + db[5],
                            "FatherName": $scope.gcl_new[i].profile.fatherName,
                            "MobileNo": $scope.gcl_new[i].mobile,
                            "Email": $scope.gcl_new[i].email,
                            "FacultyNo": $scope.gcl_new[i].profile.facultyNumber,
                            "FacultyName": facultyName,
                            "Department": $scope.gcl_new[i].profile.department,
                            "CourseName": $scope.gcl_new[i].profile.courseName,
                            "HallName": $scope.gcl_new[i].profile.hall,
                            "CourseLevel": $scope.gcl_new[i].profile.courseType,
                            "Applied On": date[1] + " " + date[2] + " " + date[5]
                        });
                    }
                }
            }
        } else {
            alert(data.message[0]);
        }
    }).error(function (data, status, headers, config) {
        alert("error");
    });
    $http({
        method: 'GET',
        url: 'research_request'
    }).success(function (data, status, headers, config) {
        if (data.success[0]) {
            $scope.research_new = data.research_request[0];
            $scope.getResearchrequest = [];
            $scope.getResearchHeader = function () {
                return [
                    "enrollmentNo", "StudentName", "FirstName", "LastName",
                    "Gender", "dob", "FatherName", "MobileNo", "Email", "FacultyNo",
                    "FacultyName", "Department", "CourseName", "HallName",
                    "CourseLevel", "Applied On"
                ];
            };
            for (var i = 0; i < $scope.research_new.length; i++) {
                for (var v = 0; v < $scope.research_new[i].services.length; v++) {

                    var name = $scope.research_new[i].fullName.split(' ');
                    var first = name[0];
                    var last = "";
                    for (var s = 1; s < name.length; s++) {
                        last += name[s] + " ";
                    }
                    last = last.trim();
                    var facultyName = "";
                    angular.forEach($scope.faculties.data, function (faculty) {
                        angular.forEach(faculty.departments, function (dep) {
                            if (dep === $scope.research_new[i].profile.department) {
                                facultyName = faculty.faculty;
                            }
                        });
                    });
                    var db = $scope.research_new[i].profile.dob.split(" ");
                    if ($scope.research_new[i].services[v].service === "Research Lab") {

                        var date = $scope.research_new[i].services[v].appliedOn.split(" ");
                        $scope.getResearchrequest.push({
                            "enrollmentNo": $scope.research_new[i].enroll,
                            "StudentName": $scope.research_new[i].fullName,
                            "FirstName": first,
                            "LastName": last,
                            "Gender": $scope.research_new[i].profile.gender,
                            "dob": db[1] + " " + db[2] + " " + db[5],
                            "FatherName": $scope.research_new[i].profile.fatherName,
                            "MobileNo": $scope.research_new[i].mobile,
                            "Email": $scope.research_new[i].email,
                            "FacultyNo": $scope.research_new[i].profile.facultyNumber,
                            "FacultyName": facultyName,
                            "Department": $scope.research_new[i].profile.department,
                            "CourseName": $scope.research_new[i].profile.courseName,
                            "HallName": $scope.research_new[i].profile.hall,
                            "CourseLevel": $scope.research_new[i].profile.courseType,
                            "Applied On": date[1] + " " + date[2] + " " + date[5]
                        });
                    }
                }
            }
        } else {
            alert(data.message[0]);
        }
    }).error(function (data, status, headers, config) {
        alert("error");
    });
    $scope.notify = [];
    $scope.select_all = function () {
        $scope.notify = {"selected": $scope.chairman.value};
        angular.forEach($scope.wifi_new, function (doc) {
            doc.profile.verification[1].chairman = $scope.chmn.value;
        });
    };
    $scope.callAtInterval = function () {
        $http({
            method: 'GET',
            url: 'fetchdbcons'
        }).success(function (data, status, headers, config) {
            $scope.connections = data.count;
        }).error(function (data, status, headers, config) {

        });
    };
    $interval(function () {
        $scope.callAtInterval();
    }, 1000);
});
app.controller('AdminAccountCtrl', function ($scope, $http) {
    $http({
        method: 'GET',
        url: 'alladmins'
    }).success(function (data, status, headers, config) {
        if (data.success) {
            $scope.deans = data.dean;
            $scope.chairpersons = data.chairperson;
            $scope.principals = data.principal;
            $scope.directors = data.director;
            $scope.provosts = data.provost;
            $scope.coordinators = data.coordinator;
            $scope.pros = data.pro;
            $scope.executives = data.executive;
            $scope.getDeans = [],
                    $scope.getChairpersons = [],
                    $scope.getPrincipals = [],
                    $scope.getDirectors = [],
                    $scope.getProvosts = [],
                    $scope.getCoordinators = [],
                    $scope.getPROs = [],
                    $scope.getExecutives = [];
            $scope.getHeader = function () {
                return ["Name", "Username", "Email", "Gender", "Role", "Label", "Last Logon"];
            };
            angular.forEach($scope.deans, function (item) {
                $scope.getDeans.push({
                    "fullName": item.fullName,
                    "username": item.username,
                    "email": item.email,
                    "gender": item.gender,
                    "role": item.desig,
                    "label": item.label,
                    "lastLogon": item.lastLogon
                });
            });
            angular.forEach($scope.chairpersons, function (item) {
                $scope.getChairpersons.push({
                    "fullName": item.fullName,
                    "username": item.username,
                    "email": item.email,
                    "gender": item.gender,
                    "role": item.desig,
                    "label": item.label,
                    "lastLogon": item.lastLogon
                });
            });
            angular.forEach($scope.principals, function (item) {
                $scope.getPrincipals.push({
                    "fullName": item.fullName,
                    "username": item.username,
                    "email": item.email,
                    "gender": item.gender,
                    "role": item.desig,
                    "label": item.label,
                    "lastLogon": item.lastLogon
                });
            });
            angular.forEach($scope.directors, function (item) {
                $scope.getDirectors.push({
                    "fullName": item.fullName,
                    "username": item.username,
                    "email": item.email,
                    "gender": item.gender,
                    "role": item.desig,
                    "label": item.label,
                    "lastLogon": item.lastLogon
                });
            });
            angular.forEach($scope.provosts, function (item) {
                $scope.getProvosts.push({
                    "fullName": item.fullName,
                    "username": item.username,
                    "email": item.email,
                    "gender": item.gender,
                    "role": item.desig,
                    "label": item.label,
                    "lastLogon": item.lastLogon
                });
            });
            angular.forEach($scope.coordinators, function (item) {
                $scope.getCoordinators.push({
                    "fullName": item.fullName,
                    "username": item.username,
                    "email": item.email,
                    "gender": item.gender,
                    "role": item.desig,
                    "label": item.label,
                    "lastLogon": item.lastLogon
                });
            });
            angular.forEach($scope.pros, function (item) {
                $scope.getPROs.push({
                    "fullName": item.fullName,
                    "username": item.username,
                    "email": item.email,
                    "gender": item.gender,
                    "role": item.desig,
                    "label": item.label,
                    "lastLogon": item.lastLogon
                });
            });
            angular.forEach($scope.executives, function (item) {
                $scope.getExecutives.push({
                    "fullName": item.fullName,
                    "username": item.username,
                    "email": item.email,
                    "gender": item.gender,
                    "role": item.desig,
                    "label": item.label,
                    "lastLogon": item.lastLogon
                });
            });
        } else {
            alert(data.message);
        }
    }).error(function (data, status, headers, config) {
        alert(data.message);
    });
});
app.controller('CreateAccountsCtrl', function ($scope, $http) {
    $scope.uploaded = false;
    $scope.created = false;
    $scope.uploadCSV = function () {
        var file = $scope.upload;
//        var fsize = file.size;        
//        var ftype = file.type;
        var name = file.name;
        var pos = name.lastIndexOf(".");
        var ext = name.substring(pos);
        //var myArray = ['image/png', 'image/gif', 'image/jpeg', 'image/pjpeg'];
        if (ext !== ".csv") {
            alert("Unsupported file! Kindly select a CSV file (.csv)");
        } else {
            var uploadUrl = "/admin/upload_wifi_csv";
            var fd = new FormData();
            fd.append('file', file);
            $http.post(uploadUrl, fd, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined}
            })
                    .success(function (data, status, headers, config) {
                        if (data.success[0]) {
                            alert(data.message[0]);
                            $scope.uploaded = true;
                            $scope.created = true;
                        } else {
                            alert(data.message[0]);
                        }
                    })
                    .error(function () {
                    });
        }
    };
    $scope.createWiFi = function () {
        $http({
            method: 'POST',
            url: 'create_wifi'
        }).success(function (data, status, headers, config) {
            if (data.success[0]) {
                alert(data.message[0]);
            } else {
                alert(data.message[0]);
            }
        }).error(function (data, status, headers, config) {

        });
    };
});
app.controller('ProcessWiFiCtrl', function ($scope, $http, Faculties) {
    Faculties.get().then(function (data) {
        $scope.faculties = data;
    });
    $scope.refresh = function () {
        $http({
            method: 'GET',
            url: 'wifi_request'
        }).success(function (data, status, headers, config) {
            if (data.success[0]) {
                $scope.wifi_new = data.wifi_request[0];
                $scope.getWifirequest = [];
                $scope.getWiFiHeader = function () {
                    return [
                        "EnrollmentNo", "StudentName", "FirstName", "LastName",
                        "Gender", "dob", "FatherName", "MobileNo", "Email", "FacultyNo",
                        "FacultyName", "Department", "CourseName", "HallName",
                        "CourseLevel", "MAC Address", "Applied On"
                    ];
                };
                for (var i = 0; i < $scope.wifi_new.length; i++) {
                    for (var v = 0; v < $scope.wifi_new[i].services.length; v++) {

                        var name = $scope.wifi_new[i].fullName.split(' ');
                        var first = name[0];
                        var last = "";
                        for (var s = 1; s < name.length; s++) {
                            last += name[s] + " ";
                        }
                        last = last.trim();
                        var facultyName = "";
                        angular.forEach($scope.faculties.data, function (faculty) {
                            angular.forEach(faculty.departments, function (dep) {
                                if (dep === $scope.wifi_new[i].profile.department) {
                                    facultyName = faculty.faculty;
                                }
                            });
                        });
                        var db = $scope.wifi_new[i].profile.dob.split(" ");
                        if ($scope.wifi_new[i].services[v].service === "WiFi") {
                            var date = $scope.wifi_new[i].services[v].appliedOn.split(" ");
                            $scope.getWifirequest.push({
                                "enrollmentNo": $scope.wifi_new[i].enroll,
                                "StudentName": $scope.wifi_new[i].fullName,
                                "FirstName": first,
                                "LastName": last,
                                "Gender": $scope.wifi_new[i].profile.gender,
                                "dob": db[1] + " " + db[2] + " " + db[5],
                                "FatherName": $scope.wifi_new[i].profile.fatherName,
                                "MobileNo": $scope.wifi_new[i].mobile,
                                "Email": $scope.wifi_new[i].email,
                                "FacultyNo": $scope.wifi_new[i].profile.facultyNumber,
                                "FacultyName": facultyName,
                                "Department": $scope.wifi_new[i].profile.department,
                                "CourseName": $scope.wifi_new[i].profile.courseName,
                                "HallName": $scope.wifi_new[i].profile.hall,
                                "CourseLevel": $scope.wifi_new[i].profile.courseType,
                                "MAC Address": $scope.wifi_new[i].services[v].mac,
                                "Applied On": date[1] + " " + date[2] + " " + date[5]
                            });
                        }
                    }
                }
            } else {
                alert(data.message[0]);
            }
        }).error(function (data, status, headers, config) {
            alert("error");
        });
    };
    $scope.refresh();
    $scope.chairman = {};
    $scope.chairmanAll = function () {
        $scope.chmn = {"value": $scope.chairman.value};
        angular.forEach($scope.wifi_new, function (doc) {
            doc.services[0].notified = $scope.chmn.value;
        });
    };
    $scope.process_wifi = function () {
        var ctr = 0;
        angular.forEach($scope.wifi_new, function (doc) {
            if (doc.services[0].notified) {
                ctr++;
            }
        });
        if (ctr === 0) {
            alert("Please mark atleast one to Process");
        } else {
            if (confirm("Are you sure want to process marked student(s)")) {
                var selected = [];
                angular.forEach($scope.wifi_new, function (doc) {
                    var facultyName = "";
                    angular.forEach($scope.faculties.data, function (faculty) {
                        angular.forEach(faculty.departments, function (dep) {
                            if (dep === doc.profile.department) {
                                facultyName = faculty.faculty;
                            }
                        });
                    });
                    if (doc.services[0].notified) {
                        if (doc.profile.hall === "N.R.S.C. Hall") {
                            selected.push({
                                "fullName": doc.fullName,
                                "enroll": doc.enroll,
                                "email": doc.email,
                                "mobile": doc.mobile,
                                "fatherName": doc.profile.fatherName,
                                "motherName": doc.profile.motherName,
                                "dob": doc.profile.dob,
                                "gender": doc.profile.gender,
                                "address": doc.profile.address,
                                "city": doc.profile.city,
                                "state": doc.profile.state,
                                "country": doc.profile.country,
                                "pincode": doc.profile.pincode,
                                "courseType": doc.profile.courseType,
                                "courseName": doc.profile.courseName,
                                "semesterYear": doc.profile.semesterYear,
                                "facultyNumber": doc.profile.facultyNumber,
                                "facultyName": facultyName,
                                "department": doc.profile.department,
                                "hall": doc.profile.hall,
                                "nrscadd": doc.profile.nrscadd,
                                "mac": doc.services[0].mac
                            });
                        } else {
                            selected.push({
                                "fullName": doc.fullName,
                                "enroll": doc.enroll,
                                "email": doc.email,
                                "mobile": doc.mobile,
                                "fatherName": doc.profile.fatherName,
                                "motherName": doc.profile.motherName,
                                "dob": doc.profile.dob,
                                "gender": doc.profile.gender,
                                "address": doc.profile.address,
                                "city": doc.profile.city,
                                "state": doc.profile.state,
                                "country": doc.profile.country,
                                "pincode": doc.profile.pincode,
                                "courseType": doc.profile.courseType,
                                "courseName": doc.profile.courseName,
                                "semesterYear": doc.profile.semesterYear,
                                "facultyNumber": doc.profile.facultyNumber,
                                "facultyName": facultyName,
                                "department": doc.profile.department,
                                "hall": doc.profile.hall,
                                "hostel": doc.profile.hostel,
                                "room": doc.profile.room.toString(),
                                "mac": doc.services[0].mac
                            });
                        }
                    }
                });
                console.log(selected);
                $http({
                    method: 'POST',
                    url: 'process_wifi',
                    data: selected,
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).success(function (data, status, headers, config) {
                    if (data.success[0]) {
                        alert(data.message[0].toString());
                        $scope.refresh();
                    } else {
                        alert(data.message[0]);
                    }
                }).error(function (data, status, headers, config) {
                    alert(data);
                });
            }
        }
    };
});
app.controller('MyOfficeCtrl', function ($scope, $http) {
    $scope.prefixes = ['Mr', 'Miss', 'Prof', 'Dr', 'Mrs'];
    $scope.roles = ['Level1', 'Level2', 'Level3', 'Level4', 'Leveln'];
    $scope.designations = ['Desig 1', 'Desig 2', 'Desig 3', 'Desig 4', 'Desig n'];
    $scope.userInfo = {};
    console.log($scope.prefixes);
});
app.controller('AcademicDepCtrl', function ($scope, $http, Faculties) {
    $scope.dep = {};
    Faculties.get().then(function (data) {
        $scope.faculties = data;
    });
    $http({
        method: 'GET',
        url: 'fetch_academic_deps'
    }).success(function (data, status, headers, config) {
        if (data.success) {
            $scope.academic_deps = data.aca_deps;
        }
    }).error(function (data, status, headers, config) {
        alert("Error occurred.");
    });
    $scope.findAcademicStaff = function () {
        $http({
            method: 'GET',
            url: 'academic_staff?did=' + $scope.dep.did + '&dname=' + $scope.dep.dname
        }).success(function (data, status, headers, config) {
            if (data.success) {
                $scope.academic_staff = data.employees;
                $scope.getStaff = [];
                $scope.getHeader = function () {
                    return [
                        "Employee ID", "Pref", "Name", "Department", "Designation", "Date of Birth",
                        "Qualification", "Address", "Publication", "Research", "Aaa", "Email", "Mobile", "Telephone",
                        "Thrust", "Status", "Profile", "Orderlist", "Chair", "Cat"
                    ];
                };
                angular.forEach($scope.academic_staff, function (staff) {
                    $scope.getStaff.push({
                        "Employee ID": staff.pid,
                        "Pref": staff.pref,
                        "Name": staff.name,
                        "Department": staff.dname,
                        "Designation": staff.desig,
                        "Date of Birth": staff.dob,
                        "Qualification": staff.qualif,
                        "Address": staff.pha,
                        "Publication": staff.publication,
                        "Research": staff.research,
                        "Aaa": staff.oaa,
                        "Email": staff.email,
                        "Mobile": staff.mobile,
                        "Telephone": staff.telephone,
                        "Thrust": staff.thrust,
                        "Status": staff.status,
                        "Profile": staff.profile,
                        "Orderlist": staff.orderlist,
                        "Chair": staff.chair,
                        "Cat": staff.cat
                    });
                });
            }
        }).error(function (data, status, headers, config) {
            alert("Error occurred.");
        });
    };
    $scope.print = function (divName) {
        var printContents = document.getElementById(divName).innerHTML;
        var popupWin = window.open('', '_blank');
        popupWin.document.open();
        popupWin.document.write('<html><head><link href="../public/css/print.css" rel="stylesheet" type="text/css"/></head><body onload="window.print()">' + printContents + '</body></html>');
        popupWin.document.close();
    };
});
app.controller('NonAcademicDepCtrl', function ($scope, $http, Faculties) {
    $scope.dep = {};
    Faculties.get().then(function (data) {
        $scope.faculties = data;
    });
    $http({
        method: 'GET',
        url: 'fetch_nonacademic_deps'
    }).success(function (data, status, headers, config) {
        if (data.success) {
            $scope.nonacademic_deps = data.nonaca_deps;
            console.log($scope.nonacademic_deps);
        }
    }).error(function (data, status, headers, config) {
        alert("Error occurred.");
    });
    $scope.findNonAcademicStaff = function () {
        $http({
            method: 'GET',
            url: 'nonacademic_staff?did=' + $scope.dep.did + '&dname=' + $scope.dep.dname
        }).success(function (data, status, headers, config) {
            if (data.success) {
                $scope.nonacademic_staff = data.employees;
                $scope.getStaff = [];
                $scope.getHeader = function () {
                    return [
                        "Employee ID", "Pref", "Name", "Department", "Designation", "Date of Birth",
                        "Qualification", "Address", "Publication", "Research", "Aaa", "Email", "Mobile", "Telephone",
                        "Thrust", "Status", "Profile", "Orderlist", "Chair", "Cat"
                    ];
                };
                angular.forEach($scope.nonacademic_staff, function (staff) {
                    $scope.getStaff.push({
                        "Employee ID": staff.pid,
                        "Pref": staff.pref,
                        "Name": staff.name,
                        "Department": staff.dname,
                        "Designation": staff.desig,
                        "Date of Birth": staff.dob,
                        "Qualification": staff.qualif,
                        "Address": staff.pha,
                        "Publication": staff.publication,
                        "Research": staff.research,
                        "Aaa": staff.oaa,
                        "Email": staff.email,
                        "Mobile": staff.mobile,
                        "Telephone": staff.telephone,
                        "Thrust": staff.thrust,
                        "Status": staff.status,
                        "Profile": staff.profile,
                        "Orderlist": staff.orderlist,
                        "Chair": staff.chair,
                        "Cat": staff.cat
                    });
                });
            }
        }).error(function (data, status, headers, config) {
            alert("Error occurred.");
        });
    };
    $scope.print = function (divName) {
        var printContents = document.getElementById(divName).innerHTML;
        var popupWin = window.open('', '_blank');
        popupWin.document.open();
        popupWin.document.write('<html><head><link href="../public/css/print.css" rel="stylesheet" type="text/css"/></head><body onload="window.print()">' + printContents + '</body></html>');
        popupWin.document.close();
    };
});
app.controller('ReportsCtrl', function ($scope, $http, $interval) {
    $http({
        method: 'GET',
        url: 'fetchdailyreport'
    }).success(function (data, status, headers, config) {
        var items = [];
        angular.forEach(data, function (item) {
            var date = new Date(item._id.date);
            var dt = date.toString().split(" ");
            items.push({
                "date": dt[1] + ' ' + dt[2] + ' ' + dt[3],
                "count": item.count
            });
        });
        Morris.Bar({
            element: 'fetchdailyreport_bar',
            data: items,
            xkey: 'date',
            ykeys: ['count'],
            labels: ['User(s)'],
            parseTime: false
        });
    }).error(function (data, status, headers, config) {
        alert("Error occurred.");
    });
    $http({
        method: 'GET',
        url: 'fetchdailyreport'
    }).success(function (data, status, headers, config) {
        var items = [];
        angular.forEach(data, function (item) {
            var date = new Date(item._id.date);
            var dt = date.toString().split(" ");
            items.push({
                "date": dt[1] + ' ' + dt[2] + ' ' + dt[3],
                "count": item.count
            });
        });
        Morris.Line({
            element: 'fetchdailyreport_line',
            data: items,
            xkey: 'date',
            ykeys: ['count'],
            labels: ['User(s)'],
            parseTime: false
        });
    }).error(function (data, status, headers, config) {
        alert("Error occurred.");
    });
    $http({
        method: 'GET',
        url: 'fetchmonthlyreport'
    }).success(function (data, status, headers, config) {
        var items = [];
        angular.forEach(data, function (item) {
            var month = new Date(item._id.month);
            var dt = month.toString().split(" ");
            items.push({
                "month": dt[1] + ' ' + dt[3],
                "count": item.count
            });
        });
        Morris.Bar({
            element: 'fetchmonthlyreport_bar',
            data: items,
            xkey: 'month',
            ykeys: ['count'],
            labels: ['User(s)'],
            parseTime: false
        });
    }).error(function (data, status, headers, config) {
        alert("Error occurred.");
    });
    $http({
        method: 'GET',
        url: 'fetchmonthlyreport'
    }).success(function (data, status, headers, config) {
        var items = [];
        angular.forEach(data, function (item) {
            var month = new Date(item._id.month);
            var dt = month.toString().split(" ");
            items.push({
                "month": dt[1] + ' ' + dt[3],
                "count": item.count
            });
        });
        Morris.Line({
            element: 'fetchmonthlyreport_line',
            data: items,
            xkey: 'month',
            ykeys: ['count'],
            labels: ['User(s)'],
            parseTime: false
        });
    }).error(function (data, status, headers, config) {
        alert("Error occurred.");
    });
    $http({
        method: 'GET',
        url: 'allusers'
    }).success(function (data, status, headers, config) {
        if (data.success[0]) {
            $scope.totalusers = data.totalusers[0];
            $scope.incomplete = data.incomplete[0];
            $scope.pendingatchaiperson = data.pendingatchaiperson[0];
            $scope.pendingatprovost = data.pendingatprovost[0];
            $scope.total_pending = data.total_pending[0];
            $scope.all_verified = data.all_verified[0];
            $scope.wifi_request = data.wifi_request[0];
            $scope.not_applied = data.not_applied[0];
            $scope.wifi_created = data.wifi_created[0];
            $scope.gcl_request = data.gcl_request[0];
            $scope.research_request = data.research_request[0];
            $scope.email_request = data.email_request[0];
        } else {
            alert(data.message[0]);
        }
        Morris.Donut({
            element: 'fetchoverall',
            data: [
                {label: "Incomplete", value: $scope.incomplete},
                {label: "Pending Verification", value: $scope.total_pending},
                {label: "Not Applied", value: $scope.not_applied},
                {label: "Applied", value: $scope.wifi_request},
                {label: "Accounts Created", value: $scope.wifi_created}
            ]
        });
    }).error(function (data, status, headers, config) {
        alert(data.message[0]);
    });
    $http({
        method: 'GET',
        url: 'pendinghallwise'
    }).success(function (data, status, headers, config) {
        var items = [];
        angular.forEach(data, function (item) {
            items.push({
                "hall": item._id.hall,
                "count": item.count
            });
        });
        Morris.Bar({
            element: 'pendinghallwise',
            data: items,
            xkey: 'hall',
            ykeys: ['count'],
            labels: ["Pending"],
            parseTime: false
        });
    }).error(function (data, status, headers, config) {
        alert("Error occurred.");
    });
    $http({
        method: 'GET',
        url: 'pendingdepwise'
    }).success(function (data, status, headers, config) {
        var items = [];
        angular.forEach(data, function (item) {
            items.push({
                "department": item._id.department,
                "count": item.count
            });
        });
        Morris.Bar({
            element: 'pendingdepwise',
            data: items,
            xkey: 'department',
            ykeys: ['count'],
            labels: ["Pending"],
            parseTime: false
        });
    }).error(function (data, status, headers, config) {
        alert("Error occurred.");
    });
});
app.controller('ResearchScholarCtrl', function ($scope, $http, $location) {
    $scope.idtypes = ["Aadhaar"];
//    $scope.legends = [
//        { "value": 0, "status": "New" },
//        { "value": 1, "status": "Pending" },
//        { "value": 2, "status": "Approved" },
//        { "value": 3, "status": "Rejected" },
//        { "value": 4, "status": "Published" }
//    ];
    $http({
        method: 'GET',
        url: 'populatesupervisors'
    }).success(function (data, status, headers, config) {
        if (data.success) {
            $scope.supervisors = data.supervisors;
            $scope.supervisors.push("External");
        }
    }).error(function (data, status, headers, config) {
        alert(data);
    });
    $http({
        method: 'GET',
        url: 'populatefaculties'
    }).success(function (data, status, headers, config) {
        if (data.success) {
            $scope.faculties = data.faculties;
        }
    }).error(function (data, status, headers, config) {
        alert(data);
    });
    $scope.populatedepartments = function () {
        $http({
            method: 'GET',
            url: 'populatedepartments?pname=' + $scope.faculty
        }).success(function (data, status, headers, config) {
            if (data.success) {
                $scope.departments = data.departments;
            }
        }).error(function (data, status, headers, config) {
            alert(data);
        });
    };
//    $scope.populatedepartments_a = function () {
//        var id = $("#faculty option:selected").val();        
//        var formattedid = id.replace("string:", "").trim();        
//        $http({
//            method: 'GET',
//            url: 'populatedepartments?parentid=' + formattedid
//        }).success(function (data, status, headers, config) {
//            if (data.success) {
//                $scope.departments = data.departments;
//            }
//        }).error(function (data, status, headers, config) {
//            alert(data);
//        });
//    };
    $scope.populatecosupervisor = function () {
        $http({
            method: 'GET',
            url: 'populatecosupervisor?dname=' + $scope.department
        }).success(function (data, status, headers, config) {
            if (data.success) {
                $scope.cosupervisors = data.cosupervisors;
            }
        }).error(function (data, status, headers, config) {
            alert(data);
        });
    };
//    $scope.populatecosupervisor_a = function () {
//        $http({
//            method: 'GET',
//            url: 'populatecosupervisor?dname=' + $scope.department
//        }).success(function (data, status, headers, config) {
//            if (data.success) {
//                $scope.cosupervisors = data.cosupervisors;
//            }
//        }).error(function (data, status, headers, config) {
//            alert(data);
//        });
//    };
    $http({
        method: 'GET',
        url: 'populatsecholars?at=chairman'
    }).success(function (data, status, headers, config) {
        $scope.scholars = data;
        $scope.getScholars = [];
        $scope.getHeader = function () {
            return [
                "Faculty",
                "Department",
                "Scholar Name",
                "Mode of Ph.D",
                "Registration No",
                "Registration Date",
                "Research Topic",
                "Likely date of Completion of Ph.D.",
                "Availing Fellowship",
                "Funding Agency of Fellowship",
                "Status",
                "Supervisor",
                "IDType",
                "IDNo"
            ];
        };
        angular.forEach($scope.scholars, function (scholar) {
            $scope.getScholars.push({
                "Faculty": scholar.faculty,
                "Department": scholar.department,
                "Scholar Name": scholar.name,
                "Mode of Ph.D": scholar.mode,
                "Registration No": scholar.regno,
                "Registration Date": new Date(scholar.dor.$date).toDateString(),
                "Research Topic": scholar.rtopic,
                "Likely date of Completion of Ph.D.": new Date(scholar.doc.$date).toDateString(),
                "Availing Fellowship": scholar.fellowship,
                "Funding Agency of Fellowship": scholar.fagency,
                "Status": scholar.phdstatus,
                "Supervisor": scholar.supervisor,
                "IDType": scholar.idtype,
                "IDNo": scholar.idno
            });
        });
    }).error(function (data, status, headers, config) {
        alert(data);
    });
    $scope.print = function (divName) {
        var printContents = document.getElementById(divName).innerHTML;
        var popupWin = window.open('', '_blank');
        popupWin.document.open();
        popupWin.document.write('<html><head><link href="../public/css/print.css" rel="stylesheet" type="text/css"/></head><body onload="window.print()">' + printContents + '</body></html>');
        popupWin.document.close();
    };
    var stringToDate = function (date) {
        var factors = date.split("-");
        return factors[2] + '-' + factors[1] + '-' + factors[0];
    };
    $scope.addRScholar = function () {
        var sname = $scope.name;
        var dts = stringToDate($scope.dor);
        var dte = stringToDate($scope.doc);
        var startDt = new Date(dts);
        var endDt = new Date(dte);
        var file = $scope.upload;
        var fsize = file.size;
        var ftype = file.type;
        var myArray = ['image/png', 'image/gif', 'image/jpeg', 'image/pjpeg'];
        if ($.trim(sname) === '') {
            alert("Only spaces not allowed in name");
        } else if (startDt.getTime() > endDt.getTime() || startDt.getTime() == endDt.getTime()) {
            alert("Invalid completion date");
        } else if (myArray.indexOf(ftype) === -1) {
            alert("Unsupported file! Kindly select an image file (png, gif, jpeg, pjpeg)");
        } else if (fsize > 2e+6) { //do something if file size more than 2 mb (2e+6)                        
            alert("Size of the uploading file must not exceed 2 MB");
        } else {
            if ($scope.cption === 'No') {
                var uploadUrl = "/admin/addrscholar?enroll=" + $scope.enroll + "&name=" + $scope.name +
                        "&regno=" + $scope.regno + "&dor=" + $scope.dor + "&doc=" + $scope.doc + "&supervisor=" + $scope.supervisor +
                        "&rtopic=" + $scope.rtopic + "&fellowship=" + $scope.fellowship +
                        "&fagency=" + $scope.fagency + "&mode=" + $scope.mode + "&status=" +
                        $scope.status + "&idtype=" + $scope.idtype + "&idno=" + $scope.idno + "&iscosupervisor=" + $scope.cption +
                        "&cosuptype=Not Applicable" + "&faculty=Not Applicable" + "&department=Not Applicable" +
                        "&cosupervisor=Not Applicable";
                var fd = new FormData();
                fd.append('file', file);
                $http.post(uploadUrl, fd, {
                    transformRequest: angular.identity,
                    headers: {'Content-Type': undefined}
                })
                        .success(function (data, status, headers, config) {
                            if (data.success) {
                                alert(data.message);
                                $location.path("/add_scholar");
                                location.reload();
                            } else {
                                alert(data.message);
                            }
                        })
                        .error(function (data) {
                            alert(data);
                        });
            } else if ($scope.cption === 'Yes' && $scope.ctype === 'Internal') {
                var uploadUrl = "/admin/addrscholar?enroll=" + $scope.enroll + "&name=" + $scope.name +
                        "&regno=" + $scope.regno + "&dor=" + $scope.dor + "&doc=" + $scope.doc + "&supervisor=" + $scope.supervisor +
                        "&rtopic=" + $scope.rtopic + "&fellowship=" + $scope.fellowship +
                        "&fagency=" + $scope.fagency + "&mode=" + $scope.mode + "&status=" +
                        $scope.status + "&idtype=" + $scope.idtype + "&idno=" + $scope.idno + "&iscosupervisor=" + $scope.cption +
                        "&cosuptype=" + $scope.ctype + "&faculty=" + $scope.faculty + "&department=" + $scope.department +
                        "&cosupervisor=" + $scope.cosupervisor;
                var fd = new FormData();
                fd.append('file', file);
                $http.post(uploadUrl, fd, {
                    transformRequest: angular.identity,
                    headers: {'Content-Type': undefined}
                })
                        .success(function (data, status, headers, config) {
                            if (data.success) {
                                alert(data.message);
                                $location.path("/add_scholar");
                                location.reload();
                            } else {
                                alert(data.message);
                            }
                        })
                        .error(function (data) {
                            alert(data);
                        });
            } else if ($scope.cption === 'Yes' && $scope.ctype === 'External') {
                var uploadUrl = "/admin/addrscholar?enroll=" + $scope.enroll + "&name=" + $scope.name +
                        "&regno=" + $scope.regno + "&dor=" + $scope.dor + "&doc=" + $scope.doc + "&supervisor=" + $scope.supervisor +
                        "&rtopic=" + $scope.rtopic + "&fellowship=" + $scope.fellowship +
                        "&fagency=" + $scope.fagency + "&mode=" + $scope.mode + "&status=" +
                        $scope.status + "&idtype=" + $scope.idtype + "&idno=" + $scope.idno + "&iscosupervisor=" + $scope.cption +
                        "&cosuptype=" + $scope.ctype + "&faculty=Not Applicable" + "&department=Not Applicable" +
                        "&cosupervisor=" + $scope.ecosup;
                var fd = new FormData();
                fd.append('file', file);
                $http.post(uploadUrl, fd, {
                    transformRequest: angular.identity,
                    headers: {'Content-Type': undefined}
                })
                        .success(function (data, status, headers, config) {
                            if (data.success) {
                                alert(data.message);
                                $location.path("/add_scholar");
                                location.reload();
                            } else {
                                alert(data.message);
                            }
                        })
                        .error(function (data) {
                            alert(data);
                        });
            }
        }
    };
    $scope.editScholar = function (id) {
        alert($scope.scholar.name);
//        var schname = $("#schname").val();
//        var enroll = $("#enroll").val();
//        var regno = $("#regno").val();
//        var dor = $("#dor").val();
//        var doc = $("#doc").val();
//        var rtopic = $("#rtopic").val();
//        var fagency = $("#fagency").val();
//        var supervisor = $("#supervisor").val().replace("string:", "").trim();
//        var iscosupervisor = $("#iscosupervisor").val().replace("string:", "").trim();
//        var cosuptype = $("#cosuptype").val().replace("string:", "").trim();
//        var cofaculty = $("#cofaculty").val().replace("string:", "").trim();
//        var codepartment = $("#codepartment").val().replace("string:", "").trim();
//        var cosupervisor = $("#cosupervisor").val().replace("string:", "").trim();
//        var mode = $("#mode").val().replace("string:", "").trim();
//        var fellowship = $("#fellowship").val().replace("string:", "").trim();
//        var phdstatus = $("#phdstatus").val().replace("string:", "").trim();
//        var idtype = $("#idtype").val().replace("string:", "").trim();
//        var idno = $("#idno").val();
        var startDt = new Date($scope.scholar.dor.$date).getTime();
        var endDt = new Date($scope.scholar.doc.$date).getTime();
        var file = $scope.upload;
        var fsize = file.size;
        var ftype = file.type;
        var myArray = ['image/png', 'image/gif', 'image/jpeg', 'image/pjpeg'];
        if (startDt > endDt || startDt == endDt) {
            alert("Invalid completion date");
        } else if (myArray.indexOf(ftype) === -1) {
            alert("Unsupported file! Kindly select an image file (png, gif, jpeg, pjpeg)");
        } else if (fsize > 2e+6) { //do something if file size more than 2 mb (2e+6)                        
            alert("Size of the uploading file must not exceed 2 MB");
        } else {
            if ($scope.scholar.iscosupervisor === 'No') {
                var uploadUrl = "/admin/editrscholar?enroll=" + $scope.scholar.enroll + "&name=" + $scope.scholar.name +
                        "&regno=" + $scope.scholar.regno + "&dor=" + $scope.scholar.dor.$date + "&doc=" + $scope.scholar.doc.$date + "&supervisor=" + $scope.scholar.supervisor +
                        "&rtopic=" + $scope.scholar.rtopic + "&fellowship=" + $scope.scholar.fellowship +
                        "&fagency=" + $scope.scholar.fagency + "&mode=" + $scope.scholar.mode + "&status=" +
                        $scope.scholar.phdstatus + "&idtype=" + $scope.scholar.idtype + "&idno=" + $scope.scholar.idno + "&iscosupervisor=" + $scope.scholar.iscosupervisor +
                        "&cosuptype=" + $scope.scholar.cosuptype + "&faculty=Not Applicable" + "&department=Not Applicable" +
                        "&cosupervisor=Not Applicable" + "&id=" + id;
                var fd = new FormData();
                fd.append('file', file);
                $http.post(uploadUrl, fd, {
                    transformRequest: angular.identity,
                    headers: {'Content-Type': undefined}
                })
                        .success(function (data, status, headers, config) {
                            if (data.success) {
                                alert(data.message);
                                $location.path("/view_scholar");
                                location.reload();
                            } else {
                                alert(data.message);
                            }
                        })
                        .error(function (data) {
                            alert(data);
                        });
            } else if ($scope.scholar.iscosupervisor === 'Yes' && $scope.scholar.cosuptype === 'Internal') {
                var uploadUrl = "/admin/editrscholar?enroll=" + enroll + "&name=" + schname +
                        "&regno=" + regno + "&dor=" + dor + "&doc=" + doc + "&supervisor=" + supervisor +
                        "&rtopic=" + rtopic + "&fellowship=" + fellowship +
                        "&fagency=" + fagency + "&mode=" + mode + "&status=" +
                        phdstatus + "&idtype=" + idtype + "&idno=" + idno + "&iscosupervisor=" + iscosupervisor +
                        "&cosuptype=" + cosuptype + "&faculty=" + cofaculty + "&department=" + codepartment +
                        "&cosupervisor=" + cosupervisor + "&id=" + id;
                var fd = new FormData();
                fd.append('file', file);
                $http.post(uploadUrl, fd, {
                    transformRequest: angular.identity,
                    headers: {'Content-Type': undefined}
                })
                        .success(function (data, status, headers, config) {
                            if (data.success) {
                                alert(data.message);
                                $location.path("/view_scholar");
                                location.reload();
                            } else {
                                alert(data.message);
                            }
                        })
                        .error(function (data) {
                            alert(data);
                        });
            } else if ($scope.scholar.iscosupervisor === 'Yes' && $scope.scholar.cosuptype === 'External') {
                var uploadUrl = "/admin/editrscholar?enroll=" + enroll + "&name=" + schname +
                        "&regno=" + regno + "&dor=" + dor + "&doc=" + doc + "&supervisor=" + supervisor +
                        "&rtopic=" + rtopic + "&fellowship=" + fellowship +
                        "&fagency=" + fagency + "&mode=" + mode + "&status=" +
                        phdstatus + "&idtype=" + idtype + "&idno=" + idno + "&iscosupervisor=" + iscosupervisor +
                        "&cosuptype=" + cosuptype + "&faculty=Not Applicable" + "&department=Not Applicable" +
                        "&cosupervisor=" + cosupervisor + "&id=" + id;
                var fd = new FormData();
                fd.append('file', file);
                $http.post(uploadUrl, fd, {
                    transformRequest: angular.identity,
                    headers: {'Content-Type': undefined}
                })
                        .success(function (data, status, headers, config) {
                            if (data.success) {
                                alert(data.message);
                                $location.path("/view_scholar");
                                location.reload();
                            } else {
                                alert(data.message);
                            }
                        })
                        .error(function (data) {
                            alert(data);
                        });
            }
        }
    };
    $scope.deletescholar = function (id) {
        if (confirm("Warning: Are you sure want to delete this scholar. After deleteion data could not be recovered.")) {
            $http({
                method: 'GET',
                url: 'deletescholar?id=' + id
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $location.path("/view_scholar");
                    location.reload();
                } else {
                    alert(data.message);
                }
            }).error(function (data, status, headers, config) {
                alert(data);
            });
        }
    };
    $scope.reviewedandforward = function (id) {
        if (confirm("Are sure want to forward this scholar to dean for verification")) {
            $http({
                method: 'GET',
                url: 'reviewedandforward?id=' + id
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $location.path("/view_scholar");
                    location.reload();
                } else {
                    alert(data.message);
                }
            }).error(function (data, status, headers, config) {
                alert(data);
            });
        }
    };
});
app.controller('ProcessCSVCtrl', function ($scope, $http) {
    $scope.uploaded = false;
    $scope.created = false;
    $scope.uploadCSV = function () {
        var file = $scope.upload;
//        var fsize = file.size;        
//        var ftype = file.type;
        var name = file.name;
        var pos = name.lastIndexOf(".");
        var ext = name.substring(pos);
        //var myArray = ['image/png', 'image/gif', 'image/jpeg', 'image/pjpeg'];
        if (ext !== ".csv") {
            alert("Unsupported file! Kindly select a CSV file (.csv)");
        } else {
            var uploadUrl = "/admin/upload_scholars_csv";
            var fd = new FormData();
            fd.append('file', file);
            $http.post(uploadUrl, fd, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined}
            })
                    .success(function (data, status, headers, config) {
                        if (data.success[0]) {
                            alert(data.message[0]);
                            $scope.uploaded = true;
                            $scope.created = true;
                        } else {
                            alert(data.message[0]);
                        }
                    })
                    .error(function () {
                    });
        }
    };
    $scope.publishRScholars = function () {
        $http({
            method: 'POST',
            url: 'publishrscholars'
        }).success(function (data, status, headers, config) {
            if (data.success[0]) {
                alert(data.message[0]);
            } else {
                alert(data.message[0]);
            }
        }).error(function (data, status, headers, config) {
            alert(data);
        });
    };
});
app.controller('ResearchScholarPublishedCtrl', function ($scope, $http, $location, Faculties) {
    $scope.alltab = false;
    $scope.factab = false;
    $scope.deptab = false;
    $scope.all = function () {
        $scope.alltab = true;
        $scope.factab = false;
        $scope.deptab = false;
        $http({
            method: 'GET',
            url: 'publishedrscholars?at=All'
        }).success(function (data, status, headers, config) {
            $scope.scholars = data;
            $scope.getScholars = [];
            $scope.getHeader = function () {
                return [
                    "Faculty",
                    "Department",
                    "Scholar Name",
                    "Mode of Ph.D",
                    "Registration No",
                    "Registration Date",
                    "Research Topic",
                    "Likely date of Completion of Ph.D.",
                    "Availing Fellowship",
                    "Funding Agency of Fellowshi",
                    "Status",
                    "Supervisor",
                    "IDType",
                    "IDNo"
                ];
            };
            angular.forEach($scope.scholars, function (scholar) {
                $scope.getScholars.push({
                    "Faculty": scholar.faculty,
                    "Department": scholar.dept,
                    "Scholar Name": scholar.name,
                    "Mode of Ph.D": scholar.mode,
                    "Registration No": scholar.regno,
                    "Registration Date": new Date(scholar.regdate).toDateString(),
                    "Research Topic": scholar.topic,
                    "Likely date of Completion of Ph.D.": new Date(scholar.completiondate).toDateString(),
                    "Availing Fellowship": scholar.availingfellowship,
                    "Funding Agency of Fellowshi": scholar.fundingagency,
                    "Status": scholar.status,
                    "Supervisor": scholar.supervisor,
                    "IDType": scholar.idtype,
                    "IDNo": scholar.idno
                });
            });
        }).error(function (data, status, headers, config) {
            alert(data);
        });
    };
    $scope.depwise = function () {
        $scope.deptab = true;
        $scope.alltab = false;
        $scope.factab = false;
    };
    $scope.facwise = function () {
        $scope.factab = true;
        $scope.alltab = false;
        $scope.deptab = false;
    };
    $scope.idtypes = ["Aadhaar", "Pan Card", "Voter ID", "Passport", "Driving License"];
    $scope.print = function (divName) {
        var printContents = document.getElementById(divName).innerHTML;
        var popupWin = window.open('', '_blank');
        popupWin.document.open();
        popupWin.document.write('<html><head><link href="../public/css/print.css" rel="stylesheet" type="text/css"/></head><body onload="window.print()">' + printContents + '</body></html>');
        popupWin.document.close();
    };
});
app.controller('ContinuationCtrl', function ($scope, $http, $location) {
    $scope.sessions = ["2017-18"];
    $scope.startNow = function () {
        var continuation = {
            "session": $scope.session,
            "startdate": "",
            "starttime": "",
            "enddate": "",
            "endtime": "",
            "mode": "Point"
        };
        if (confirm("Continuation for the session " + $scope.session + " will start now for an endless period. Anyway! start it now.")) {
            $http({
                method: 'POST',
                url: 'startsession',
                data: continuation,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                } else {
                    alert(data.message);
                }
            }).error(function (data, status, headers, config) {
                alert(data);
            });
        }
    };
    $scope.startPeriod = function () {
        var continuation = {
            "session": $scope.session,
            "startdate": $scope.startdate,
            "starttime": $scope.starttime,
            "enddate": $scope.enddate,
            "endtime": $scope.endtime,
            "mode": "Period"
        };
        if (confirm("Continuation for the session " + $scope.session + " will start from " + $scope.startdate + " at " + $scope.starttime)) {
            $http({
                method: 'POST',
                url: 'startsession',
                data: continuation,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                } else {
                    alert(data.message);
                }
            }).error(function (data, status, headers, config) {
                alert(data);
            });
        }
    };
    $scope.stopContinuation = function () {

    };
});
app.controller('SearchEmployeeCtrl', function ($scope, $http) {
    $scope.searchEmployee = function () {
        $http({
            method: 'GET',
            url: 'searchbypid?pid=' + $scope.pid
        }).success(function (data, status, headers, config) {
            if (data.success) {
                $scope.result = data;
            } else {
                alert(data);
            }
        }).error(function (data, status, headers, config) {
            alert(data);
        });
    };
});
app.controller('AddEmployeeCtrl', function ($scope, $http) {
    $scope.fetch = function () {
        $http({
            method: 'GET',
            url: 'searchbypid?pid=' + $scope.pid
        }).success(function (data, status, headers, config) {
            if (data.success) {
                $scope.fetched = data;
            } else {
            }
        }).error(function (data, status, headers, config) {
            alert(data);
        });
    };
    $scope.addEmployee = function () {
        var employee = {
            "pid": $scope.pid,
            "name": $scope.fetched.salary.name,
            "desig": $scope.fetched.salary.desig,
            "dep": $scope.fetched.salary.dep,
            "gender": $scope.fetched.salary.gender,
            "pan": $scope.fetched.salary.pan,
            "mobile": $scope.mobile,
            "email": $scope.email
        };
        if ($scope.fetched.salary.name === '') {
            alert("Name cannot be left blank.");
        } else if ($scope.fetched.salary.gender === '') {
            alert("Gender cannot be left blank.");
        } else if ($scope.fetched.salary.desig === '') {
            alert("Designation cannot be left blank.");
        } else if ($scope.fetched.salary.dep === '') {
            alert("Department cannot be left blank.");
        } else if (confirm("Are you sure, want to create this employee account? Anyway, create it.")) {
            $http({
                method: 'POST',
                url: 'createempaccount',
                data: employee,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                } else {
                    alert(data.message);
                }
            }).error(function (data, status, headers, config) {
                alert(data);
            });
        }
    };
    $scope.createPersona = function () {
        if ($scope.fetched.portal.data.isprofileready) {
            var employee = {
                "pid": $scope.pid,
                "validity": $scope.validity,
                "remark": $scope.remark,
                "persona": $scope.persona
            };
            if ($scope.fetched.salary.name === '') {
                alert("Name cannot be left blank.");
            } else if ($scope.fetched.salary.gender === '') {
                alert("Gender cannot be left blank.");
            } else if ($scope.fetched.salary.desig === '') {
                alert("Designation cannot be left blank.");
            } else if ($scope.fetched.salary.dep === '') {
                alert("Department cannot be left blank.");
            } else if (confirm("Are you sure, want to create secondary account for this user? Anyway, create it.")) {
                $http({
                    method: 'POST',
                    url: 'createsecaccount',
                    data: employee,
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).success(function (data, status, headers, config) {
                    if (data.success) {
                        alert(data.message);
                    } else {
                        alert(data.message);
                    }
                }).error(function (data, status, headers, config) {
                    alert(data);
                });
            }
        } else {
            alert("Secondary account for this user could not be created because SSPR is not yet processed.");
        }
    };
});
app.controller('ContRequestCntrl', function ($scope, $http, Faculties) {
    Faculties.get().then(function (data) {
        $scope.faculties = data;
    });
    $scope.refresh = function () {
        $http({
            method: 'GET',
            url: 'unapproved?at=Computer Centre'
        }).success(function (data, status, headers, config) {
            $scope.unapproved = data;
            $scope.getUnapproved = [];
            $scope.getHeader = function () {
                return [
                    "Name", "Enrollment", "Faculty No", "Course Type", "Course Name",
                    "Sem/Year", "Department", "Hall", "Mobile", "District",
                    "State", "Country", "Continuation Type"
                ];
            };
            angular.forEach($scope.unapproved, function (student) {
                var facno = '';
                var ctype = '';
                var cname = '';
                if (student.type === 'Same Course') {
                    var facno = student.student[0].profile.facultyNumber;
                    var ctype = student.student[0].profile.courseType;
                    var cname = student.student[0].profile.courseName;
                } else if (student.type === 'New Course') {
                    var facno = student.details[1].facno;
                    var ctype = student.details[1].courseType;
                    var cname = student.details[1].courseName;
                }
                $scope.getUnapproved.push({
                    "Name": student.student[0].fullName,
                    "Enrollment": student.student[0].enroll,
                    "Faculty No": facno,
                    "Course Type": ctype,
                    "Course Name": cname,
                    "Sem/Year": student.details[1].semesterYear,
                    "Department": student.details[1].dep,
                    "Hall": student.details[1].hall,
                    "Mobile": student.student[0].mobile,
                    "District": student.student[0].profile.city,
                    "State": student.student[0].profile.state,
                    "Country": student.student[0].profile.country,
                    "Continuation Type": student.type
                });
            });
        }).error(function (data, status, headers, config) {
            alert(data);
        });
    };
    $scope.refresh();
    $scope.checkAll = function () {
        angular.forEach($scope.unapproved, function (student) {
            student.student.isChecked = $scope.checker;
        });
    };
    $scope.processCont = function () {
        var ctr = 0;
        angular.forEach($scope.unapproved, function (student) {
            if (student.student.isChecked) {
                ctr++;
            }
        });
        if (ctr === 0) {
            alert("Please mark atleast one to Process");
        } else {
            if (confirm("Are you sure want to process marked student(s)")) {
                var selected = [];
                angular.forEach($scope.unapproved, function (student) {
                    if (student.student.isChecked) {
                        selected.push(student.enroll);
                    }
                });
                $http({
                    method: 'POST',
                    url: 'processcont',
                    data: selected,
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).success(function (data, status, headers, config) {
                    if (data.success) {
                        alert(data.message);
                        $scope.refresh();
                    } else {
                        alert(data.message);
                    }
                }).error(function (data, status, headers, config) {
                    alert(data);
                });
            }
        }
    };
});
app.controller('SearchCtrl', function ($scope, $http, $location) {
    $scope.searchStudent = function () {
        $http({
            method: 'GET',
            url: 'searchbyenroll?enroll=' + $scope.enroll
        }).success(function (data, status, headers, config) {
            $scope.result = data;
        }).error(function (data, status, headers, config) {
            alert("Error occurred.");
        });
    };
    $scope.deleteaccount = function () {
        var accountdeatails = {
            "enroll": $scope.result.profile.enroll,
            "cat": $scope.cat,
            "reason": $scope.reason
        };
        var file = $scope.upload;
        if (file === undefined) {
            if (confirm("Are your sure want to delete this account?")) {
                $http({
                    method: 'POST',
                    url: 'deleteaccount',
                    data: accountdeatails,
                    headers: {'Content-Type': 'application/x-www-form-urlencoded'}
                }).success(function (data, status, headers, config) {
                    if (data.success) {
                        alert(data.message);
                    } else {
                        alert(data.message);
                    }
                }).error(function (data, status, headers, config) {

                });
            }
        } else {
            var fsize = file.size;
            var ftype = file.type;
            var myArray = ['image/png', 'image/gif', 'image/jpeg', 'image/pjpeg', 'application/pdf', 'application/msword'];
            if (myArray.indexOf(ftype) === -1) {
                alert("Unsupported file! Kindly select an image file (png, gif, jpeg, pjpeg, pdf, doc)");
            } else if (fsize > 2e+6) { //do something if file size more than 2 mb (2e+6)                        
                alert("Size of the uploading file must not exceed 2 MB");
            } else {
                var uploadUrl = "/admin/dawa?enroll=" + $scope.result.profile.enroll + "&cat=" + $scope.cat + "&reason=" + $scope.reason;
                var fd = new FormData();
                fd.append('file', file);
                $http.post(uploadUrl, fd, {
                    transformRequest: angular.identity,
                    headers: {'Content-Type': undefined}
                }).success(function (data, status, headers, config) {
                    if (data.success) {
                        alert(data.message);
                    } else {
                        alert(data.message);
                    }
                }).error(function () {

                });
            }
        }
    };
    $scope.disableWiFi = function () {
        if (confirm("Are your sure want to disable this account?")) {
            $http({
                method: 'GET',
                url: 'disablewifi?enroll=' + $scope.result.profile.enroll
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $scope.searchStudent();
                } else {
                    alert(data.message);
                }
            }).error(function (data, status, headers, config) {

            });
        }
    };
    $scope.enableWiFi = function () {
        if (confirm("Are your sure want to enable this account?")) {
            $http({
                method: 'GET',
                url: 'enablewifi?enroll=' + $scope.result.profile.enroll
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $scope.searchStudent();
                } else {
                    alert(data.message);
                }
            }).error(function (data, status, headers, config) {

            });
        }
    };
    $scope.updateContact = function (enroll) {
        var updatecontacts = {
            "enroll": enroll,
            "email": $scope.result.profile.email,
            "mobile": $scope.result.profile.mobile,
            "reason": $scope.upreason,
            "reference": $scope.supdocref
        };
        if (confirm("Are your sure want to update contacts?")) {
            $http({
                method: 'POST',
                url: 'updatecontacts',
                data: updatecontacts,
                headers: {'Content-Type': 'application/x-www-form-urlencoded'}
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $('#contact').modal('toggle');
                } else {
                    alert(data.message);
                }
            }).error(function (data, status, headers, config) {

            });
        }
    };
    $scope.updatePhoto = function (enroll) {
        var file = $scope.uploadphoto;
        var fsize = file.size;
        var ftype = file.type;
        var myArray = ['image/png', 'image/gif', 'image/jpeg', 'image/pjpeg'];
        if (myArray.indexOf(ftype) === -1) {
            alert("Unsupported file! Kindly select an image file (png, gif, jpeg, pjpeg)");
        } else if (fsize > 2e+6) { //do something if file size more than 1 mb (1048576)                        
            alert("Size of the uploading file must not exceed 2 MB");
        } else {
            var uploadUrl = "/admin/updatephoto?enroll=" + enroll + "&reason=" + $scope.phupreason + "&reference=" + $scope.phsupdocref;
            var fd = new FormData();
            fd.append('file', file);
            $http.post(uploadUrl, fd, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined}
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $('#photoupload').modal('toggle');
                } else {
                    alert(data.message);
                }
            }).error(function () {

            });
        }
    };
    $scope.updateCert = function (enroll) {
        var file = $scope.uploadcert;
        var fsize = file.size;
        var ftype = file.type;
        var myArray = ['image/png', 'image/gif', 'image/jpeg', 'image/pjpeg'];
        if (myArray.indexOf(ftype) === -1) {
            alert("Unsupported file! Kindly select an image file (png, gif, jpeg, pjpeg)");
        } else if (fsize > 2e+6) { //do something if file size more than 1 mb (1048576)                        
            alert("Size of the uploading file must not exceed 2 MB");
        } else {
            var uploadUrl = "/admin/updatecert?enroll=" + enroll + "&reason=" + $scope.crupreason + "&reference=" + $scope.crsupdocref;
            var fd = new FormData();
            fd.append('file', file);
            $http.post(uploadUrl, fd, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined}
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $('#certupload').modal('toggle');
                } else {
                    alert(data.message);
                }
            }).error(function () {

            });
        }
    };
    $scope.updateSig = function (enroll) {
        var file = $scope.uploadsig;
        var fsize = file.size;
        var ftype = file.type;
        var myArray = ['image/png', 'image/gif', 'image/jpeg', 'image/pjpeg'];
        if (myArray.indexOf(ftype) === -1) {
            alert("Unsupported file! Kindly select an image file (png, gif, jpeg, pjpeg)");
        } else if (fsize > 2e+6) { //do something if file size more than 1 mb (1048576)                        
            alert("Size of the uploading file must not exceed 2 MB");
        } else {
            var uploadUrl = "/admin/updatesig?enroll=" + enroll + "&reason=" + $scope.sgupreason + "&reference=" + $scope.sgsupdocref;
            var fd = new FormData();
            fd.append('file', file);
            $http.post(uploadUrl, fd, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined}
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $('#sigupload').modal('toggle');
                } else {
                    alert(data.message);
                }
            }).error(function () {

            });
        }
    };
    $scope.updateADMCont = function (enroll) {
        var file = $scope.uploadadm;
        var fsize = file.size;
        var ftype = file.type;
        var myArray = ['image/png', 'image/gif', 'image/jpeg', 'image/pjpeg'];
        if (myArray.indexOf(ftype) === -1) {
            alert("Unsupported file! Kindly select an image file (png, gif, jpeg, pjpeg)");
        } else if (fsize > 2e+6) { //do something if file size more than 1 mb (1048576)                        
            alert("Size of the uploading file must not exceed 2 MB");
        } else {
            var uploadUrl = "/admin/updateadmcont?enroll=" + enroll + "&reason=" + $scope.admupreason + "&reference=" + $scope.admsupdocref;
            var fd = new FormData();
            fd.append('file', file);
            $http.post(uploadUrl, fd, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined}
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $('#adcontupload').modal('toggle');
                } else {
                    alert(data.message);
                }
            }).error(function () {

            });
        }
    };
    $scope.makeNewEditable = function (enroll) {
        var makeneweditable = {
            "enroll": enroll,
            "reason": $scope.mknewreason,
            "reference": $scope.mknewdocref
        };
        if (confirm("Are your sure want to make this profile editable?")) {
            $http({
                method: 'POST',
                url: 'makeneweditable',
                data: makeneweditable,
                headers: {'Content-Type': 'application/x-www-form-urlencoded'}
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $('#editnew').modal('toggle');
                } else {
                    alert(data.message);
                }
            }).error(function (data, status, headers, config) {

            });
        }
    };
    $scope.makeContEditable = function (enroll) {
        var makeconteditable = {
            "enroll": enroll,
            "reason": $scope.mkcontreason,
            "reference": $scope.mkcontdocref
        };
        if (confirm("Are your sure want to make this profile editable?")) {
            $http({
                method: 'POST',
                url: 'makeconteditable',
                data: makeconteditable,
                headers: {'Content-Type': 'application/x-www-form-urlencoded'}
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $('#editcont').modal('toggle');
                } else {
                    alert(data.message);
                }
            }).error(function (data, status, headers, config) {

            });
        }
    };
});
app.controller('SmartMailer', function ($scope, $http, Faculties) {

});
app.controller('ProcessEmailCtrl', function ($scope, $http, Faculties) {
    $scope.refresh = function () {
        $http({
            method: 'GET',
            url: 'emailrequest'
        }).success(function (data, status, headers, config) {
            $scope.email_new = data;
            $scope.getEmailrequest = [];
            $scope.getEmailHeader = function () {
                return [
                    "EnrollmentNo", "Student Name",
                    "Gender", "Father Name", "Email", "FacultyNo",
                    "Department", "Hall", "Course Type", "Course Name"
                ];
            };
            angular.forEach($scope.email_new, function (item) {
                $scope.getEmailrequest.push({
                    "enrollmentNo": item.enroll,
                    "Student Name": item.fullName,
                    "Gender": item.profile.gender,
                    "Father Name": item.profile.fatherName,
                    "Email": item.email,
                    "FacultyNo": item.profile.facultyNumber,
                    "Department": item.profile.department,
                    "Hall": item.profile.hall,
                    "Course Type": item.profile.courseType,
                    "Course Name": item.profile.courseName
                });
            });
        }).error(function (data, status, headers, config) {
            alert(data);
        });
    };
    $scope.refresh();
    $scope.processEmail = function (enroll) {
        if (confirm("Are you sure want to process marked email request(s)")) {
            var selected = {
                "enroll": enroll,
                "email": $('#premail').val(),
                "password": $('#prpassword').val()
            };
            $http({
                method: 'POST',
                url: 'processemail',
                data: selected,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(function (data, status, headers, config) {
                if (data.success[0]) {
                    alert(data.message[0].toString());
                    $('#act' + enroll).modal('toggle');
                    $scope.refresh();
                } else {
                    alert(data.message[0]);
                }
            }).error(function (data, status, headers, config) {
                alert(data);
            });
        }
    };
});

app.controller('SecondaryAccountsCtrl', function ($scope, $http, Faculties) {
    $http({
        method: 'GET',
        url: 'listofsecaccounts'
    }).success(function (data, status, headers, config) {
        if(data.success){
            $scope.listofsecaccounts = data.listofsecaccounts;
        } else {
            alert("Something went wrong while listing secondary accounts.");
        }        
    }).error(function (data, status, headers, config) {
        alert(data);
    });
});