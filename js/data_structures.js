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