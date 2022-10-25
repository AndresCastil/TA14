
CREATE DATABASE almacenes;
USE almacenes;

CREATE TABLE almacenes (
codigo int auto_increment,
lugar nvarchar(100),
capacidad int,
primary key (codigo)
);

CREATE TABLE cajas (
numReferencia char(5),
contenido nvarchar(100),
valor int,
codigo int,
primary key (numReferencia),
foreign key (codigo) references almacenes (codigo)
);

