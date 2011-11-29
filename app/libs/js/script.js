function initMenu() {
	$('div#nav #menu ul').hide();
	$('div#nav #menu li a').click(
		function() {
			$(this).next().slideToggle('slow');
		}
	);
}
$(document).ready(function() {initMenu();});

function clearAllElements(ele){
	$(ele).find(':input').each(function() {
        switch(this.type) {
            case 'password':
            case 'select-multiple':
            case 'select-one':
            case 'text':
            case 'email':
            case 'textarea':
                $(this).val('');
                break;
            case 'checkbox':
                this.checked = false;
        }
    });
    $('#username').focus();
};

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
						var elem = document.getElementById('btnRegistrar');
						elem.onclick = validateForm;
					} else {
						$('div#datosUser input#username').css('background-color', '#FF9A9A');
						var elem = document.getElementById('btnRegistrar');
						elem.onclick = function () { alert("El nombre de usuario ya existe."); };
					}
        	});
        });
        
        $("div#datosUser input#password1").keyup(function() {
        	var pass1 = $("#password").val();
        	var pass2 = $("#password1").val();
        	if (pass1 != pass2) {
        		$('div#datosUser input#password1').css('background-color', '#FF9A9A');
        		$('div#datosUser input#password').css('background-color', '#FF9A9A');
				var elem = document.getElementById('btnRegistrar');
				elem.onclick = function () { alert("Los passwords no concuerdan."); };
        	} else {
        		$('div#datosUser input#password1').css('background-color', '#A0D4A4');
        		$('div#datosUser input#password').css('background-color', '#A0D4A4');
				var elem = document.getElementById('btnRegistrar');
				elem.onclick = validateForm;
        	}
        });
    });
    
    function validateForm(){
    	var ele = "#formaRegistro";
    	var correcto = true;
		$(ele).find(':input').each(function() {
	        switch(this.type) {
	            case 'email':
	            	if ($(this).val() == "") {
	            		alert("El email no puede estar vacio.");
						correcto = false;
						$('div#datosUser input#email').css('background-color', '#FF9A9A');
	            	}
	            	break;
	            case 'select-one':
	            	if (($(":checked").val()=="1") && ($(this).val() == "-1")) {
						alert("Debe elegir un tipo de restaurante.");
						correcto = false;
	            	}
	            	break;
	        }
	    });
	    var pass1 = $("#password").val();
        var pass2 = $("#password1").val();
        if (pass1 != pass2) {  }
	    if (correcto) {  document.forms['formaRegistro'].submit();  }
};


/*
dojo.ready(function(){
	dojo.require("dijit.form.NumberTextBox");
	dojo.require("dijit.form.TextBox");
	dojo.require("dijit.form.FilteringSelect");
	dojo.require("dijit.Tooltip");
	//dojo.require("dojo.parser");
});
*/