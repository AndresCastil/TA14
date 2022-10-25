DROP DATABASE IF EXISTS directores;
CREATE DATABASE directores;
USE directores;

CREATE TABLE despachos (
	numero int auto_increment,
    capacidad int,
    primary key (numero)
    );
    
CREATE TABLE directores (
	dni varchar(8),
    nomapels nvarchar(255),
    dnijefe varchar(8),
    despacho int,
    primary key (dni),
    foreign key (despacho) references despachos (numero),
    constraint foreign key (dnijefe) references directores (dni)
    );
    
    
