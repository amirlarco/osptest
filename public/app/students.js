var app = angular.module('students', ['ui.router', 'Services']);
app.config(function ($stateProvider) {
    $stateProvider.state('profile', {
        url: "/profile", //both are in same template
        views: {
            "contents": {templateUrl: "../public/templates/students/profile.jsp"}
        }
    }).state('personal', {
        url: "/personal", //both are in same template
        views: {
            "contents": {templateUrl: "../public/templates/students/profile_form.jsp"}
        }
    }).state('academic', {
        url: "/personal", //both are in same template
        views: {
            "contents": {templateUrl: "../public/templates/students/profile_form.jsp"}
        }
    }).state('emailverification', {
        url: "/emailverification",
        views: {
            "contents": {templateUrl: "../public/templates/students/emailverification.jsp"}
        }
    }).state('mobileverification', {
        url: "/mobileverification",
        views: {
            "contents": {templateUrl: "../public/templates/students/mobileverification.jsp"}
        }
    }).state('success', {
        url: "/success",
        views: {
            "contents": {templateUrl: "../public/templates/students/success.jsp"}
        }
    }).state('emailsent', {
        url: "/emailsent",
        data: {message: "bksdfkjsdh"},
        views: {
            "contents": {templateUrl: "../public/templates/students/emailsent.jsp"}
        }
    }).state('chairman', {
        url: "/chairman",
        views: {
            "contents": {templateUrl: "../public/templates/students/chairman.jsp"}
        }
    }).state('provost', {
        url: "/provost",
        views: {
            "contents": {templateUrl: "../public/templates/students/provost.jsp"}
        }
    }).state('apply_wifi', {
        url: "/apply_wifi",
        views: {
            "contents": {templateUrl: "../public/templates/students/apply_wifi.jsp"}
        }
    }).state('apply_email', {
        url: "/apply_email",
        views: {
            "contents": {templateUrl: "../public/templates/students/apply_email.jsp"}
        }
    }).state('apply_gcl', {
        url: "/apply_gcl",
        views: {
            "contents": {templateUrl: "../public/templates/students/apply_gcl.jsp"}
        }
    }).state('apply_rchlab', {
        url: "/apply_rchlab",
        views: {
            "contents": {templateUrl: "../public/templates/students/apply_rchlab.jsp"}
        }
    }).state('profilephoto', {
        url: "/profilephoto",
        views: {
            "contents": {templateUrl: "../public/templates/students/profilephoto.jsp"}
        }
    }).state('highschoolcertificate', {
        url: "/highschoolcertificate",
        views: {
            "contents": {templateUrl: "../public/templates/students/highschoolcertificate.jsp"}
        }
    }).state('signature', {
        url: "/signature",
        views: {
            "contents": {templateUrl: "../public/templates/students/signature.jsp"}
        }
    }).state('addconti', {
        url: "/addconti",
        views: {
            "contents": {templateUrl: "../public/templates/students/addconti.jsp"}
        }
    }).state('contact', {
        url: "/contact",
        views: {
            "contents": {templateUrl: "../public/templates/students/contact.jsp"}
        }
    }).state('uploads', {
        url: "/uploads",
        views: {
            "contents": {templateUrl: "../public/templates/students/uploads.jsp"}
        }
    }).state('password_reset', {
        url: "/password_reset",
        views: {
            "contents": {templateUrl: "../public/templates/students/password_reset.jsp"}
        }
    }).state('feedback', {
        url: "/feedback",
        views: {
            "contents": {templateUrl: "../public/templates/students/feedback.jsp"}
        }
    }).state('change_mac', {
        url: "/change_mac",
        views: {
            "contents": {templateUrl: "../public/templates/students/change_mac.jsp"}
        }
    }).state('change_wifi_passwd', {
        url: "/change_wifi_passwd",
        views: {
            "contents": {templateUrl: "../public/templates/students/change_wifi_passwd.jsp"}
        }
    }).state('complain', {
        url: "/complain",
        views: {
            "contents": {templateUrl: "../public/templates/students/complain.jsp"}
        }
    }).state('my_complaints', {
        url: "/my_complaints",
        views: {
            "contents": {templateUrl: "../public/templates/students/my_complaints.jsp"}
        }
    }).state('contactsview', {
        url: "/contactsview",
        views: {
            "contents": {templateUrl: "../public/templates/students/contactsview.jsp"}
        }
    }).state('otpview', {
        url: "/otpview",
        views: {
            "contents": {templateUrl: "../public/templates/students/otpview.jsp"}
        }
    }).state('changemobileview', {
        url: "/changemobileview",
        views: {
            "contents": {templateUrl: "../public/templates/students/changemobileview.jsp"}
        }
    }).state('changeemailview', {
        url: "/changeemailview",
        views: {
            "contents": {templateUrl: "../public/templates/students/changeemailview.jsp"}
        }
    }).state('processing', {
        url: "/processing",
        views: {
            "contents": {templateUrl: "../public/templates/students/processing.jsp"}
        }
    }).state('renew', {
        url: "/renew",
        views: {
            "contents": {templateUrl: "../public/templates/students/renew.jsp"}
        }
    }).state('cntstatus', {
        url: "/cntstatus",
        views: {
            "contents": {templateUrl: "../public/templates/students/cntstatus.jsp"}
        }
    }).state('cntedit', {
        url: "/cntedit",
        views: {
            "contents": {templateUrl: "../public/templates/students/contedit.jsp"}
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
app.controller('ServicesCtlr', function ($location, $scope, $rootScope, $http, Cities, Courses, Countries, Departments, Halls, States, StatesCity) {
    $scope.refresh = function () {
        $http({
            method: 'GET',
            url: 'notify'
        }).success(function (data, status, headers, config) {
            $scope.user = data;
            var notification = [];
            if (data.profile.isCompleted === false) {
                notification.push({
                    message: "Your profile is not completed",
                    router: "personal"
                });
            }
            if (data.contact.mobileID.isVerified === false) {
                notification.push({
                    message: "Your mobile is not verified",
                    router: "mobileverification",
                    isChecked: false
                });
            }
            if (data.contact.emailID.isVerified === false) {
                notification.push({
                    message: "Your email is not verified",
                    router: "emailverification",
                    isChecked: false
                });
            }
            if (data.attachments[0].isUploaded === false) {
                notification.push({
                    message: "You have not yet uploaded your Profile Photo",
                    router: "profilephoto",
                    isChecked: false
                });
            }
            if (data.attachments[1].isUploaded === false) {
                notification.push({
                    message: "You have not yet uploaded your High School Certificate",
                    router: "highschoolcertificate",
                    isChecked: false
                });
            }
            if (data.attachments[2].isUploaded === false) {
                notification.push({
                    message: "You have not yet uploaded your Signature",
                    router: "signature",
                    isChecked: false
                });
            }
            if (data.attachments[3].isUploaded === false) {
                notification.push({
                    message: "You have not yet uploaded your Addmission/Continuation Slip",
                    router: "addconti",
                    isChecked: false
                });
            }
            $rootScope.notification = notification;
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.formData = {};
    $scope.formUser = {};
    $rootScope.alert = {};
    $scope.genders = ['Male', 'Female'];
    //$scope.courseTypes = ['UG', 'PG', 'Research', 'PDF'];
    $scope.courseTypes = [
        {"name": "UG", "type": "UG"},
        {"name": "PG", "type": "PG"},
        {"name": "PHD", "type": "PHD"},
        {"name": "PDF/RA", "type": "PDF"}
    ];
    $scope.refresh();
    $scope.cities = [];
    $scope.citiesE = [];

    Courses.get().then(function (data) {
        $scope.courses = data;
    });
    Countries.get().then(function (data) {
        $scope.countries = data;
    });
    Departments.get().then(function (data) {
        $scope.departments = data;
    });
    Halls.get().then(function (data) {
        $scope.halls = data;
    });
    States.get().then(function (data) {
        $scope.states = data;
    });
    StatesCity.get().then(function (data) {
        $scope.state_city = data;
    });
    $scope.populateCities = function (state) {
        $scope.cities = [];
        angular.forEach($scope.state_city.data, function (st) {
            if (st.name === state) {
                angular.forEach(st.city, function (cty) {
                    $scope.cities.push(cty);
                });
            }
        });
    };
    $scope.populateCitiesE = function (state) {
        $scope.citiesE = [];
        angular.forEach($scope.state_city.data, function (st) {
            if (st.name === state) {
                angular.forEach(st.city, function (cty) {
                    $scope.citiesE.push(cty);
                });
            }
        });
    };
    $scope.createProfile = function () {
        if ($scope.formData.hall.name === "N.R.S.C. Hall") {
            $scope.formUser = {
                "fullName": $scope.formData.fullName,
                "fatherName": $scope.formData.fatherName,
                "motherName": $scope.formData.motherName,
                "dob": $scope.formData.dob,
                "gender": $scope.formData.gender,
                "address": $scope.formData.address,
                "city": $scope.formData.city,
                "state": $scope.formData.state.name,
                "country": $scope.formData.country.name,
                "pincode": $scope.formData.pincode,
                "courseType": $scope.formData.courseType,
                "courseName": $scope.formData.courseName.name,
                "semesterYear": $scope.formData.semesterYear,
                "facultyNumber": $scope.formData.facultyNumber,
                "department": $scope.formData.department.name,
                "hall": $scope.formData.hall.name,
                "nrscadd": $scope.formData.nrscadd,
                "emergency_name": $scope.formData.emergency_name,
                "emergency_mobile": $scope.formData.emergency_mobile,
                "emergency_email": $scope.formData.emergency_email,
                "emergency_add": $scope.formData.emergency_add,
                "emergency_state": $scope.formData.emergency_state.name,
                "emergency_city": $scope.formData.emergency_city,
                "emergency_relation": $scope.formData.emergency_relation
            };
        } else if ($scope.formData.hall.name !== "N.R.S.C. Hall") {
            $scope.formUser = {
                "fullName": $scope.formData.fullName,
                "fatherName": $scope.formData.fatherName,
                "motherName": $scope.formData.motherName,
                "dob": $scope.formData.dob,
                "gender": $scope.formData.gender,
                "address": $scope.formData.address,
                "city": $scope.formData.city,
                "state": $scope.formData.state.name,
                "country": $scope.formData.country.name,
                "pincode": $scope.formData.pincode,
                "courseType": $scope.formData.courseType,
                "courseName": $scope.formData.courseName.name,
                "semesterYear": $scope.formData.semesterYear,
                "facultyNumber": $scope.formData.facultyNumber,
                "department": $scope.formData.department.name,
                "hall": $scope.formData.hall.name,
                "hostel": $scope.formData.hostel,
                "room": $scope.formData.room,
                "emergency_name": $scope.formData.emergency_name,
                "emergency_mobile": $scope.formData.emergency_mobile,
                "emergency_email": $scope.formData.emergency_email,
                "emergency_add": $scope.formData.emergency_add,
                "emergency_state": $scope.formData.emergency_state.name,
                "emergency_city": $scope.formData.emergency_city,
                "emergency_relation": $scope.formData.emergency_relation
            };
        }        
        $http({
            method: 'POST',
            url: 'createprofile',
            data: $scope.formUser,
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).success(function (data, status, headers, config) {
            $scope.profileresponse = data;
            if (data.success[0]) {
                $location.path('success');
                $scope.refresh();
            }
        }).error(function (data, status, headers, config) {
            alert("error");
        });
    };
    $scope.refresh();
    $scope.rschapplied = false;
    $scope.applyRSCH = function () {
        $http({
            method: 'POST',
            url: 'apply_for_rsch_lab'
        }).success(function (data, status, headers, config) {
            if (data.success[0]) {
                $scope.rschapplied = true;
                $scope.refresh();
            }
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.emailapplied = false;
    $scope.applyEmail = function () {
        $http({
            method: 'POST',
            url: 'apply_for_email'

        }).success(function (data, status, headers, config) {
            if (data.success[0]) {
                $scope.emailapplied = true;
                $scope.refresh();
            }
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.gclapplied = false;
    $scope.applyGCL = function () {
        $http({
            method: 'POST',
            url: 'apply_for_gcl_lab'
        }).success(function (data, status, headers, config) {
            if (data.success[0]) {
                $scope.gclapplied = true;
                $scope.refresh();
            }
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.apply = {};
    $scope.wifiapplied = false;
    $scope.applyWIFI = function () {
        $http({
            method: 'POST',
            url: 'apply_for_wifi',
            data: $scope.apply,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        }).success(function (data, status, headers, config) {
            if (data.success[0]) {
                $scope.wifiapplied = true;
                $scope.refresh();
            }
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.photouploaded = false;
    $scope.certuploaded = false;
    $scope.siguploaded = false;
    $scope.adcontuploaded = false;
    $scope.reset = false;
    $scope.uploadPhoto = function () {
        var file = $scope.upload;
        var fsize = file.size;
        $scope.uploaded = false;
        var ftype = file.type;
        var myArray = ['image/png', 'image/gif', 'image/jpeg', 'image/pjpeg'];
        if (myArray.indexOf(ftype) === -1) {
            alert("Unsupported file! Kindly select an image file (png, gif, jpeg, pjpeg)");
        } else if (fsize > 2e+6) { //do something if file size more than 1 mb (1048576)                        
            alert("Size of the uploading file must not exceed 2 MB");
        } else {
            var uploadUrl = "/students/uploadphoto";
            var fd = new FormData();
            fd.append('file', file);
            $http.post(uploadUrl, fd, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined}
            })
                    .success(function (data, status, headers, config) {
                        if (data.success[0]) {
                            $scope.photouploaded = true;
                            $location.path('#');
                            $scope.refresh();
                        } else {

                        }
                    })
                    .error(function () {
                    });
        }
    };
    $scope.uploadCert = function () {
        var file = $scope.upload;
        var fsize = file.size;
        $scope.uploaded = false;
        var ftype = file.type;
        var myArray = ['image/png', 'image/gif', 'image/jpeg', 'image/pjpeg'];
        if (myArray.indexOf(ftype) === -1) {
            alert("Unsupported file! Kindly select an image file (png, gif, jpeg, pjpeg)");
        } else if (fsize > 2e+6) { //do something if file size more than 1 mb (1048576)                        
            alert("Size of the uploading file must not exceed 2 MB");
        } else {
            var uploadUrl = "/students/uploadcert";
            var fd = new FormData();
            fd.append('file', file);
            $http.post(uploadUrl, fd, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined}
            })
                    .success(function (data, status, headers, config) {
                        if (data.success[0]) {
                            $scope.certuploaded = true;
                            $location.path('#');
                            $scope.refresh();
                        } else {

                        }
                    })
                    .error(function () {
                    });
        }
    };
    $scope.uploadSignature = function () {
        var file = $scope.upload;
        var fsize = file.size;
        $scope.uploaded = false;
        var ftype = file.type;
        var myArray = ['image/png', 'image/gif', 'image/jpeg', 'image/pjpeg'];
        if (myArray.indexOf(ftype) === -1) {
            alert("Unsupported file! Kindly select an image file (png, gif, jpeg, pjpeg)");
        } else if (fsize > 30000) { //do something if file size more than 1 mb (1048576)                        
            alert("Size of the uploading file must not exceed 30 KB");
        } else {
            var uploadUrl = "/students/uploadsignature";
            var fd = new FormData();
            fd.append('file', file);
            $http.post(uploadUrl, fd, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined}
            })
                    .success(function (data, status, headers, config) {
                        if (data.success[0]) {
                            $scope.siguploaded = true;
                            $location.path('#');
                            $scope.refresh();
                        } else {

                        }
                    })
                    .error(function () {
                    });
        }
    };
    $scope.uploadAddConti = function () {
        var file = $scope.upload;
        var fsize = file.size;
        $scope.uploaded = false;
        var ftype = file.type;
        var myArray = ['image/png', 'image/gif', 'image/jpeg', 'image/pjpeg'];
        if (myArray.indexOf(ftype) === -1) {
            alert("Unsupported file! Kindly select an image file (png, gif, jpeg, pjpeg)");
        } else if (fsize > 2e+6) { //do something if file size more than 1 mb (1048576)                        
            alert("Size of the uploading file must not exceed 2 MB");
        } else {
            var uploadUrl = "/students/uploadaddconti";
            var fd = new FormData();
            fd.append('file', file);
            $http.post(uploadUrl, fd, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined}
            })
                    .success(function (data, status, headers, config) {
                        if (data.success[0]) {
                            console.log(data.message[0]);
                            $scope.adcontuploaded = true;
                            $location.path('#');
                            $scope.refresh();
                        } else {

                        }
                    })
                    .error(function () {
                    });
        }
    };
    $scope.feedbackDone = false;
    $scope.suggestion = {};
    $scope.feedback = function () {
        var feed = {
            "subject": $scope.suggestion.subject,
            "description": $scope.suggestion.description
        };
        $http({
            method: 'POST',
            url: 'feedback',
            data: feed,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        }).success(function (data, status, headers, config) {
            if (data.success[0]) {
                $scope.feedbackDone = true;
                $scope.refresh();
            } else if (!data.success[0]) {
                alert(data.message[0]);
            }
        }).error(function (data, status, headers, config) {
            alert("Error");
        });
    };
    $scope.resetPassword = function () {
        $http({
            method: 'POST',
            url: 'resetpassword',
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        }).success(function (data, status, headers, config) {
            if (data.success[0]) {
                $scope.reset = true;
                $scope.refresh();
            } else if (!data.success[0]) {
                alert(data.message[0]);
            }
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.sendEmail = function () {
        var email = {
            "email": $scope.user.email,
            "enroll": $scope.user.enroll,
            "fullName": $scope.user.fullName
        };
        $http({
            method: 'POST',
            url: 'email_verification',
            data: email,
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }

        }).success(function (data, status, headers, config) {
            if (data.success[0]) {
                $location.path('/emailsent');
            } else {
                alert(data.message[0]);
            }
        }).error(function (data, status, headers, config) {
            alert(data.message[0]);
        });
    };
    $scope.sms_sent = false;
    $scope.verified = false;
    $scope.mobile = {};
    $scope.sendSMS = function () {
        var email = {
            "mobile": $scope.user.mobile,
            "enroll": $scope.user.enroll
        };
        $http({
            method: 'POST',
            url: 'mobile_verification',
            data: email,
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).success(function (data, status, headers, config) {
            if (data.success[0]) {
                $scope.sms_sent = true;
            } else {
                alert(data.message[0]);
            }
        }).error(function (data, status, headers, config) {
            alert(data.message[0]);
        });
    };
    $scope.verifyMobile = function () {
        var otp = {
            "otp": $scope.mobile.otp
        };
        $http({
            method: 'POST',
            url: 'verify_mobile',
            data: otp,
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).success(function (data, status, headers, config) {
            if (data.success[0]) {
                $scope.verified = true;
                $scope.sms_sent = false;
                $scope.refresh();
            } else {
                alert(data.message[0]);
            }
        }).error(function (data, status, headers, config) {

        });
    };
    // Password Reset
    $scope.reset = false;
    $scope.otp_sent = false;
    $scope.otp_verified = false;
    $scope.sms = {};
    $scope.sendOTP = function () {
        var email = {
            "mobile": $scope.user.mobile,
            "enroll": $scope.user.enroll
        };
        $http({
            method: 'POST',
            url: 'mobile_verification',
            data: email,
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).success(function (data, status, headers, config) {
            if (data.success[0]) {
                $scope.sms_sent = true;
            } else {
                alert(data.message[0]);
            }
        }).error(function (data, status, headers, config) {
            alert(data.message[0]);
        });
    };
    $scope.verifyOTP = function () {
        var otp = {
            "otp": $scope.sms.otp
        };
        $http({
            method: 'POST',
            url: 'verify_mobile',
            data: otp,
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).success(function (data, status, headers, config) {
            if (data.success[0]) {
                $scope.otp_verified = true;
                $scope.refresh();
            } else {
                alert(data.message[0]);
            }
        }).error(function (data, status, headers, config) {

        });
    };

    //Contact Update
    $scope.updated = false;
    $scope.updateContact = function () {
        var update = {
            "email": $scope.user.email,
            "mobile": $scope.user.mobile,
            "_id": $scope.user._id.$oid
        };
        $http({
            method: 'POST',
            url: 'updatecontact',
            data: update,
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).success(function (data, status, headers, config) {
            if (data.success[0]) {
                $scope.updated = true;
                $scope.refresh();
            } else {
                alert(data.message[0]);
            }
        }).error(function (data, status, headers, config) {
            alert("Error");
        });
    };
});
app.controller('UserCtrl', function ($scope, $http) {
    $http({
        method: 'GET',
        url: 'notify'
    }).success(function (data, status, headers, config) {
        $scope.user = data;
    }).error(function (data, status, headers, config) {

    });
    $http({
        method: 'GET',
        url: 'contuser'
    }).success(function (data, status, headers, config) {
        $scope.contuser = data;
    }).error(function (data, status, headers, config) {

    });

    $http({
        method: 'GET',
        url: 'contstatus'
    }).success(function (data, status, headers, config) {
        $scope.contstatus = data;
    }).error(function (data, status, headers, config) {

    });
});
app.controller('UpdateContactsCtrl', function ($scope, $http, $location) {
    $scope.emailupdated = false;
    $scope.mobileupdated = false;
    $http({
        method: 'GET',
        url: 'notify'
    }).success(function (data, status, headers, config) {
        $scope.user = data;
    }).error(function (data, status, headers, config) {

    });
    $scope.changeEmail = function () {
        $location.path('processing');
        $http({
            method: 'GET',
            url: 'sendotp?from=email'
        }).success(function (data, status, headers, config) {
            if (data.success) {
                $location.path('otpview');
            } else {
                alert(data.message);
            }
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.changeMobile = function () {
        $http({
            method: 'GET',
            url: 'sendotp?from=mobile'
        }).success(function (data, status, headers, config) {
            if (data.success) {
                $location.path('otpview');
            } else {
                alert(data.message);
            }
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.verifyOTP = function () {
        $location.path('processing');
        $http({
            method: 'GET',
            url: 'verifyotp?otpmobile=' + $scope.otpmobile + '&otpemail=' + $scope.otpemail
        }).success(function (data, status, headers, config) {
            if (data.success) {
                if (data.from === "email") {
                    $location.path('changeemailview');
                } else if (data.from === 'mobile') {
                    $location.path('changemobileview');
                }
            } else {
                alert(data.message);
            }
        }).error(function (data, status, headers, config) {

        });
    };
    $scope.updateEmail = function () {
        $http({
            method: 'GET',
            url: 'changeemail?newemail=' + $scope.newemail
        }).success(function (data, status, headers, config) {
            if (data.success) {
                $scope.emailupdated = true;
                $scope.message = data.message;
            } else {
                alert(data.message);
                $location.path("#/");
            }
        }).error(function (data, status, headers, config) {
            alert(data);
            $location.path("#/");
        });
    };
    $scope.updateMobile = function () {
        $http({
            method: 'GET',
            url: 'changemobile?newmobile=' + $scope.newmobile
        }).success(function (data, status, headers, config) {
            if (data.success) {
                $scope.mobileupdated = true;
                $scope.message = data.message;
            } else {
                alert(data.message);
                $location.path("#/");
            }
        }).error(function (data, status, headers, config) {
            alert(data);
            $location.path("#/");
        });
    };
});
app.controller('WiFiUpdateCtrl', function ($scope, $http) {

    $http({
        method: 'GET',
        url: 'notify'
    }).success(function (data, status, headers, config) {
        $scope.user = data;
    }).error(function (data, status, headers, config) {

    });

    $scope.reset = false;
    $scope.updated = false;
    $scope.otp_sent = false;
    $scope.otp_verified = false;
    $scope.sms = {};
    $scope.sendOTP = function () {
        var mobile = {
            "mobile": $scope.user.mobile,
            "enroll": $scope.user.enroll
        };
        $http({
            method: 'POST',
            url: 'mobile_verification',
            data: mobile,
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).success(function (data, status, headers, config) {
            if (data.success[0]) {
                $scope.otp_sent = true;
            } else {
                alert(data.message[0]);
            }
        }).error(function (data, status, headers, config) {
            alert(data.message[0]);
        });
    };
    $scope.verifyOTP = function () {
        var otp = {
            "otp": $scope.sms.otp
        };
        $http({
            method: 'POST',
            url: 'verify_mobile',
            data: otp,
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).success(function (data, status, headers, config) {
            if (data.success[0]) {
                $scope.otp_verified = true;
                $scope.refresh();
            } else {
                alert(data.message[0]);
            }
        }).error(function (data, status, headers, config) {

        });
    };

    $scope.pass = {};
    $scope.resetWiFiPassword = function () {
        var password = {
            "p1": $scope.pass.pass1,
            "p2": $scope.pass.pass2
        };
        if ($scope.pass.pass1 !== $scope.pass.pass2) {
            alert("Both passwords are not matching.");
        } else {
            $http({
                method: 'POST',
                url: 'resetwifipassword',
                data: password,
                headers: {'Content-Type': 'application/x-www-form-urlencoded'}
            }).success(function (data, status, headers, config) {
                if (data.success[0]) {
                    $scope.reset = true;
                    $scope.refresh();
                } else if (!data.success[0]) {
                    alert(data.message[0]);
                }
            }).error(function (data, status, headers, config) {

            });
        }
    };
    $scope.mac = {};
    $scope.updateMAC = function () {
        var macid = {
            "mac": $scope.mac.id
        };
        $http({
            method: 'POST',
            url: 'updatemac',
            data: macid,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        }).success(function (data, status, headers, config) {
            if (data.success[0]) {
                $scope.updated = true;
                $scope.refresh();
            } else if (!data.success[0]) {
                alert(data.message[0]);
            }
        }).error(function (data, status, headers, config) {

        });
    };
});
app.controller('ContinuationCtrl', function ($scope, $http, $location) {
    $scope.cntstudent = $scope.user;
    $scope.cntstudent.profile.semesterYear = '';
    $scope.cntstudent.profile.hall = '';
    $scope.cntstudent.profile.department = '';
    $scope.cntstudent.profile.room = '';
    $scope.cntstudent.profile.hostel = '';
    $scope.cntstudent.profile.facultyNumber = '';
    $http({
        method: 'GET',
        url: 'contuser'
    }).success(function (data, status, headers, config) {
        $scope.contuser = data;
    }).error(function (data, status, headers, config) {

    });
    $http({
        method: 'GET',
        url: 'linestatus'
    }).success(function (data, status, headers, config) {
        $scope.linestatus = data;
    }).error(function (data, status, headers, config) {

    });
    $scope.showstatus = function (from) {

    };
    $http({
        method: 'GET',
        url: 'contstatus'
    }).success(function (data, status, headers, config) {
        $scope.contstatus = data;
    }).error(function (data, status, headers, config) {

    });
    $scope.halls = [
        "Abdullah Hall", "Aftab Hall", "Mohammad Habib Hall", "Hadi Hasan Hall", "Mohsinul Mulk Hall",
        "Nadeem Tarin Hall", "Indira Gandhi Hall", "N.R.S.C. Hall", "Ross Masood Hall", "Sarojni Naidu Hall",
        "S. S. Hall (North)", "S. S. Hall (South)", "Sir Sulaiman Hall", "Viqarul Mulk Hall", "Sir Zaiuddin Hall",
        "Dr. B.R. Ambedkar Hall", "Begum Sulatan Jahan Hall", "Bibi Fatima Hall", "Not Applicable"
    ];
    $scope.deps = [
        "AMU Murshidabad Centre, West Bengal", "Agricultural Eco. Business Mngt.", "Agricultural Microbiology",
        "Ajmal Khan Tibbiya College (for BUMS Students)", "American European Studies", "Community College",
        "Amraz-e-Jild wa Zohrawia", "Amraz-e-niswan-wa-Atfal", "Amraze Jild wa Zohrawiya", "AMU Kishanganj Centre",
        "AMU Malappuram Centre, Kerala", "Anaesthesiology", "Anatomy", "Applied Chemistry", "Applied Mathematics",
        "Applied Physics", "Applied Sciences and Humanities Section", "Arabic", "Architecture", "Asia-Pacific Studies",
        "Bio-chemistry (JNMC)", "Bio-chemistry (Life Sciences)", "Botany", "Business Administration",
        "Business Administration - Murshidabad", "Cardiothoracic Surgery", "Career Planning Centre",
        "Centre for Comparative Study of Indian Language Culture", "Chemical Engineering", "Chemistry",
        "Chinese Studies", "Computer Centre", "Civil Engineering", "Commerce", "Community Medicine",
        "Computer Engineering", "Computer Science", "Conservative dentistry Endodontics", "Department of Tashreehul Badan",
        "Dermatology", "Economics", "Education", "Education - Murshidabad", "Electrical Engineering",
        "Electronics Engineering", "English", "Fine Arts", "Foreign Languages", "Forensic Medicine", "Geography",
        "Geology", "Hifzan-e-Sehat-wa-Tibbi Samaji", "Hindi", "History", "Home Sciences", "Ilaj Bit Tadbeer",
        "Ilmul Advia", "Ilmul Amraz", "Interdisciplinary Nanotechnology Centre", "Interdisciplinary Biotechnology Unit", "Interdisciplinary Brain Research Centre",
        "Interdisciplinary Department of Remote Sensing and GIS Applications", "Islamic Studies", "Jarahat", "Kulliyat",
        "Law", "Law - Murshidabad", "Leather and Footwear Technology", "Library and Information Science", "Linguistics",
        "Mass Communication", "Mathematics", "Mechanical Engineering", "Medicine", "Microbiology",
        "Modern Indian Languages", "Molijat", "Munafeul Aza", "Museology", "Neuro Surgery", "Obstetrics and Gynaecology ",
        "Ophthalmology", "Oral and Maxillofacial Surgery", "Oral Pathology/Oral Medicine Radiology",
        "Orthodontics and Dentofacial Orthopedics", "Orthopaedic Surgery", "Oto-Rhino-Laryngology (E.N.T.)",
        "Paediatric Surgery", "Paediatrics", "Paediatrics Preventive Dentistry", "Pathology",
        "Periodontics and Community Dentistry", "Persian", "Petroleum Studies", "Pharmacology", "Philosophy",
        "Physical Education", "Physics", "Physiology", "Plant Protection", "Plastic Surgery", "Political Science",
        "Post Harvest Engineering and Technology", "Prosthodontics", "Psychiatry", "Psychology", "Radio-diagnosis",
        "Radiotherapy", "Rajee Gandhi Institute of Diabetes", "Saidla", "Sanskrit", "Shia Theology", "Social Work",
        "Sociology", "South African Brazilian Studies", "South Asia and Indian Ocean Region Studies",
        "Statistics and Operations Research", "Strategic Security Studies", "Stretegic Studies", "Sunni Theology",
        "Surgery", "Tahaffuzi-wa-Samaji-Tib", "Tashreehul Badan", "TB and Chest Diseases", "Urdu",
        "West Asian Studies and North African Studies", "Wildlife Sciences", "Womens College", "Womens Polytechnic",
        "Zoology", "J.N. Medical College (For MBBS Students)", "University Polytechnic", "Institute of Opthalmology",
        "Centre for Promotional Courses", "Centre of Professional Courses", "Residential Coaching Academy",
        "Food Craft Institute", "Bridge Course for Graduates", "Centre for South African and Brazilian Studies",
        "Centre for Women's Studies", "Centre for Nehru Studies", "K.A. Nizami Centre for Quranic Studies",
        "Centre for Comparative studies and Indian Languages", "Career and Planning Centre", "Public Relations Office"
    ];
    $scope.courseTypes = [
        {"name": "UG", "type": "UG"},
        {"name": "PG", "type": "PG"},
        {"name": "PHD", "type": "PHD"},
        {"name": "Post Doctoral", "type": "PDF"}
    ];
    $scope.success = false;
    $scope.continuation = true;
    $scope.doContinuationSame = function () {
        var file = $scope.contUpload;
        var fsize = file.size;
        var url = '';
        if ($scope.cntstudent.profile.hall === 'N.R.S.C. Hall') {
            url = 'docontinuation?enroll=' + $scope.cntstudent.enroll + '&semesterYear=' 
                    + $scope.cntstudent.profile.semesterYear + '&hall=' + $scope.cntstudent.profile.hall 
                    + '&nrscadd=' + $scope.cntstudent.profile.nrscadd + '&type=' + $scope.type + "&dep="
                    + $scope.cntstudent.profile.department;
        } else {
            url = 'docontinuation?enroll=' + $scope.cntstudent.enroll + '&semesterYear=' 
                    + $scope.cntstudent.profile.semesterYear + '&hall=' + $scope.cntstudent.profile.hall + '&hostel=' 
                    + $scope.cntstudent.profile.hostel + '&room=' + $scope.cntstudent.profile.room + '&type=' 
                    + $scope.type + "&dep=" + $scope.cntstudent.profile.department;
        }
        var ftype = file.type;
        var myArray = ['image/png', 'image/gif', 'image/jpeg', 'image/pjpeg'];
        if (myArray.indexOf(ftype) === -1) {
            alert("Unsupported file! Kindly select an image file (png, gif, jpeg, pjpeg)");
        } else if (fsize > 2e+6) { //do something if file size more than 2 mb (2e+6)                        
            alert("Size of the uploading file must not exceed 1 MB");
        } else {
            var fd = new FormData();
            fd.append('file', file);
            $http.post(url, fd, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined}
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $scope.success = true;
                    $scope.continuation = false;
                } else {
                    alert(data.message);
                }
            }).error(function (data) {
                alert(data);
            });
        }
    };
    $scope.doContinuationNew = function () {
        var file = $scope.contUpload;
        var fsize = file.size;
        var url = '';
        if ($scope.cntstudent.profile.hall === 'N.R.S.C. Hall') {
            url = 'docontinuation?enroll=' + $scope.cntstudent.enroll + '&courseType=' + $scope.cntstudent.profile.courseType.name
                    + '&courseName=' + $scope.cntstudent.profile.courseName.name
                    + '&semesterYear=' + $scope.cntstudent.profile.semesterYear
                    + '&hall=' + $scope.cntstudent.profile.hall + '&nrscadd=' + $scope.cntstudent.profile.nrscadd + '&type='
                    + $scope.type + '&facno=' + $scope.cntstudent.profile.facultyNumber + '&dep=' + $scope.cntstudent.profile.department;
        } else {
            url = 'docontinuation?enroll=' + $scope.cntstudent.enroll + '&courseType=' + $scope.cntstudent.profile.courseType.name
                    + '&courseName=' + $scope.cntstudent.profile.courseName.name
                    + '&semesterYear=' + $scope.cntstudent.profile.semesterYear
                    + '&hall=' + $scope.cntstudent.profile.hall + '&hostel=' + $scope.cntstudent.profile.hostel + '&room='
                    + $scope.cntstudent.profile.room + '&type=' + $scope.type + '&facno=' + $scope.cntstudent.profile.facultyNumber
                    + '&dep=' + $scope.cntstudent.profile.department;
        }
        var ftype = file.type;
        var myArray = ['image/png', 'image/gif', 'image/jpeg', 'image/pjpeg'];
        if (myArray.indexOf(ftype) === -1) {
            alert("Unsupported file! Kindly select an image file (png, gif, jpeg, pjpeg)");
        } else if (fsize > 2e+6) { // do something if file size more than 2 mb (2e+6)
            alert("Size of the uploading file must not exceed 1 MB");
        } else {
            var fd = new FormData();
            fd.append('file', file);
            $http.post(url, fd, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined}
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $scope.success = true;
                    $scope.continuation = false;
                } else {
                    alert(data.message);
                }
            }).error(function (data) {
                alert(data);
            });
        }
    };
});
app.controller('ContinuationEditCtrl', function ($scope, $http, $location, Courses) {

    Courses.get().then(function (data) {
        $scope.courses = data;
    });

    $http({
        method: 'GET',
        url: 'contuser'
    }).success(function (data, status, headers, config) {
        $scope.contuser = data;
    }).error(function (data, status, headers, config) {

    });

    $http({
        method: 'GET',
        url: 'contstatus'
    }).success(function (data, status, headers, config) {
        $scope.contstatus = data;
    }).error(function (data, status, headers, config) {

    });

    $scope.halls = [
        "Abdullah Hall", "Aftab Hall", "Mohammad Habib Hall", "Hadi Hasan Hall", "Mohsinul Mulk Hall",
        "Nadeem Tarin Hall", "Indira Gandhi Hall", "N.R.S.C. Hall", "Ross Masood Hall", "Sarojni Naidu Hall",
        "S. S. Hall (North)", "S. S. Hall (South)", "Sir Sulaiman Hall", "Viqarul Mulk Hall", "Sir Zaiuddin Hall",
        "Dr. B.R. Ambedkar Hall", "Begum Sulatan Jahan Hall", "Bibi Fatima Hall", "Not Applicable"
    ];
    $scope.deps = [
        "AMU Murshidabad Centre, West Bengal", "Agricultural Eco. Business Mngt.", "Agricultural Microbiology",
        "Ajmal Khan Tibbiya College (for BUMS Students)", "American European Studies", "Community College",
        "Amraz-e-Jild wa Zohrawia", "Amraz-e-niswan-wa-Atfal", "Amraze Jild wa Zohrawiya", "AMU Kishanganj Centre",
        "AMU Malappuram Centre, Kerala", "Anaesthesiology", "Anatomy", "Applied Chemistry", "Applied Mathematics",
        "Applied Physics", "Applied Sciences and Humanities Section", "Arabic", "Architecture", "Asia-Pacific Studies",
        "Bio-chemistry (JNMC)", "Bio-chemistry (Life Sciences)", "Botany", "Business Administration",
        "Business Administration - Murshidabad", "Cardiothoracic Surgery", "Career Planning Centre",
        "Centre for Comparative Study of Indian Language Culture", "Chemical Engineering", "Chemistry",
        "Chinese Studies", "Computer Centre", "Civil Engineering", "Commerce", "Community Medicine",
        "Computer Engineering", "Computer Science", "Conservative dentistry Endodontics", "Department of Tashreehul Badan",
        "Dermatology", "Economics", "Education", "Education - Murshidabad", "Electrical Engineering",
        "Electronics Engineering", "English", "Fine Arts", "Foreign Languages", "Forensic Medicine", "Geography",
        "Geology", "Hifzan-e-Sehat-wa-Tibbi Samaji", "Hindi", "History", "Home Sciences", "Ilaj Bit Tadbeer",
        "Ilmul Advia", "Ilmul Amraz", "Interdisciplinary Nanotechnology Centre", "Interdisciplinary Biotechnology Unit", "Interdisciplinary Brain Research Centre",
        "Interdisciplinary Department of Remote Sensing and GIS Applications", "Islamic Studies", "Jarahat", "Kulliyat",
        "Law", "Law - Murshidabad", "Leather and Footwear Technology", "Library and Information Science", "Linguistics",
        "Mass Communication", "Mathematics", "Mechanical Engineering", "Medicine", "Microbiology",
        "Modern Indian Languages", "Molijat", "Munafeul Aza", "Museology", "Neuro Surgery", "Obstetrics and Gynaecology ",
        "Ophthalmology", "Oral and Maxillofacial Surgery", "Oral Pathology/Oral Medicine Radiology",
        "Orthodontics and Dentofacial Orthopedics", "Orthopaedic Surgery", "Oto-Rhino-Laryngology (E.N.T.)",
        "Paediatric Surgery", "Paediatrics", "Paediatrics Preventive Dentistry", "Pathology",
        "Periodontics and Community Dentistry", "Persian", "Petroleum Studies", "Pharmacology", "Philosophy",
        "Physical Education", "Physics", "Physiology", "Plant Protection", "Plastic Surgery", "Political Science",
        "Post Harvest Engineering and Technology", "Prosthodontics", "Psychiatry", "Psychology", "Radio-diagnosis",
        "Radiotherapy", "Rajee Gandhi Institute of Diabetes", "Saidla", "Sanskrit", "Shia Theology", "Social Work",
        "Sociology", "South African Brazilian Studies", "South Asia and Indian Ocean Region Studies",
        "Statistics and Operations Research", "Strategic Security Studies", "Stretegic Studies", "Sunni Theology",
        "Surgery", "Tahaffuzi-wa-Samaji-Tib", "Tashreehul Badan", "TB and Chest Diseases", "Urdu",
        "West Asian Studies and North African Studies", "Wildlife Sciences", "Womens College", "Womens Polytechnic",
        "Zoology", "J.N. Medical College (For MBBS Students)", "University Polytechnic", "Institute of Opthalmology",
        "Centre for Promotional Courses", "Centre of Professional Courses", "Residential Coaching Academy",
        "Food Craft Institute", "Bridge Course for Graduates", "Centre for South African and Brazilian Studies",
        "Centre for Women's Studies", "Centre for Nehru Studies", "K.A. Nizami Centre for Quranic Studies",
        "Centre for Comparative studies and Indian Languages", "Career and Planning Centre", "Public Relations Office"
    ];
    $scope.courseTypes = [
        {"name": "UG", "type": "UG"},
        {"name": "PG", "type": "PG"},
        {"name": "PHD", "type": "PHD"},
        {"name": "Post Doctoral", "type": "PDF"}
    ];
    $scope.editContinuationNew = function () {
        var file = $scope.contEditUpload;
        var fsize = file.size;
        var url = '';
        if ($scope.contuser.details[1].hall === 'N.R.S.C. Hall') {
            url = 'editcontinuation?enroll=' + $scope.contuser.enroll + '&courseType=' + $scope.contuser.details[1].courseType.name
                    + '&courseName=' + $scope.contuser.details[1].courseName.name
                    + '&semesterYear=' + $scope.contuser.details[1].semesterYear
                    + '&hall=' + $scope.contuser.details[1].hall + '&nrscadd=' + $scope.contuser.details[1].nrscadd + '&type='
                    + $scope.contuser.type + '&facno=' + $scope.contuser.details[1].facno + '&dep=' + $scope.contuser.details[1].dep;
        } else {
            url = 'editcontinuation?enroll=' + $scope.contuser.enroll + '&courseType=' + $scope.contuser.details[1].courseType.name
                    + '&courseName=' + $scope.contuser.details[1].courseName.name
                    + '&semesterYear=' + $scope.contuser.details[1].semesterYear
                    + '&hall=' + $scope.contuser.details[1].hall + '&hostel=' + $scope.contuser.details[1].hostel + '&room='
                    + $scope.contuser.details[1].room + '&type=' + $scope.contuser.type + '&facno=' + $scope.contuser.details[1].facno
                    + '&dep=' + $scope.contuser.details[1].dep;
        }
        var ftype = file.type;
        var myArray = ['image/png', 'image/gif', 'image/jpeg', 'image/pjpeg'];
        if (myArray.indexOf(ftype) === -1) {
            alert("Unsupported file! Kindly select an image file (png, gif, jpeg, pjpeg)");
        } else if (fsize > 2e+6) { // do something if file size more than 2 mb (2e+6)
            alert("Size of the uploading file must not exceed 1 MB");
        } else {
            var fd = new FormData();
            fd.append('file', file);
            $http.post(url, fd, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined}
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $location.path("/cntstatus");
                    location.reload();
                } else {
                    alert(data.message);
                }
            }).error(function (data) {
                alert(data);
            });
        }
    };
    $scope.editContinuationSame = function () {
        var file = $scope.contUploadEditSame;
        var fsize = file.size;
        var url = '';
        if ($scope.contuser.details[1].hall === 'N.R.S.C. Hall') {
            url = 'editcontinuationsame?enroll=' + $scope.contuser.enroll
                    + '&semesterYear=' + $scope.contuser.details[1].semesterYear
                    + '&hall=' + $scope.contuser.details[1].hall + '&nrscadd=' + $scope.contuser.details[1].nrscadd
                    + '&dep=' + $scope.contuser.details[1].dep;
        } else {
            url = 'editcontinuationsame?enroll=' + $scope.contuser.enroll + '&courseType='
                    + '&semesterYear=' + $scope.contuser.details[1].semesterYear
                    + '&hall=' + $scope.contuser.details[1].hall + '&hostel=' + $scope.contuser.details[1].hostel
                    + '&room=' + $scope.contuser.details[1].room
                    + '&dep=' + $scope.contuser.details[1].dep;
        }
        var ftype = file.type;
        var myArray = ['image/png', 'image/gif', 'image/jpeg', 'image/pjpeg'];
        if (myArray.indexOf(ftype) === -1) {
            alert("Unsupported file! Kindly select an image file (png, gif, jpeg, pjpeg)");
        } else if (fsize > 2e+6) { // do something if file size more than 2 mb (2e+6)
            alert("Size of the uploading file must not exceed 1 MB");
        } else {
            var fd = new FormData();
            fd.append('file', file);
            $http.post(url, fd, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined}
            }).success(function (data, status, headers, config) {
                if (data.success) {
                    alert(data.message);
                    $location.path("/cntstatus");
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
