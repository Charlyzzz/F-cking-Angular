'use strict';
angular.module('twitterApp').controller('TwitterController',
		function($scope, TwitterService) {

			TwitterService.findAll().success(function(response) {
				$scope.tweets = response.data;
			});

		});