angular
    .module('app')
    .controller('MainController', MainController);

    function MainController(){
    	var self = this;

    	self.text = "BOOM!";
    	self.helloWorld = helloWorld;
    	// passing function reference, NOT function call
    	self.loveBillMurray;
    	self.love = love;
    	self.noLove = noLove;
    	// Makes the function a method of the controller

    	function helloWorld() {
    		alert("Hello WORLD!");


    	}
    	function love() {
    		self.loveBillMurray = true;

    	}
    	function noLove() {
    		self.loveBillMurray = false;
    	}

    }