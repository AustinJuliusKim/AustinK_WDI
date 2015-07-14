angular
	.module('dataBindingApp')
	.controller('MainController', MainController);

	function MainController() {
		var self = this;

		self.test = "Controller is working!";

	}