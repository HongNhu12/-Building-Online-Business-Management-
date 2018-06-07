function addItem() {
	var name.push(document.getElementById('name-pro').value);
	var price.push(document.getElementById('price-pro').value);
	var quatity = 1;

	displayCart();
}

function displayCart() {
	data = '<table><tr><th>Product name</th><th>Quatity</th><th>Price</th><th>total</th></tr>';

	total = 0;

	for ( var  i = 0; i < name.length; i++) {
		total += price[i]*quatity
		data += "<tr><td>" + name[i] + "</td><td>" + quatity + "</td><td>" + price[i] + "</td><td>" + quatity*price[i] + "</td><td><button onclick='delElement(" + i + ")'>Delete</button></td></tr>"
	}

	data += '<tr><td></td><td></td><td></td><td>'+ total +'</td></tr></table>'

	document.getElementById('box-cart').innerHTML = data
}

function delElement(a) {
	name.splice(a,1);
	quatity.splice(a,1);
	price.splice(a,1);

	displayCart();
}