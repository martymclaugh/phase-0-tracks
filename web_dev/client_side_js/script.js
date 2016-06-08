console.log("working")

var gif = document.getElementById("gif");
var button = document.getElementById("button");

function showGif() {
	gif.style.visibility='visible';
}

function unShowGif() {
	gif.style.visibility='hidden';
}
paragraph1 = document.getElementById('para1');

paragraph = document.getElementById('para');

button.addEventListener("click", showGif);

button2.addEventListener("click", unShowGif);

paragraph.style.fontFamily = "Courier New";

paragraph1.style.fontFamily = "Verdana";