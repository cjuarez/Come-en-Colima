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