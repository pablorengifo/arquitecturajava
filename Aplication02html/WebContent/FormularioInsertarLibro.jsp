<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
<link rel="stylesheet" type="text/css" href="css/formato.css" />
<script type="text/javascript" src="js/validacion.js" >
</script>
<title>Formulario Libro</title>
</head>
<body>
<h1>Formulario alta Libro</h1>
<form action="InsertarLibro.jsp">
<fieldset>
<legend>Formulario alta libro</legend>
<p><label for="isbn">ISBN:</label>
<input id="isbn" type="text" name="isbn"/></p>
<p>
<label for="titulo">Titulo:</label>
<input id="titulo" type="text" name= "titulo"/>
</p><p>
<label for="categoria">Categoria :</label>
<input id="categoria" type="text" name="categoria"/>
</p>
<p>
<input type="button" value="Insertar" onclick="validacion()">
</p>
</fieldset>
</form>
</body>
</html>