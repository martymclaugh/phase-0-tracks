// create empty array that will contain the longest phrase.
// iterrate through array of phrases and store them in the empty array.
	// if the phrase is longer than the phrase in the empty array, do nothing.
	// otherwise add the phrase to the array and delete the phrase at index 0
	// return the only phrase in the array.
var array = ["long phrase", "even longer phrase", "longest phrase ever dude"];
var secondarray = ["11111", "2222222", "333333333333"]
function longestPhrase(list) {
	this.list = list;
	var longphrase = []
	for (var i = 0; i < list.length; i++) {
		if (list[i].length > longphrase[i].length){
			longphrase.push(list);
			longphrase.splice (0, 1);
		}
	}
	return longphrase[0];
}

console.log(longestPhrase(array));
console.log(longestPhrase(secondarray));