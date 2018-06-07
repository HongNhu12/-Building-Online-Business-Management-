function onRow1() {
	var divRow1 = document.getElementById("row1");
	var divRow2 = document.getElementById("row2");
	var divRow3 = document.getElementById("row3");
	var divRow4 = document.getElementById("row4");

	divRow1.style.display = "block";
	divRow2.style.display = "none";
	divRow3.style.display = "none";
	divRow4.style.display = "none";
}

function onRow2() {
	var divRow1 = document.getElementById("row1");
	var divRow2 = document.getElementById("row2");
	var divRow3 = document.getElementById("row3");
	var divRow4 = document.getElementById("row4");

	divRow2.style.display = "block";
	divRow1.style.display = "none";
	divRow3.style.display = "none";
	divRow4.style.display = "none";
}

function onRow3() {
	var divRow1 = document.getElementById("row1");
	var divRow2 = document.getElementById("row2");
	var divRow3 = document.getElementById("row3");
	var divRow4 = document.getElementById("row4");

	divRow3.style.display = "block";
	divRow2.style.display = "none";
	divRow1.style.display = "none";
	divRow4.style.display = "none";
}

function onRow4() {
	var divRow1 = document.getElementById("row1");
	var divRow2 = document.getElementById("row2");
	var divRow3 = document.getElementById("row3");
	var divRow4 = document.getElementById("row4");

	divRow4.style.display = "block";
	divRow2.style.display = "none";
	divRow3.style.display = "none";
	divRow1.style.display = "none";
}

function onSignin() {
	var divSignin = document.getElementById("divSignin");
	var divSignup = document.getElementById("divSignup");

	divSignin.style.display = "block";
	divSignup.style.display = "none";
}

function onSignup() {
	var divSignin = document.getElementById("divSignin");
	var divSignup = document.getElementById("divSignup");

	divSignup.style.display = "block";
	divSignin.style.display = "none";
}
