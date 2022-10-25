DROP DATABASE IF EXISTS peliculaSalas;
CREATE DATABASE peliculaSalas;
USE peliculaSalas;

CREATE TABLE peliculas (
codigo int auto_increment,
nombre nvarchar(100),
calificacionEdad int,
primary key (codigo)
);


CREATE TABLE salas (
codigo int auto_increment,
nombre nvarchar(100),
pelicula int,
primary key (codigo),
foreign key (pelicula) references peliculas (codigo)
);

