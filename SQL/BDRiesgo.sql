--base de datos BDRiesgo
Create Database BDRiesgo
use BDRiesgo

CREATE TABLE Deuda 
    (
    dni varchar(20),
    primerApellido varchar(50), 
    segundoApellido varchar(50), 
    nombres varchar(50),
	fechaNacimiento varchar(15),
	ubigeo varchar(50),
	sexo varchar(50),
	estadoCivil varchar(50),
	deuda decimal(18,6)
    )
    Insert into Deuda values('43873938','Cajo','Hernandez','Jeanpierre','21/10/1986','L01','M','S',0)
    Insert into Deuda values('43873950','Taipe','A.','Ronald','-','L02','M','S',10)
		
    select dni,primerApellido,segundoApellido,nombres,fechaNacimiento,ubigeo,sexo,estadoCivil,deuda from Deuda
    insert into Deuda(dni,primerApellido,segundoApellido,nombres,fechaNacimiento,ubigeo,sexo,estadoCivil,deuda)
    values('43873950','Taipe','A.','Ronald','-','L02','M','S',10)
	
	Insert into Deuda values('43873938','Cajo','Hernandez','Jeanpierre','21/10/1986','L01','M','S',0)
    Insert into Deuda values('42178733','Taipe','Aylas','Ronald David','01/05/1983','L02','M','S',10)
	Insert into Deuda values('40136711','Alva','Zeballos','Raul','17/10/1978','L03','M','S',15)
    Insert into Deuda values('20202020','Zelaya','Mas','Daniel','-','L04','M','S',0)
	Insert into Deuda values('30303030','Gates','Ter','Ronald','-','L05','M','S',20)