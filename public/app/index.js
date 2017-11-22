
var app = angular.module('indexApp', []);
app.filter("trustUrl", ['$sce', function ($sce) {
        return function (recordingUrl) {
            return $sce.trustAsResourceUrl(recordingUrl);
        };
    }]);
app.controller('proCtrl', function ($scope, $http) {
    $http({
        method: 'GET',
        url: '/admin/provdo'
    }).success(function (data, status, headers, config) {
        $scope.pro = data.pro_vdo1;
        var pr = $scope.pro[0];
        $scope.pro_vdo1 = pr[0];
        console.log($scope.pro_vdo1);
    }).error(function (data, status, headers, config) {

    });
//    $scope.pro_vdo1 = {
//        "title": "Mention Your Title Here",
//        "des": "Description of the Video",
//        "url": "YouTube URL for this Video",
//        "isYouTube": true,
//        "uploaded": true,
//        "uploadedBy": "PRO Public Relations Office",
//        "uploadedOn": "Tue 01, Dec 2016"
//    };    
});