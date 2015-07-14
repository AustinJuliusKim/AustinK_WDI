var myCar = {
	make : "Porsche",
	model : "Panemera",
	color : "black",
	honk : function() {
		console.log("Beep, Beep");
	}
}

var driver1 = {
	firstName : "Austin",
	lastName : "Kim",
	email : "austinjuliuskim@gmail.com",
	birthday : new Date("April 12, 1990"),
	favFoods : ["Pizza", "Thai", "Chicken", "Steak", "Fries"],
	family : { brother : "Joe",
			father : "Steve",
			mother : "Euina",
			cousins : ["Peter", "Syvlia", "Adela", "Stephanie"]
	},
	age : function() {
		var numMillSec = new Date() - this.birthday;
		return ("Austin is " + numMillSec + " milleseconds old!");
	}
}


var driver2 = {
	firstName : "Joe",
	lastName : "Kim",
	email : "Joe@example.com",
	relation : "brother",
	family : { brother : "Austin",
	// Can replace "Austin" wtih Driver1 to nest object
			father : "Steve",
			mother : "Euina",
		}
}

