
--pamela modesto 16-sii-1-054 seccion 0541
--isamar hernadez 16-siin-1-152
--victor javier 16-miit-022


CREATE DATABASE cafeteriaDB;

go

USE cafeteriaDB;

go

CREATE TABLE cafeteria
(
	id int identity(1,1) not null primary key,
	nombre varchar(50),
	direccion varchar(100),
);

go

CREATE TABLE provedor
(
	id int identity(1,1) not null primary key,
	nombre varchar(50),
	telefono varchar(50)
);

go

CREATE TABLE productos
(
	id int identity(1,1) not null primary key,
	nombre varchar(50),
	fecha_caducidad date,
	provedorID int foreign key references provedor(id)
);

go

INSERT INTO cafeteria
VALUES 
('Cafeteria Pamela', 'AV.Mexico #66'),
('Cafeteria Juana', 'AV.Maximo Gomez'),
('Cafeteria Jose', 'AV.Jhon F. Kennedy'),
('Cafeteria Pedro', 'AV. Tiradentes'),
('Cafeteria Ramon', 'C/ San Jose'),
('Cafeteria Maria', 'C/ A'),
('Cafeteria Estela', 'Calle B'),
('Cafeteria Rafael', 'San Predro'),
('Cafeteria Verde', 'Santo Domingo'),
('Cafeteria Josefa', 'Santiago');

go

INSERT INTO provedor
VALUES
('JUGOS' , '8098471254'),
('Pan' , '8096374163'),
('Queso' , '8091234567'),
('Jamon','8095671234'),
('Azucar','8091327986'),
('Sal','8095762347'),
('Gas','8098908091'),
('Luz','8095675768'),
('Agua','8095762439'),
('Refresco','8091321327');

go

INSERT INTO productos
VALUES
('Naranja','2019-01-23',1),
('Boli','2019-01-23',2),
('Blanco','2019-01-23',3),
('Picnic','2019-01-23',4),
('Morena','2019-01-23',5),
('Linda','2019-01-23',6),
('Propano','2019-01-23',7),
('Ede Este','2019-01-23',8),
('Azul','2019-01-23',9),
('CocaCola','2019-01-23',10);