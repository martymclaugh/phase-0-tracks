var colors = ["gray", "red", "orange", "black"];
var names = ["george", "charlie", "max", "larry"];

colors.push("blue");
names.push("eric");
console.log(colors);
console.log(names);

var horses = {};

for (var i = 0; i < colors.length; i++) {
	horses[names[i]] = colors[i];
}
console.log(horses);

function Car(year, make, model) {
	console.log("Our new car:", this);
	this.year = year;
	this.make = make;
	this.model = model;

	this.start = function() { console.log("Vroom!"); };
}

console.log("Let's build a new car...");

var newCar = new Car(2006, "Subaru", "WRX");

console.log(newCar);

newCar.start();

var anotherCar = new Car(2016, "BMW", "3 series");

console.log(anotherCar);

anotherCar.start();

for (var key in newCar) {
	var obj = newCar[key]
	console.log(key + ": " + obj);
}







