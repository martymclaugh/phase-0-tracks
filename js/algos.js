
// create length variable to record length of phrases
// create return phrase variable
// create for statement to itterate through the arrays
	// if the phrase is longer than the current length of the length variable, change the length variable to the length of that phrase.
	// change the return phrase variable to that phrase
	// return the 'return phrase variable'
var array = ["long phrase", "even longer phrase", "longest phrase ever dude"];
var secondarray = ["11111", "2222222", "333333333333"];

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
// DRIVER CODE
console.log(longestPhrase(array));
console.log(longestPhrase(secondarray));