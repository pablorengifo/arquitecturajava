function validacion() {
		if (document.forms[0].isbn.value == "")
			alert("datos no validos");
		else
			document.forms[0].submit();
	}