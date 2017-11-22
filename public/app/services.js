var service = angular.module('Services', []);

service
        .factory('Cities', function ($http) {
            return {
                get: function () {
                    return $http.get('../public/data/indiancities.json');
                }
            };
        })
        .factory('Courses', function ($http) {
            return {
                get: function () {
                    return $http.get('../public/data/courses.json');
                }
            };
        })
        .factory('Countries', function ($http) {
            return {
                get: function () {
                    return $http.get('../public/data/countries.json');
                }
            };
        })
        .factory('Departments', function ($http) {
            return {
                get: function () {
                    return $http.get('../public/data/departments.json');
                }
            };
        })
        .factory('Halls', function ($http) {
            return {
                get: function () {
                    return $http.get('../public/data/halls.json');
                }
            };
        })
        .factory('States', function ($http) {
            return {
                get: function () {
                    return $http.get('../public/data/states.json');
                }
            };
        })
        .factory('Faculties', function ($http) {
            return {
                get: function () {
                    return $http.get('../public/data/faculties.json');
                }
            };
        })
        .factory('StatesCity', function ($http) {
            return {
                get: function () {
                    return $http.get('../public/data/state_city.json');
                }
            };
        });
