function hideInputsForRegistration (radioSelected){
	if (radioSelected.value == 1){
		document.getElementById("datosCliente").style.display = 'none';
		document.getElementById("datosEnComun").style.display = 'block';
		document.getElementById("datosRestaurante").style.display = 'block';
	} else {
		document.getElementById("datosCliente").style.display = 'block';
		document.getElementById("datosEnComun").style.display = 'block';
		document.getElementById("datosRestaurante").style.display = 'none';
	};
};

function calculateSubtotal(idDish){
	var unitario = document.getElementById('precio'+idDish).innerHTML;
	var cantidad = document.getElementById(idDish).value;
	var subtotal = parseFloat(unitario)*parseFloat(cantidad);
	if (isNaN(subtotal)) {
		document.getElementById('subtotal'+idDish).innerHTML = 0;
	} else {
		document.getElementById('subtotal'+idDish).innerHTML = subtotal;
	};
	calculateTotal();
};

function calculateTotal(){
	var cuenta = document.getElementById('cuenta');
	var spans = cuenta.getElementsByTagName("span");
	var total = 0;
	for (j = 0; j<spans.length; j++){
		if (spans[j].className == "subtotales") {
			if (!isNaN(parseFloat(spans[j].innerHTML))) {
				total += parseFloat(spans[j].innerHTML);
			}
		};
	};
	document.getElementById('total').innerHTML = total;
}

/*
function validateIfUserExists(){
	var availabilityNode = dojo.byId("isAvailable");
	var usernameNode = dojo.byId("username");
	var value = dojo.trim(usernameNode.value);
	if(value != "") {
		dojo.xhrPost({
			url: "../checkIfAvailable",
			timeout: 2000,
			content: {
				username: value
				},
				load: function(result) {
					if(result == "disponible") {
						availabilityNode.innerHTML = "Nombre disponible";
						availabilityNode.style.color = "green";
					} else {
						availabilityNode.innerHTML = "Nombre no disponible.";
						availabilityNode.style.color = "red";
					}
				}
		});
	} else {
		availabilityNode.innerHTML = "";
	}
}

dojo.ready(function(){
	dojo.require("dijit.form.NumberTextBox");
	dojo.require("dijit.form.TextBox");
	dojo.require("dijit.form.FilteringSelect");
	dojo.require("dijit.Tooltip");
	//dojo.require("dojo.parser");
});
*/