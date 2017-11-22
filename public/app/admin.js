var app = angular.module('admin', ['ui.router', 'ngSanitize', 'ngCsv', 'Services']);
app.config(function ($stateProvider) {
    $stateProvider
            .state('students_pst', {
                url: "/students_pst",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/students_pst.jsp"}
                }
            })
            .state('students_pst_old', {
                url: "/students_pst_old",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/students_pst_old.jsp"}
                }
            })
            .state('verified_pst_old', {
                url: "/verified_pst_old",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/verified_pst_old.jsp"}
                }
            })
            .state('students_chm', {
                url: "/students_chm",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/students_chm.jsp"}
                }
            })
            .state('verified_chm', {
                url: "/verified_chm",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/verified_chm.jsp"}
                }
            })
            .state('verified_pst', {
                url: "/verified_pst",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/verified_pst.jsp"}
                }
            })
            .state('students_dean', {
                url: "/students_dean",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/students_dean.jsp"}
                }
            })
            .state('verified_dean', {
                url: "/verified_dean",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/verified_dean.jsp"}
                }
            })
            .state('students_director', {
                url: "/students_director",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/students_director.jsp"}
                }
            })
            .state('verified_director', {
                url: "/verified_director",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/verified_director.jsp"}
                }
            })
            .state('students_coordinator', {
                url: "/students_coordinator",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/students_coordinator.jsp"}
                }
            })
            .state('verified_coordinator', {
                url: "/verified_coordinator",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/verified_coordinator.jsp"}
                }
            })
            .state('students_principal', {
                url: "/students_principal",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/students_principal.jsp"}
                }
            })
            .state('verified_principal', {
                url: "/verified_principal",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/verified_principal.jsp"}
                }
            })
            .state('upload_vdo', {
                url: "/upload_vdo",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/upload_vdo.jsp"}
                }
            })
            .state('add_scholar', {
                url: "/add_scholar",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/add_scholar.jsp"}
                }
            })
            .state('view_scholar', {
                url: "/view_scholar",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/view_scholar.jsp"}
                }
            })
            .state('view_scholar_dean', {
                url: "/view_scholar_dean",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/view_scholar_dean.jsp"}
                }
            })
            .state('add_scholar_dean', {
                url: "/add_scholar_dean",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/add_scholar_dean.jsp"}
                }
            })
            .state('add_scholar_coordinator', {
                url: "/add_scholar_coordinator",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/add_scholar_coordinator.jsp"}
                }
            })
            .state('view_scholar_coordinator', {
                url: "/view_scholar_coordinator",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/view_scholar_coordinator.jsp"}
                }
            })
            .state('view_published', {
                url: "/view_published",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/view_published.jsp"}
                }
            })
            .state('edit_published', {
                url: "/edit_published",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/edit_published.jsp"}
                }
            })
            .state('approved', {
                url: "/approved",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/approved.jsp"}
                }
            })
            .state('approval', {
                url: "/approval",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/approval.jsp"}
                }
            })
            .state('approval_pst', {
                url: "/approval_pst",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/approval_pst.jsp"}
                }
            })
            .state('approved_pst', {
                url: "/approved_pst",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/approved_pst.jsp"}
                }
            })
            .state('approval_dean', {
                url: "/approval_dean",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/approval_dean.jsp"}
                }
            })
            .state('approved_dean', {
                url: "/approved_dean",
                views: {
                    "contents": {templateUrl: "../public/templates/admin/approved_dean.jsp"}
                }
            });
});
app.controller('UserCtrl', function ($scope, $http, $location, Departments, Halls) {
    $http({
        method: 'GET',
        url: 'adminnotify'
    }).success(function (data, status, headers, config) {
        $scope.user = data;
    }).error(function (data, status, headers, config) {

    });
});
app.controller('VerificationProvostOldCtrl', function ($scope, $http) {

    $http({
        method: 'GET',
        url: 'adminnotify'
    }).success(function (data, status, headers, config) {
        $scope.user = data;
        $scope.hall = $scope.user.label.replace("Provost", "").trim();
    }).error(function (data, status, headers, config) {

    });

    $scope.refresh = function () {
        $http({
            method: 'GET',
            url: 'unverified_students_at_admin'
        }).success(function (data, status, headers, config) {
            $scope.unverified = data;
            $scope.refreshVerified();
            $scope.getUnverified = [];
            $scope.getHeader = function () {
                return [
                    "Name", "Enrollment", "Faculty No", "Father Name", "Course Name", "Course Type",
                    "Sem/Year", "Department", "Hall", "Mobile", "District",
                    "State", "Country"
                ];
            };
            angular.forEach($scope.unverified, function (student) {
                $scope.getUnverified.push({
                    "Name": student.fullName,
                    "Enrollment": student.enroll,
                    "Faculty No": student.profile.facultyNumber,
                    "Father Name": student.profile.fatherName,
                    "Course Name": student.profile.courseName,
                    "Course Type": student.profile.courseType,
                    "Sem/Year": student.profile.semesterYear,
                    "Department": student.profile.department,
                    "Hall": student.profile.hall,
                    "Mobile": student.mobile,
                    "District": student.profile.city,
                    "State": student.profile.state,
                    "Country": student.profile.country
                });
            });
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.refreshVerified = function () {
        $http({
            method: 'GET',
            url: 'verified'
        }).success(function (data, status, headers, config) {
            $scope.verified = data;
            $scope.getVerified = [];
            $scope.getHeader = function () {
                return [
                    "Name", "Enrollment", "Faculty No", "Father Name", "Course Name", "Course Type",
                    "Sem/Year", "Department", "Hall", "Mobile", "District",
                    "State", "Country"
                ];
            };
            angular.forEach($scope.verified, function (student) {
                $scope.getVerified.push({
                    "Name": student.fullName,
                    "Enrollment": student.enroll,
                    "Faculty No": student.profile.facultyNumber,
                    "Father Name": student.profile.fatherName,
                    "Course Name": student.profile.courseName,
                    "Course Type": student.profile.courseType,
                    "Sem/Year": student.profile.semesterYear,
                    "Department": student.profile.department,
                    "Hall": student.profile.hall,
                    "Mobile": student.mobile,
                    "District": student.profile.city,
                    "State": student.profile.state,
                    "Country": student.profile.country
                });
            });
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.refresh();
    $scope.provost = {};
    $scope.provostAll = function () {
        $scope.prvst = {"value": $scope.provost.value};
        angular.forEach($scope.unverified, function (doc) {
            doc.profile.verification[0].provost = $scope.prvst.value;
        });
    };
    $scope.verify = function () {
        var ctr = 0;
        angular.forEach($scope.unverified, function (doc) {
            if (doc.profile.verification[0].provost) {
                ctr++;
            }
        });
        if (ctr === 0) {
            alert("Please mark atleast one to verify");
        } else {
            if (confirm("Are you sure want to verify marked student(s)")) {
                var selected = [];
                angular.forEach($scope.unverified, function (doc) {
                    if (doc.profile.verification[0].provost) {
                        selected.push({
                            "_id": doc._id.$oid,
                            "student_email": doc.email,
                            "student_name": doc.fullName,
                            "student_mobile": doc.mobile,
                            "provost": doc.profile.verification[0].provost,
                            "chairman": doc.profile.verification[1].chairman,
                            "verifiedBy": $scope.user.label
                        });
                    }
                });
                $http({
                    method: 'POST',
                    url: 'admin_verify',
                    data: selected,
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).success(function (data, status, headers, config) {
                    if (data.success[0]) {
                        alert(data.message[0]);
                        $scope.refresh();
                    } else {
                        alert(data.message[0]);
                    }
                }).error(function (data, status, headers, config) {
                    alert("Error occurred.");
                });
            }
        }
    };

    $scope.reject = function (comment, _id) {
        if (comment == null) {
            alert("Please mention the reason for rejecting this student");
        } else {
            var selected = {"_id": _id.$oid, "comment": comment, "rejectedBy": $scope.user.label, "mode": "Provost"};
            $http({
                method: 'POST',
                url: 'admin_reject',
                data: selected,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(function (data, status, headers, config) {
                alert(data.message);
                $scope.refresh();
            }).error(function (data, status, headers, config) {
                alert("error");
            });
        }
    };
    $scope.print = function (divName) {
        var printContents = document.getElementById(divName).innerHTML;
        var popupWin = window.open('', '_blank');
        popupWin.document.open();
        popupWin.document.write('<html><head><link href="../public/css/print.css" rel="stylesheet" type="text/css"/></head><body onload="window.print()">' + printContents + '</body></html>');
        popupWin.document.close();
    };
});
app.controller('VerificationChairmanCtrl', function ($scope, $http) {
    $http({
        method: 'GET',
        url: 'adminnotify'
    }).success(function (data, status, headers, config) {
        $scope.user = data;
        $scope.dep = $scope.user.label.replace("Chairman", "").trim();
    }).error(function (data, status, headers, config) {

    });
    $scope.refresh = function () {
        $http({
            method: 'GET',
            url: 'unverified_students_at_admin'
        }).success(function (data, status, headers, config) {
            $scope.unverified = data;
            $scope.refreshVerified();
            $scope.getUnverified = [];
            $scope.getHeaderU = function () {
                return [
                    "Name", "Enrollment", "Faculty No", "Father Name", "Course Name", "Course Type",
                    "Sem/Year", "Department", "Hall", "Mobile", "District",
                    "State", "Country", "Verified By (Name)", "Verified By (Signature)"
                ];
            };
            angular.forEach($scope.unverified, function (student) {
                $scope.getUnverified.push({
                    "Name": student.fullName,
                    "Enrollment": student.enroll,
                    "Faculty No": student.profile.facultyNumber,
                    "Father Name": student.profile.fatherName,
                    "Course Name": student.profile.courseName,
                    "Course Type": student.profile.courseType,
                    "Sem/Year": student.profile.semesterYear,
                    "Department": student.profile.department,
                    "Hall": student.profile.hall,
                    "Mobile": student.mobile,
                    "District": student.profile.city,
                    "State": student.profile.state,
                    "Country": student.profile.country
                });
            });
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.refreshVerified = function () {
        $http({
            method: 'GET',
            url: 'verified'
        }).success(function (data, status, headers, config) {
            $scope.verified = data;
            $scope.getVerified = [];
            $scope.getHeaderV = function () {
                return [
                    "Name", "Enrollment", "Faculty No", "Father Name", "Course Name", "Course Type",
                    "Sem/Year", "Department", "Hall", "Mobile", "District",
                    "State", "Country"
                ];
            };
            angular.forEach($scope.verified, function (student) {
                $scope.getVerified.push({
                    "Name": student.fullName,
                    "Enrollment": student.enroll,
                    "Faculty No": student.profile.facultyNumber,
                    "Father Name": student.profile.fatherName,
                    "Course Name": student.profile.courseName,
                    "Course Type": student.profile.courseType,
                    "Sem/Year": student.profile.semesterYear,
                    "Department": student.profile.department,
                    "Hall": student.profile.hall,
                    "Mobile": student.mobile,
                    "District": student.profile.city,
                    "State": student.profile.state,
                    "Country": student.profile.country
                });
            });
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.refresh();
    $scope.chairman = {};
    $scope.chairmanAll = function () {
        $scope.chmn = {"value": $scope.chairman.value};
        angular.forEach($scope.unverified, function (doc) {
            doc.profile.verification[1].chairman = $scope.chmn.value;
        });
    };
    $scope.verify = function () {
        var ctr = 0;
        angular.forEach($scope.unverified, function (doc) {
            if (doc.profile.verification[1].chairman) {
                ctr++;
            }
        });
        if (ctr === 0) {
            alert("Please mark atleast one to verify");
        } else {
            if (confirm("Are you sure want to verify marked student(s)")) {
                var selected = [];
                angular.forEach($scope.unverified, function (doc) {
                    if (doc.profile.verification[1].chairman) {
                        selected.push({
                            "_id": doc._id.$oid,
                            "student_email": doc.email,
                            "student_name": doc.fullName,
                            "student_mobile": doc.mobile,
                            "provost": doc.profile.verification[0].provost,
                            "chairman": doc.profile.verification[1].chairman,
                            "verifiedBy": $scope.user.label
                        });
                    }
                });
                $http({
                    method: 'POST',
                    url: 'admin_verify_chmn',
                    data: selected,
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).success(function (data, status, headers, config) {
                    if (data.success[0]) {
                        alert(data.message[0]);
                        $scope.refresh();
                    } else {
                        alert(data.message[0]);
                    }
                }).error(function (data, status, headers, config) {
                    alert("Error occurred.");
                });
            }
        }
    };
    $scope.reject = function (comment, _id) {
        if (comment == null) {
            alert("Please mention the reason for rejecting this request");
        } else {
            var selected = {"_id": _id.$oid, "comment": comment, "rejectedBy": $scope.user.label, "mode": "Chairman"};
            $http({
                method: 'POST',
                url: 'admin_reject',
                data: selected,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(function (data, status, headers, config) {
                alert(data.message);
                $scope.refresh();
            }).error(function (data, status, headers, config) {
                alert("error");
            });
        }
    };
    $scope.print = function (divName) {
        var printContents = document.getElementById(divName).innerHTML;
        var popupWin = window.open('', '_blank');
        popupWin.document.open();
        popupWin.document.write('<html><head><link href="../public/css/print.css" rel="stylesheet" type="text/css"/></head><body onload="window.print()">' + printContents + '</body></html>');
        popupWin.document.close();
    };
});
app.controller('VerificationDeanCtrl', function ($scope, $http, Faculties) {
    $scope.forUnverified = {};
    $scope.forVerified = {};
    Faculties.get().then(function (data) {
        $scope.faculties = data;
    });
    $http({
        method: 'GET',
        url: 'adminnotify'
    }).success(function (data, status, headers, config) {
        $scope.user = data;
        $scope.dean = $scope.user.label.replace("Dean", "").trim();
        $scope.departments = [];
        var fac = data.label.replace('Dean', '').trim();
        for (var i = 0; i < $scope.faculties.data.length; i++) {
            if ($scope.faculties.data[i].faculty === fac) {
                for (var v = 0; v < $scope.faculties.data[i].departments.length; v++) {
                    $scope.departments.push($scope.faculties.data[i].departments[v]);
                }

            }
        }
    }).error(function (data, status, headers, config) {

    });
    $scope.findUnverified = function () {
        $http({
            method: 'GET',
            url: 'unverified_at_dean?department=' + $scope.forUnverified.dep
        }).success(function (data, status, headers, config) {
            $scope.unverified = data;
            $scope.getUnverified = [];
            $scope.getHeaderU = function () {
                return [
                    "Name", "Enrollment", "Faculty No", "Father Name", "Course Name", "Course Type",
                    "Sem/Year", "Department", "Hall", "District", "State", "Country"
                ];
            };
            angular.forEach($scope.unverified, function (student) {
                $scope.getUnverified.push({
                    "Name": student.fullName,
                    "Enrollment": student.enroll,
                    "Faculty No": student.profile.facultyNumber,
                    "Father Name": student.profile.fatherName,
                    "Course Name": student.profile.courseName,
                    "Course Type": student.profile.courseType,
                    "Sem/Year": student.profile.semesterYear,
                    "Department": student.profile.department,
                    "Hall": student.profile.hall,
                    "District": student.profile.city,
                    "State": student.profile.state,
                    "Country": student.profile.country
                });
            });
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.findVerified = function () {
        $http({
            method: 'GET',
            url: 'verified_by_dean?department=' + $scope.forVerified.dep
        }).success(function (data, status, headers, config) {
            $scope.verified_by_dean = data;
            $scope.getVerified = [];
            $scope.getHeaderV = function () {
                return [
                    "Name", "Enrollment", "Faculty No", "Father Name", "Course Name", "Course Type",
                    "Sem/Year", "Department", "Hall", "District",
                    "State", "Country"
                ];
            };
            angular.forEach($scope.verified_by_dean, function (student) {
                $scope.getVerified.push({
                    "Name": student.fullName,
                    "Enrollment": student.enroll,
                    "Faculty No": student.profile.facultyNumber,
                    "Father Name": student.profile.fatherName,
                    "Course Name": student.profile.courseName,
                    "Course Type": student.profile.courseType,
                    "Sem/Year": student.profile.semesterYear,
                    "Department": student.profile.department,
                    "Hall": student.profile.hall,
                    "District": student.profile.city,
                    "State": student.profile.state,
                    "Country": student.profile.country
                });
            });
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.chairman = {};
    $scope.chairmanAll = function () {
        $scope.chmn = {"value": $scope.chairman.value};
        angular.forEach($scope.unverified, function (doc) {
            doc.profile.verification[1].chairman = $scope.chmn.value;
        });
    };
    $scope.verify = function () {
        var ctr = 0;
        angular.forEach($scope.unverified, function (doc) {
            if (doc.profile.verification[1].chairman) {
                ctr++;
            }
        });
        if (ctr === 0) {
            alert("Please mark atleast one to verify");
        } else {
            if (confirm("Are you sure want to verify marked student(s)")) {
                var selected = [];
                angular.forEach($scope.unverified, function (doc) {
                    if (doc.profile.verification[1].chairman) {
                        selected.push({
                            "_id": doc._id.$oid,
                            "student_email": doc.email,
                            "student_name": doc.fullName,
                            "student_mobile": doc.mobile,
                            "provost": doc.profile.verification[0].provost,
                            "chairman": doc.profile.verification[1].chairman,
                            "verifiedBy": $scope.user.label
                        });
                    }
                });
                $http({
                    method: 'POST',
                    url: 'admin_verify_dean',
                    data: selected,
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).success(function (data, status, headers, config) {
                    if (data.success[0]) {
                        alert(data.message[0]);
                        $scope.findUnverified();
                    } else {
                        alert(data.message[0]);
                    }
                }).error(function (data, status, headers, config) {
                    alert("Error occurred.");
                });
            }
        }
    };
    $scope.reject = function (comment, _id) {
        if (comment == null) {
            alert("Please mention the reason for rejecting this request");
        } else {
            var selected = {"_id": _id.$oid, "comment": comment, "rejectedBy": $scope.user.label, "mode": "Chairman"};
            $http({
                method: 'POST',
                url: 'admin_reject',
                data: selected,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(function (data, status, headers, config) {
                alert(data.message);
                $scope.refresh();
            }).error(function (data, status, headers, config) {
                alert("error");
            });
        }
    };
    $scope.print = function (divName) {
        var printContents = document.getElementById(divName).innerHTML;
        var popupWin = window.open('', '_blank');
        popupWin.document.open();
        popupWin.document.write('<html><head><link href="../public/css/print.css" rel="stylesheet" type="text/css"/></head><body onload="window.print()">' + printContents + '</body></html>');
        popupWin.document.close();
    };
});
app.controller('VerificationProvostCtrl', function ($scope, $http, Departments) {
    $scope.forUnverified = {};
    $scope.forVerified = {};
    Departments.get().then(function (data) {
        $scope.departments = data;
    });
    $http({
        method: 'GET',
        url: 'adminnotify'
    }).success(function (data, status, headers, config) {
        $scope.user = data;
        $scope.hall = $scope.user.label.replace("Provost", "").trim();
    }).error(function (data, status, headers, config) {

    });
    $http({
        method: 'GET',
        url: 'distinct_deps'
    }).success(function (data, status, headers, config) {
        $scope.distinct_deps = data.distinct_deps;
        $scope.distinct_deps.push("All");
    }).error(function (data, status, headers, config) {

    });

    $scope.findUnverified = function () {
        $http({
            method: 'GET',
            url: 'unverified_at_provost?department=' + $scope.forUnverified.dep
        }).success(function (data, status, headers, config) {
            $scope.unverified = data;
            $scope.getUnverified = [];
            $scope.getHeader = function () {
                return [
                    "Name", "Enrollment", "Faculty No", "Father Name", "Course Name", "Course Type",
                    "Sem/Year", "Department", "Hall", "Mobile", "District",
                    "State", "Country"
                ];
            };
            angular.forEach($scope.unverified, function (student) {
                $scope.getUnverified.push({
                    "Name": student.fullName,
                    "Enrollment": student.enroll,
                    "Faculty No": student.profile.facultyNumber,
                    "Father Name": student.profile.fatherName,
                    "Course Name": student.profile.courseName,
                    "Course Type": student.profile.courseType,
                    "Sem/Year": student.profile.semesterYear,
                    "Department": student.profile.department,
                    "Hall": student.profile.hall,
                    "Mobile": student.mobile,
                    "District": student.profile.city,
                    "State": student.profile.state,
                    "Country": student.profile.country
                });
            });
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.findVerified = function () {
        $http({
            method: 'GET',
            url: 'verified_by_provost?department=' + $scope.forVerified.dep
        }).success(function (data, status, headers, config) {
            $scope.verified_by_provost = data;
            $scope.getVerified = [];
            $scope.getHeader = function () {
                return [
                    "Name", "Enrollment", "Faculty No", "Father Name", "Course Name", "Course Type",
                    "Sem/Year", "Department", "Hall", "Mobile", "District",
                    "State", "Country"
                ];
            };
            angular.forEach($scope.verified_by_provost, function (student) {
                $scope.getVerified.push({
                    "Name": student.fullName,
                    "Enrollment": student.enroll,
                    "Faculty No": student.profile.facultyNumber,
                    "Father Name": student.profile.fatherName,
                    "Course Name": student.profile.courseName,
                    "Course Type": student.profile.courseType,
                    "Sem/Year": student.profile.semesterYear,
                    "Department": student.profile.department,
                    "Hall": student.profile.hall,
                    "Mobile": student.mobile,
                    "District": student.profile.city,
                    "State": student.profile.state,
                    "Country": student.profile.country
                });
            });
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.provost = {};
    $scope.provostAll = function () {
        $scope.pst = {"value": $scope.provost.value};
        angular.forEach($scope.unverified, function (doc) {
            doc.profile.verification[0].provost = $scope.pst.value;
        });
    };
    $scope.verify = function () {
        var ctr = 0;
        angular.forEach($scope.unverified, function (doc) {
            if (doc.profile.verification[0].provost) {
                ctr++;
            }
        });
        if (ctr === 0) {
            alert("Please mark atleast one to verify");
        } else {
            if (confirm("Are you sure want to verify marked student(s)")) {
                var selected = [];
                angular.forEach($scope.unverified, function (doc) {
                    if (doc.profile.verification[0].provost) {
                        selected.push({
                            "_id": doc._id.$oid,
                            "student_email": doc.email,
                            "student_name": doc.fullName,
                            "student_mobile": doc.mobile,
                            "provost": doc.profile.verification[0].provost,
                            "chairman": doc.profile.verification[1].chairman,
                            "verifiedBy": $scope.user.label
                        });
                    }
                });
                $http({
                    method: 'POST',
                    url: 'admin_verify_provost',
                    data: selected,
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).success(function (data, status, headers, config) {
                    if (data.success[0]) {
                        alert(data.message[0]);
                        $scope.findUnverified();
                    } else {
                        alert(data.message[0]);
                    }
                }).error(function (data, status, headers, config) {
                    alert("Error occurred.");
                });
            }
        }
    };
    $scope.reject = function (comment, _id) {
        if (comment == null) {
            alert("Please mention the reason for rejecting this request");
        } else {
            var selected = {"_id": _id.$oid, "comment": comment, "rejectedBy": $scope.user.label, "mode": "Chairman"};
            $http({
                method: 'POST',
                url: 'admin_reject',
                data: selected,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(function (data, status, headers, config) {
                alert(data.message);
                $scope.refresh();
            }).error(function (data, status, headers, config) {
                alert("error");
            });
        }
    };
    $scope.print = function (divName) {
        var printContents = document.getElementById(divName).innerHTML;
        var popupWin = window.open('', '_blank');
        popupWin.document.open();
        popupWin.document.write('<html><head><link href="../public/css/print.css" rel="stylesheet" type="text/css"/></head><body onload="window.print()">' + printContents + '</body></html>');
        popupWin.document.close();
    };
});
app.controller('VerificationDirectorCtrl', function ($scope, $http) {
    $http({
        method: 'GET',
        url: 'adminnotify'
    }).success(function (data, status, headers, config) {
        $scope.user = data;
    }).error(function (data, status, headers, config) {

    });
    $scope.refresh = function () {
        $http({
            method: 'GET',
            url: 'unverified_students_at_admin'
        }).success(function (data, status, headers, config) {
            $scope.unverified = data;
            $scope.refreshVerified();
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.refreshVerified = function () {
        $http({
            method: 'GET',
            url: 'verified'
        }).success(function (data, status, headers, config) {
            $scope.verified = data;
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.refresh();
    $scope.chairman = {};
    $scope.chairmanAll = function () {
        $scope.chmn = {"value": $scope.chairman.value};
        angular.forEach($scope.unverified, function (doc) {
            doc.profile.verification[1].chairman = $scope.chmn.value;
        });
    };
    $scope.verify = function () {
        var ctr = 0;
        angular.forEach($scope.unverified, function (doc) {
            if (doc.profile.verification[1].chairman) {
                ctr++;
            }
        });
        if (ctr === 0) {
            alert("Please mark atleast one to verify");
        } else {
            if (confirm("Are you sure want to verify marked student(s)")) {
                var selected = [];
                angular.forEach($scope.unverified, function (doc) {
                    if (doc.profile.verification[1].chairman) {
                        selected.push({
                            "_id": doc._id.$oid,
                            "student_email": doc.email,
                            "student_name": doc.fullName,
                            "student_mobile": doc.mobile,
                            "provost": doc.profile.verification[0].provost,
                            "chairman": doc.profile.verification[1].chairman,
                            "verifiedBy": $scope.user.label
                        });
                    }
                });
                $http({
                    method: 'POST',
                    url: 'admin_verify_chmn',
                    data: selected,
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).success(function (data, status, headers, config) {
                    if (data.success[0]) {
                        alert(data.message[0]);
                        $scope.refresh();
                    } else {
                        alert(data.message[0]);
                    }
                }).error(function (data, status, headers, config) {
                    alert("Error occurred.");
                });
            }
        }
    };
    $scope.reject = function (comment, _id) {
        if (comment == null) {
            alert("Please mention the reason for rejecting this request");
        } else {
            var selected = {"_id": _id.$oid, "comment": comment, "rejectedBy": $scope.user.label, "mode": "Chairman"};
            $http({
                method: 'POST',
                url: 'admin_reject',
                data: selected,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(function (data, status, headers, config) {
                alert(data.message);
                $scope.refresh();
            }).error(function (data, status, headers, config) {
                alert("error");
            });
        }
    };
});
app.controller('VerificationCoordinatorCtrl', function ($scope, $http) {
    $http({
        method: 'GET',
        url: 'adminnotify'
    }).success(function (data, status, headers, config) {
        $scope.user = data;
    }).error(function (data, status, headers, config) {

    });
    $scope.refresh = function () {
        $http({
            method: 'GET',
            url: 'unverified_students_at_admin'
        }).success(function (data, status, headers, config) {
            $scope.unverified = data;
            $scope.refreshVerified();
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.refreshVerified = function () {
        $http({
            method: 'GET',
            url: 'verified'
        }).success(function (data, status, headers, config) {
            $scope.verified = data;
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.refresh();
    $scope.chairman = {};
    $scope.chairmanAll = function () {
        $scope.chmn = {"value": $scope.chairman.value};
        angular.forEach($scope.unverified, function (doc) {
            doc.profile.verification[1].chairman = $scope.chmn.value;
        });
    };
    $scope.verify = function () {
        var ctr = 0;
        angular.forEach($scope.unverified, function (doc) {
            if (doc.profile.verification[1].chairman) {
                ctr++;
            }
        });
        if (ctr === 0) {
            alert("Please mark atleast one to verify");
        } else {
            if (confirm("Are you sure want to verify marked student(s)")) {
                var selected = [];
                angular.forEach($scope.unverified, function (doc) {
                    if (doc.profile.verification[1].chairman) {
                        selected.push({
                            "_id": doc._id.$oid,
                            "student_email": doc.email,
                            "student_name": doc.fullName,
                            "student_mobile": doc.mobile,
                            "provost": doc.profile.verification[0].provost,
                            "chairman": doc.profile.verification[1].chairman,
                            "verifiedBy": $scope.user.label
                        });
                    }
                });
                $http({
                    method: 'POST',
                    url: 'admin_verify_chmn',
                    data: selected,
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).success(function (data, status, headers, config) {
                    if (data.success[0]) {
                        alert(data.message[0]);
                        $scope.refresh();
                    } else {
                        alert(data.message[0]);
                    }
                }).error(function (data, status, headers, config) {
                    alert("Error occurred.");
                });
            }
        }
    };
    $scope.reject = function (comment, _id) {
        if (comment == null) {
            alert("Please mention the reason for rejecting this request");
        } else {
            var selected = {"_id": _id.$oid, "comment": comment, "rejectedBy": $scope.user.label, "mode": "Chairman"};
            $http({
                method: 'POST',
                url: 'admin_reject',
                data: selected,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(function (data, status, headers, config) {
                alert(data.message);
                $scope.refresh();
            }).error(function (data, status, headers, config) {
                alert("error");
            });
        }
    };
});
app.controller('VerificationPrincipalCtrl', function ($scope, $http) {
    $http({
        method: 'GET',
        url: 'adminnotify'
    }).success(function (data, status, headers, config) {
        $scope.user = data;
    }).error(function (data, status, headers, config) {

    });
    $scope.refresh = function () {
        $http({
            method: 'GET',
            url: 'unverified_students_at_admin'
        }).success(function (data, status, headers, config) {
            $scope.unverified = data;
            $scope.refreshVerified();
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.refreshVerified = function () {
        $http({
            method: 'GET',
            url: 'verified'
        }).success(function (data, status, headers, config) {
            $scope.verified = data;
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.refresh();
    $scope.chairman = {};
    $scope.chairmanAll = function () {
        $scope.chmn = {"value": $scope.chairman.value};
        angular.forEach($scope.unverified, function (doc) {
            doc.profile.verification[1].chairman = $scope.chmn.value;
        });
    };
    $scope.verify = function () {
        var ctr = 0;
        angular.forEach($scope.unverified, function (doc) {
            if (doc.profile.verification[1].chairman) {
                ctr++;
            }
        });
        if (ctr === 0) {
            alert("Please mark atleast one to verify");
        } else {
            if (confirm("Are you sure want to verify marked student(s)")) {
                var selected = [];
                angular.forEach($scope.unverified, function (doc) {
                    if (doc.profile.verification[1].chairman) {
                        selected.push({
                            "_id": doc._id.$oid,
                            "student_email": doc.email,
                            "student_name": doc.fullName,
                            "student_mobile": doc.mobile,
                            "provost": doc.profile.verification[0].provost,
                            "chairman": doc.profile.verification[1].chairman,
                            "verifiedBy": $scope.user.label
                        });
                    }
                });
                $http({
                    method: 'POST',
                    url: 'admin_verify_chmn',
                    data: selected,
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).success(function (data, status, headers, config) {
                    if (data.success[0]) {
                        alert(data.message[0]);
                        $scope.refresh();
                    } else {
                        alert(data.message[0]);
                    }
                }).error(function (data, status, headers, config) {
                    alert("Error occurred.");
                });
            }
        }
    };
    $scope.reject = function (comment, _id) {
        if (comment == null) {
            alert("Please mention the reason for rejecting this request");
        } else {
            var selected = {"_id": _id.$oid, "comment": comment, "rejectedBy": $scope.user.label, "mode": "Chairman"};
            $http({
                method: 'POST',
                url: 'admin_reject',
                data: selected,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(function (data, status, headers, config) {
                alert(data.message);
                $scope.refresh();
            }).error(function (data, status, headers, config) {
                alert("error");
            });
        }
    };
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
app.controller('PROCtrl', function ($scope, $http, $location) {
    $scope.vdouploaded = false;
    $http({
        method: 'GET',
        url: 'adminnotify'
    }).success(function (data, status, headers, config) {
        $scope.user = data;
    }).error(function (data, status, headers, config) {

    });
    $scope.video = {};
    $scope.uploadVideo = function () {
        var uploadInfo = {};
        if (!$scope.video.url) {
            uploadInfo = {
                "title": $scope.video.title,
                "des": $scope.video.des,
                "url": "",
                "isYouTube": false,
                "uploadedBy": $scope.user.label
            };
        } else {
            uploadInfo = {
                "title": $scope.video.title,
                "des": $scope.video.des,
                "url": $scope.video.url,
                "isYouTube": true,
                "uploadedBy": $scope.user.label
            };
        }
        var file = $scope.upload;
        var fsize = file.size;
        $scope.uploaded = false;
        var ftype = file.type;
        alert(ftype);
        var myArray = ['video/mp4'];
        if (myArray.indexOf(ftype) === -1) {
            alert("Unsupported file! Kindly select an MP4 videp file (.mp4)");
        }
//        } else if (fsize > 2e+6) { //do something if file size more than 1 mb (1048576)                        
//            alert("Size of the uploading file must not exceed 2 MB");
//        } 
        else {
            var uploadUrl = "/admin/upload_pro_vdo";
            var fd = new FormData();
            fd.append('file', file);
            $http.post(uploadUrl, fd, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined}
            })
                    .success(function (data, status, headers, config) {
                        if (data.success[0]) {
                            $scope.vdouploaded = true;
                            $location.path('#');
                            $scope.refresh();
                        } else {

                        }
                    })
                    .error(function () {
                    });

            $http({
                method: 'POST',
                url: 'pro_vdo_info',
                data: uploadInfo,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(function (data, status, headers, config) {
                if (data.success[0]) {
                    alert(data.message[0]);
                    $scope.refresh();
                } else {
                    alert(data.message[0]);
                }
            }).error(function (data, status, headers, config) {
                alert("Error occurred.");
            });
        }
    };
});
app.controller('ResearchScholarCtrl', function ($scope, $http, $location) {
    $scope.idtypes = ["Aadhaar", "Pan Card", "Voter ID", "Passport", "Driving License"];
//    $scope.legends = [
//        { "value": 0, "status": "New" },
//        { "value": 1, "status": "Pending" },
//        { "value": 2, "status": "Approved" },
//        { "value": 3, "status": "Rejected" },
//        { "value": 4, "status": "Published" }
//    ];
    $http({
        method: 'GET',
        url: 'populatesupervisors?at=Chairman'
    }).success(function (data, status, headers, config) {
        if (data.success) {
            $scope.supervisors = data.supervisors;
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
        if (confirm("Warning: Are sure want to delete this scholar. After deleteion data could not be recovered.")) {
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
    $scope.publishFrmChair = function (action, id, modalid) {
        var comment = '';
        if (action === 'approve') {
            comment = 'I hereby declare that ......';
        } else if (action === 'publish') {
            comment = 'I hereby declare that data has been examined and found correct. Same may be published on University website.';
        } else if (action === 'reject') {
            comment = $("#reject").val();
        }
        if (confirm("Are you sure want to " + action + " this scholar")) {
            $http({
                method: 'GET',
                url: 'deanaction?action=' + action + '&id=' + id + '&comment=' + comment
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $location.path("/view_scholar");
                    location.reload();
                } else {
                    alert(data.message);
                    $location.path("/view_scholar");
                    location.reload();
                }
            }).error(function (data, status, headers, config) {
                alert(data);
                $location.path("/view_scholar");
                location.reload();
            });
        }
    };
});
app.controller('ResearchScholarDeanCtrl', function ($scope, $http, $location, Faculties) {
    $scope.idtypes = ["Aadhaar", "Pan Card", "Voter ID", "Passport", "Driving License"];
    $scope.initdata = function (dean) {
        Faculties.get().then(function (data) {
            $scope.faculties = data;
            $scope.departments = [];
            angular.forEach($scope.faculties.data, function (fac) {
                if (fac.faculty === dean) {
                    angular.forEach(fac.departments, function (dep) {
                        $scope.departments.push(dep);
                    });
                }
            });
        });
    };
    $scope.populatesupervisor = function () {
        $http({
            method: 'GET',
            url: 'populatecosupervisor?dname=' + $scope.fac_dep
        }).success(function (data, status, headers, config) {
            if (data.success) {
                $scope.supervisors = data.cosupervisors;
            }
        }).error(function (data, status, headers, config) {
            alert(data);
        });
    };
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
                var uploadUrl = "/admin/addrscholardean?enroll=" + $scope.enroll + "&name=" + $scope.name +
                        "&regno=" + $scope.regno + "&dor=" + $scope.dor + "&doc=" + $scope.doc + "&fac_dep=" + $scope.fac_dep +
                        "&supervisor=" + $scope.supervisor +
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
                                $location.path("/add_scholar_dean");
                                location.reload();
                            } else {
                                alert(data.message);
                            }
                        })
                        .error(function (data) {
                            alert(data);
                        });
            } else if ($scope.cption === 'Yes' && $scope.ctype === 'Internal') {
                var uploadUrl = "/admin/addrscholardean?enroll=" + $scope.enroll + "&name=" + $scope.name +
                        "&regno=" + $scope.regno + "&dor=" + $scope.dor + "&doc=" + $scope.doc + "&fac_dep=" + $scope.fac_dep +
                        "&supervisor=" + $scope.supervisor +
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
                                $location.path("/add_scholar_dean");
                                location.reload();
                            } else {
                                alert(data.message);
                            }
                        })
                        .error(function (data) {
                            alert(data);
                        });
            } else if ($scope.cption === 'Yes' && $scope.ctype === 'External') {
                var uploadUrl = "/admin/addrscholardean?enroll=" + $scope.enroll + "&name=" + $scope.name +
                        "&regno=" + $scope.regno + "&dor=" + $scope.dor + "&doc=" + $scope.doc + "&fac_dep=" + $scope.fac_dep +
                        "&supervisor=" + $scope.supervisor +
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
                                $location.path("/add_scholar_dean");
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
    $http({
        method: 'GET',
        url: 'populatsecholars?at=dean'
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
                "Department": scholar.department,
                "Scholar Name": scholar.name,
                "Mode of Ph.D": scholar.mode,
                "Registration No": scholar.regno,
                "Registration Date": new Date(scholar.dor.$date).toDateString(),
                "Research Topic": scholar.rtopic,
                "Likely date of Completion of Ph.D.": new Date(scholar.doc.$date).toDateString(),
                "Availing Fellowship": scholar.fellowship,
                "Funding Agency of Fellowshi": scholar.fagency,
                "Status": scholar.phdstatus,
                "Supervisor": scholar.supervisor,
                "IDType": scholar.idtype,
                "IDNo": scholar.idno
            });
        });
    }).error(function (data, status, headers, config) {
        alert(data);
    });

    $scope.deanAction = function (action, id, modalid) {
        var comment = '';
        if (action === 'approve') {
            comment = 'I hereby declare that ......';
        } else if (action === 'publish') {
            comment = 'I hereby declare that ......';
        } else if (action === 'reject') {
            comment = $("#reject").val();
        }
        if (confirm("Are you sure want to " + action + " this scholar")) {
            $http({
                method: 'GET',
                url: 'deanaction?action=' + action + '&id=' + id + '&comment=' + comment
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $location.path("/view_scholar_dean");
                    location.reload();
                } else {
                    alert(data.message);
                    $location.path("/view_scholar_dean");
                    location.reload();
                }
            }).error(function (data, status, headers, config) {
                alert(data);
                $location.path("/view_scholar_dean");
                location.reload();
            });
        }
    };
});
app.controller('ResearchScholarCoordinatorCtrl', function ($scope, $http, $location, Faculties) {
    $scope.idtypes = ["Aadhaar", "Pan Card", "Voter ID", "Passport", "Driving License"];
    $http({
        method: 'GET',
        url: 'populatesupervisors?at=Coordinator'
    }).success(function (data, status, headers, config) {
        if (data.success) {
            $scope.supervisors = data.supervisors;
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
                var uploadUrl = "/admin/addrscholardean?enroll=" + $scope.enroll + "&name=" + $scope.name +
                        "&regno=" + $scope.regno + "&dor=" + $scope.dor + "&doc=" + $scope.doc + "&fac_dep=" + $scope.fac_dep +
                        "&supervisor=" + $scope.supervisor +
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
                                $location.path("/add_scholar_dean");
                                location.reload();
                            } else {
                                alert(data.message);
                            }
                        })
                        .error(function (data) {
                            alert(data);
                        });
            } else if ($scope.cption === 'Yes' && $scope.ctype === 'Internal') {
                var uploadUrl = "/admin/addrscholardean?enroll=" + $scope.enroll + "&name=" + $scope.name +
                        "&regno=" + $scope.regno + "&dor=" + $scope.dor + "&doc=" + $scope.doc + "&fac_dep=" + $scope.fac_dep +
                        "&supervisor=" + $scope.supervisor +
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
                                $location.path("/add_scholar_dean");
                                location.reload();
                            } else {
                                alert(data.message);
                            }
                        })
                        .error(function (data) {
                            alert(data);
                        });
            } else if ($scope.cption === 'Yes' && $scope.ctype === 'External') {
                var uploadUrl = "/admin/addrscholardean?enroll=" + $scope.enroll + "&name=" + $scope.name +
                        "&regno=" + $scope.regno + "&dor=" + $scope.dor + "&doc=" + $scope.doc + "&fac_dep=" + $scope.fac_dep +
                        "&supervisor=" + $scope.supervisor +
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
                                $location.path("/add_scholar_dean");
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
    $http({
        method: 'GET',
        url: 'populatsecholars?at=dean'
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
                "Department": scholar.department,
                "Scholar Name": scholar.name,
                "Mode of Ph.D": scholar.mode,
                "Registration No": scholar.regno,
                "Registration Date": new Date(scholar.dor.$date).toDateString(),
                "Research Topic": scholar.rtopic,
                "Likely date of Completion of Ph.D.": new Date(scholar.doc.$date).toDateString(),
                "Availing Fellowship": scholar.fellowship,
                "Funding Agency of Fellowshi": scholar.fagency,
                "Status": scholar.phdstatus,
                "Supervisor": scholar.supervisor,
                "IDType": scholar.idtype,
                "IDNo": scholar.idno
            });
        });
    }).error(function (data, status, headers, config) {
        alert(data);
    });

    $scope.deanAction = function (action, id, modalid) {
        var comment = '';
        if (action === 'approve') {
            comment = 'I hereby declare that ......';
        } else if (action === 'publish') {
            comment = 'I hereby declare that ......';
        } else if (action === 'reject') {
            comment = $("#reject").val();
        }
        if (confirm("Are you sure want to " + action + " this scholar")) {
            $http({
                method: 'GET',
                url: 'deanaction?action=' + action + '&id=' + id + '&comment=' + comment
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $location.path("/view_scholar_dean");
                    location.reload();
                } else {
                    alert(data.message);
                    $location.path("/view_scholar_dean");
                    location.reload();
                }
            }).error(function (data, status, headers, config) {
                alert(data);
                $location.path("/view_scholar_dean");
                location.reload();
            });
        }
    };
});
app.controller('ResearchScholarPublishedCtrl', function ($scope, $http, $location, Faculties) {
    $scope.idtypes = ["Aadhaar", "Pan Card", "Voter ID", "Passport", "Driving License"];
    $http({
        method: 'GET',
        url: 'publishedrscholars?at=Chairman'
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
                "Registration Date": scholar.regdate,
                "Research Topic": scholar.topic,
                "Likely date of Completion of Ph.D.": scholar.completiondate,
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
    $scope.print = function (divName) {
        var printContents = document.getElementById(divName).innerHTML;
        var popupWin = window.open('', '_blank');
        popupWin.document.open();
        popupWin.document.write('<html><head><link href="../public/css/print.css" rel="stylesheet" type="text/css"/></head><body onload="window.print()">' + printContents + '</body></html>');
        popupWin.document.close();
    };
});
app.controller('RSEditPublishedCtrl', function ($scope, $http, $location, Faculties) {
    $scope.idtypes = ["Aadhaar", "Pan Card", "Voter ID", "Passport", "Driving License"];
    $scope.found = false;
    $scope.notfound = false;
    $scope.findRScholar = function () {
        $http({
            method: 'GET',
            url: 'findrscholar?regno=' + $scope.regno + "&from=Chairman"
        }).success(function (data, status, headers, config) {
            if (angular.equals(data, {})) {
                $scope.found = false;
                $scope.notfound = true;
            } else {
                $scope.rscholar = data;
                $scope.found = true;
                $scope.notfound = false;
            }
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.editRScholar = function () {
        var file = $scope.upload;
        var fsize = file.name;
        var ftype = file.type;
        var name = $scope.rscholar.name;
        var myArray = ['image/png', 'image/gif', 'image/jpeg', 'image/pjpeg'];
        if ($.trim(name) === '') {
            alert("Only spaces not allowed in name");
        } else if (myArray.indexOf(ftype) === -1) {
            alert("Unsupported file! Kindly select an image file (png, gif, jpeg, pjpeg)");
        } else if (fsize > 40000) { //do something if file size more than 2 mb (2e+6)                        
            alert("Size of the uploading file must not exceed 40 KB");
        } else {
            var uploadUrl = "/admin/editrscholar?regno=" + $scope.regno + "&name=" + $scope.rscholar.name + "&enroll=" + $scope.rscholar.enrolno + "&idtype=" + $scope.rscholar.idtype + "&idno=" + $scope.rscholar.idno;
            var fd = new FormData();
            fd.append('file', file);
            $http.post(uploadUrl, fd, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined}
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $location.path("/edit_published");
                    location.reload();
                } else {
                    alert(data.message);
                }
            }).error(function (data) {
                alert(data);
            });
        }
    };
});

app.controller('ApprovalChairmanCtrl', function ($scope, $http, $location) {
    $scope.refresh = function () {
        $http({
            method: 'GET',
            url: 'unapproved?at=Chairman'
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

        });
    };
    $http({
        method: 'GET',
        url: 'approved?at=Chairman'
    }).success(function (data, status, headers, config) {
        $scope.approved = data;
        $scope.getApproved = [];
        $scope.getHeaderA = function () {
            return [
                "Name", "Enrollment", "Faculty No", "Course Type", "Course Name",
                "Sem/Year", "Department", "Hall", "Mobile", "District",
                "State", "Country", "Continuation Type"
            ];
        };
        angular.forEach($scope.approved, function (student) {
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
            $scope.getApproved.push({
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

    });
    $scope.refresh();
    $scope.approve = function (id) {
        var params = {
            "id": id,
            "at": "Chairman"
        };
        $http({
            method: 'POST',
            url: 'approve',
            data: params,
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).success(function (data, status, headers, config) {
            if (data.success) {
                alert(data.message);
                $scope.refresh();
                $location.path("/approval");
                location.reload();
            } else {
                alert(data.message);
            }
        }).error(function (data, status, headers, config) {
            alert(data);
        });
    };
    $scope.reject = function (id) {
        alert($scope.rejection);
//        if ($.trim($scope.rejection) === '') {
//            alert("Only spaces not allowed in the reason box.");
//        } else {
//            var selected = {"id": id, "comment": $scope.rejection, "rejectedBy": $scope.user.label, "mode": "Chairman"};
//            $http({
//                method: 'POST',
//                url: 'reject',
//                data: selected,
//                headers: {
//                    'Content-Type': 'application/x-www-form-urlencoded'
//                }
//            }).success(function (data, status, headers, config) {
//                alert(data.message);
//                $scope.refresh();
//            }).error(function (data, status, headers, config) {
//                alert("error");
//            });
//        }
    };
    $scope.print = function (divName) {
        var printContents = document.getElementById(divName).innerHTML;
        var popupWin = window.open('', '_blank');
        popupWin.document.open();
        popupWin.document.write('<html><head><link href="../public/css/print.css" rel="stylesheet" type="text/css"/></head><body onload="window.print()">' + printContents + '</body></html>');
        popupWin.document.close();
    };
});
app.controller('ApprovalProvostCtrl', function ($scope, $http, $location) {
    $scope.refresh = function () {
        $http({
            method: 'GET',
            url: 'unapproved?at=Provost'
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

        });
    };
    $http({
        method: 'GET',
        url: 'approved?at=Provost'
    }).success(function (data, status, headers, config) {
        $scope.approved = data;
        $scope.getApproved = [];
        $scope.getHeaderA = function () {
            return [
                "Name", "Enrollment", "Faculty No", "Course Type", "Course Name",
                "Sem/Year", "Department", "Hall", "Mobile", "District",
                "State", "Country", "Continuation Type"
            ];
        };
        angular.forEach($scope.approved, function (student) {
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
            $scope.getApproved.push({
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

    });
    $scope.refresh();
    $scope.approve = function (id) {
        var params = {
            "id": id,
            "at": "Provost"
        };
        $http({
            method: 'POST',
            url: 'approve',
            data: params,
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).success(function (data, status, headers, config) {
            if (data.success) {
                alert(data.message);
                $scope.refresh();
                $location.path("/approval_pst");
                location.reload();
            } else {
                alert(data.message);
            }
        }).error(function (data, status, headers, config) {
            alert(data);
        });
    };
    $scope.reject = function (id) {
        alert($scope.rejection);
//        if ($.trim($scope.rejection) === '') {
//            alert("Only spaces not allowed in the reason box.");
//        } else {
//            var selected = {"id": id, "comment": $scope.rejection, "rejectedBy": $scope.user.label, "mode": "Chairman"};
//            $http({
//                method: 'POST',
//                url: 'reject',
//                data: selected,
//                headers: {
//                    'Content-Type': 'application/x-www-form-urlencoded'
//                }
//            }).success(function (data, status, headers, config) {
//                alert(data.message);
//                $scope.refresh();
//            }).error(function (data, status, headers, config) {
//                alert("error");
//            });
//        }
    };
    $scope.print = function (divName) {
        var printContents = document.getElementById(divName).innerHTML;
        var popupWin = window.open('', '_blank');
        popupWin.document.open();
        popupWin.document.write('<html><head><link href="../public/css/print.css" rel="stylesheet" type="text/css"/></head><body onload="window.print()">' + printContents + '</body></html>');
        popupWin.document.close();
    };
});
app.controller('ApprovalDeanCtrl', function ($scope, $http, $location, Faculties) {
    Faculties.get().then(function (data) {
        $scope.faculties = data;
    });
    $http({
        method: 'GET',
        url: 'adminnotify'
    }).success(function (data, status, headers, config) {
        $scope.user = data;
        $scope.dean = $scope.user.label.replace("Dean", "").trim();
        $scope.departments = [];
        var fac = data.label.replace('Dean', '').trim();
        for (var i = 0; i < $scope.faculties.data.length; i++) {
            if ($scope.faculties.data[i].faculty === fac) {
                for (var v = 0; v < $scope.faculties.data[i].departments.length; v++) {
                    $scope.departments.push($scope.faculties.data[i].departments[v]);
                }

            }
        }
    }).error(function (data, status, headers, config) {

    });
    $scope.findUnapproved = function () {
        $http({
            method: 'GET',
            url: 'unapprovedatdean?dep=' + $scope.dep
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

        });
        $scope.approve = function (id) {
            var params = {
                "id": id,
                "at": "Chairman"
            };
            $http({
                method: 'POST',
                url: 'approve',
                data: params,
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $location.path("/approval_dean");
                    location.reload();
                } else {
                    alert(data.message);
                }
            }).error(function (data, status, headers, config) {
                alert(data);
            });
        };
    };
    $scope.getApprovedDean = function () {
        $http({
            method: 'GET',
            url: 'approvedatdean?dep=' + $scope.verified_dep
        }).success(function (data, status, headers, config) {
            $scope.approved = data;
            $scope.getApproved = [];
            $scope.getHeaderA = function () {
                return [
                    "Name", "Enrollment", "Faculty No", "Course Type", "Course Name",
                    "Sem/Year", "Department", "Hall", "Mobile", "District",
                    "State", "Country", "Continuation Type"
                ];
            };
            angular.forEach($scope.approved, function (student) {
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
                $scope.getApproved.push({
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