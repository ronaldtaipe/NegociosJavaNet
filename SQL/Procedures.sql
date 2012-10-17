Use negociosjavanet
Go


Create Procedure grabacliente
(
	@dni VARCHAR(8),
	@nombres VARCHAR(60), 
	@apellidos VARCHAR(60),
	@email VARCHAR(60),
	@direccion  VARCHAR(200) ,
	@celular VARCHAR(8),
	@contrasena VARCHAR(20), 
	@estado INTEGER 
) As
Insert into Cliente(dni,nombres,apellidos,email,direccion,celular,contrasena,estado) 
			values(@dni,@nombres,@apellidos,@email,@direccion,@celular,@contrasena,@estado)
Go

Create Procedure iniciasesion
(
	@correo VARCHAR(60),
	@contrasena VARCHAR(20)
) As
Select dni,nombres from Cliente Where email=@correo AND contrasena=@contrasena
Go

Create Procedure datosclientepordni
(
	@dni VARCHAR(8)
) As
Select dni,nombres,apellidos,direccion,celular from Cliente Where dni=@dni
Go
