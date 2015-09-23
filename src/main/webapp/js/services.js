angular.module('twitterApp').service('TwitterService', function($http) {

	var self = this;

	this.findAll = function() {
		return $http.get('/Alltweets')
	};
});
