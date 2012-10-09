Create Database negociosjavanet
Go

Use negociosjavanet
Go

CREATE TABLE Articulo 
    (
     IdArticulo int NOT NULL identity(1,1), 
     Descripcion VARCHAR (200) , 
     Precio DECIMAL (18,6) , 
     Stock INTEGER
     CONSTRAINT Articulo_PK PRIMARY KEY(IdArticulo)
    )


CREATE TABLE Cliente 
    (
     IdCliente int NOT NULL identity(1,1),
     dni VARCHAR (8) , 
     nombres VARCHAR (60) , 
     apellidos VARCHAR (60) ,
     email VARCHAR (60) ,
     direccion  VARCHAR (200) ,
     celular VARCHAR (8) ,
     contrasena VARCHAR (20) , 
     estado INTEGER 
     CONSTRAINT Cliente_PK PRIMARY KEY (IdCliente)
    )
GO 

CREATE TABLE Pedido 
    (
     IdPedido int NOT NULL identity(1,1), 
     Fecha DATETIME , 
     CondPago VARCHAR (20) , 
     TipMon VARCHAR (10) , 
     TipCam DECIMAL (18,6) , 
     SubTotal DECIMAL (18,6) , 
     Total DECIMAL (18,6) , 
     IdCliente int
     CONSTRAINT Pedido_PK PRIMARY KEY (IdPedido)
    )
GO 
    
CREATE TABLE DetallePedido 
    (
     IdPedido int, 
     ItemPedido VARCHAR (10) NOT NULL , 
     Precio DECIMAL (18,6) , 
     Cantidad INTEGER , 
     IdArticulo int 
     CONSTRAINT DetallePedido_PK PRIMARY KEY  (ItemPedido)
    )
GO 

ALTER TABLE Pedido 
    ADD CONSTRAINT Relation_1 FOREIGN KEY (IdCliente) REFERENCES Cliente (IdCliente) 
GO 

ALTER TABLE DetallePedido 
    ADD CONSTRAINT Relation_2 FOREIGN KEY (IdPedido) REFERENCES Pedido (IdPedido)
GO 

ALTER TABLE DetallePedido 
    ADD CONSTRAINT Relation_3 FOREIGN KEY (IdArticulo) REFERENCES Articulo (IdArticulo)
GO

-- 
-- Creando Procedimiento para Insertar Cliente.
-- 

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