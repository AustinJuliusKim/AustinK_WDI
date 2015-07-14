angular
	.module("saveKitties")
	.controller("KittiesController", KittiesController);

	function KittiesController(){
		var self = this; 
		// capturing the variable that ensures when you reference 'self',
		// it's always referencing the KittiesController
		self.listOfKitties = [
							{
								catName: 'Karl',
								monthsOld: 5,
								gender: 'boy',
								image: "images/carl.png",
								adopted: true,
							},
							{
								catName: 'Jack',
								monthsOld: 4,
								gender: 'boy',
								image: "images/jack.png",
								adopted: false
							},
							{
								catName: 'Oscar',
								monthsOld: 2,
								gender: 'boy',
								image: "images/oscar.png",
								adopted: false
							},
							{
								catName: 'Princess Mew',
								monthsOld: 3,
								gender: 'girl',
								image: "images/princessmew.png",
								adopted: false
							}

						] // end of kitties array
}; // end of KittiesController