// create a function that reverse a string
	// create output variable
	// create a for statement
		// create an index variable set to the length of the word minus 1 
		// for each letter in the word
		// if i is greater than negative 1
		// subtract a number from the index.
		// add the letter to the output string

function reverseString(string){
	var output = ''
	for (var i = (string.length - 1); i > -1; i--)
		output += string[i]
	{
		console.log(output)
	}
}

reverseString("Hellooooooo")

if (1 == 1){
	console.log(reverseString("you did it!"))
}