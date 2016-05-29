
// create length variable to record length of phrases
// create return phrase variable
// create for statement to itterate through the arrays
	// if the phrase is longer than the current length of the length variable, change the length variable to the length of that phrase.
	// change the return phrase variable to that phrase
	// return the 'return phrase variable'


function longestPhrase(list) {
	this.list = list;
	var length = 0;
	var longphrase;
	for (var i = 0; i < list.length; i++) {
		if (list[i].length > length){
			var length = list[i].length;
			longphrase = list[i];
		}
	}
	return longphrase
}

// create a funtion that sees if two objects share the same key value pair.
	// define a function that takes two objects as parameters
	// create a for statement that creates a variable for each objects key value pair
	// if the two objects key value pairs are the same, return true.
	// otherwise return false.


function compareObjects(object1, object2) {
	for (var key in object1) {
		var property = object1[key];
		var one = (property + key)
		for (var key2 in object2) {
			var property2 = object2[key2]
			var two = (property2 + key2)
			if (one == two){
				return true
				console.log("true")
			} else {
				return false
				console.log("false")
			}
		}
	}
}

function randomWords(num) {
	this.num = num
	var endresult = [];
	for (var i = 0; i < num; i++) {
    	var word = " ";
		var alphabet = "abcdefghijklmnopqrstuvwxyz";
	    for( var i = 0; i < (Math.floor(Math.random() * 10)); i++ ) {
	        word += alphabet.charAt(Math.floor(Math.random() * 26) + 1);
	    }
    	endresult.push(word);
    	word = " "
	}
	return console.log(endresult)
}


// DRIVER CODE
randomWords(10)


// var person = {firstName:"John", lastName:"Doe", age: 50, eyeColor:"blue"};
// var person2 = {firstName:"John", lastName:"asdf", age:26, eyeColor:"not blue"};

// console.log(compareObjects(person, person2))

// var array = ["long phrase", "even longer phrase", "longest phrase ever dude"];
// var secondarray = ["11111", "2222222", "333333333333"];

// console.log(longestPhrase(array));
// console.log(longestPhrase(secondarray));