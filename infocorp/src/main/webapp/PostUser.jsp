<!DOCTYPE html>
<html>
<head>
<title>Registro de Deudor</title>
</head>
<body>
<form action="rs/user-service/new" method="POST">

	<label for="dni">DNI</label> <input name="dni" /> <br />
	<label for="nombres">Nombres</label> <input name="nombres" /> <br />
    <label for="nombres">Primer Apellido</label> <input name="primerApellido" /> <br />
	<label for="nombres">Segundo Apellido</label> <input name="segundoApellido" /> <br /> 
    <label for="nombres">Fecha Nacimiento</label> <input name="fechaNacimiento" /> <br />
    <label for="nombres">Ubigeo</label> <input name="ubigeo" /> <br />
    <label for="nombres">Sexo</label> <input name="sexo" /> <br /> 
    <label for="nombres">Estado Civil</label> <input name="estadoCivil" /> <br /> 
    <label for="nombres">Presenta Deudas?</label> <input name="deuda" /> <br />

	<input type="submit" value="Submit" />
</form>
<a href="rs/user-service/users">get all users</a>
</body>
</html>