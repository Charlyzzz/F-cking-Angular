'use strict';
angular.module('twitterApp').controller('TwitterController',
		function($scope, TwitterService) {

			TwitterService.findAll().then(function(response) {
				$scope.tweets = response.data;
			});

		});