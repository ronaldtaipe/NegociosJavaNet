create database reniec
go
use reniec
go
drop table Persona
go
CREATE TABLE Persona 
    ( 
     Dni VARCHAR (15)  NOT NULL , 
     Nombres VARCHAR(50)  NOT NULL , 
     Apellidos VARCHAR(250)  NOT NULL , 
	 direccion  varchar(250),
	 telefono   varchar(20),
     Estado int
    ) 
ALTER TABLE Persona 
    ADD CONSTRAINT Persona_PK PRIMARY KEY ( Dni ) ;    select * from Personainsert into persona values('43873985','Jeanpierre Adolfo','Cajo Hernandez','av. lima 452','8547854785',0)insert into persona values('43873950','Ronald','Taipe','av. pinos 965','9658214',0)insert into persona values('43873952','Ronald','Gates','av. trujillo 364','96325874',0)update persona set estado=1