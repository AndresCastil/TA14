DROP DATABASE IF EXISTS informatica;
CREATE DATABASE informatica;
USE informatica;

CREATE TABLE fabricantes (
	codigo int auto_increment,
    nombre nvarchar(100),
    primary key (codigo)
    );
    
CREATE TABLE articulos (
	codigo int auto_increment,
    nombre nvarchar(100),
    precio int,
    fabricante int,
    primary key (codigo),
    foreign key (fabricante) references fabricantes(codigo)
    );
    