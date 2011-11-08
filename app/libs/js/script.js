function hideInputsForRegistration (radioSelected){
	if (radioSelected.value == 1){
		document.getElementById("datosCliente").style.display = 'none';
		document.getElementById("datosEnComun").style.display = 'block';
		document.getElementById("datosRestaurante").style.display = 'block';
	} else {
		document.getElementById("datosCliente").style.display = 'block';
		document.getElementById("datosEnComun").style.display = 'block';
		document.getElementById("datosRestaurante").style.display = 'none';
	}
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
						availabilityNode.innerText = "Nombre disponible";
						availabilityNode.style.color = "green";
					} else {
						availabilityNode.innerText = "Nombre no disponible.";
						availabilityNode.style.color = "red";
					}
				}
		});
	} else {
		availabilityNode.innerText = "";
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