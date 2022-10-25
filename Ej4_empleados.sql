DROP DATABASE IF EXISTS trabajadores;
CREATE DATABASE trabajadores;
USE trabajadores;

CREATE TABLE departamentos (
	codigo int,
    nombre nvarchar(100),
    presupuesto int,
    primary key (codigo)
	);

CREATE TABLE empleados (
	dni varchar(8),
	nombre nvarchar(100),
	apellidos nvarchar(255),
	departamento int,
	primary key (dni),
	foreign key (departamento) references departamentos(codigo)
	);







