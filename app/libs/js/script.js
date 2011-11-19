function initMenu() {
$('div#nav #menu ul').hide();
$('div#nav #menu li a').click(
function() {
$(this).next().slideToggle('slow');
}
);
}
$(document).ready(function() {initMenu();});



function hideInputsForRegistration (radioSelected){
	if (radioSelected.value == 1){
		$('#datosCliente').slideUp('slow');
		$('#datosEnComun').slideDown('slow');
		$('#datosRestaurante').slideDown('slow');
	} else {
		$('#datosCliente').slideDown('slow');
		$('#datosEnComun').slideDown('slow');
		$('#datosRestaurante').slideUp('slow');
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

  $(document).ready(function() {
        $("div#datosUser input#username").keyup(function() {
        	var username = $('div#datosUser input#username').val();
        	var url = "../checkIfAvailable/"+username;
        	$.get(url, username.value, function(data) {
        		if(data == "disponible") {
						$('div#datosUser input#username').css('background-color', '#A0D4A4');
					} else {
						$('div#datosUser input#username').css('background-color', '#FF9A9A');
					}
        	});
        });
        
        $()
    });


/*
dojo.ready(function(){
	dojo.require("dijit.form.NumberTextBox");
	dojo.require("dijit.form.TextBox");
	dojo.require("dijit.form.FilteringSelect");
	dojo.require("dijit.Tooltip");
	//dojo.require("dojo.parser");
});
*/