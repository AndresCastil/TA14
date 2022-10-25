DROP DATABASE IF EXISTS piezasProveedores;
CREATE DATABASE piezasProveedores;
USE piezasProveedores;

CREATE TABLE piezas (
codigo int auto_increment,
nombre nvarchar(100),
primary key (codigo)
);

CREATE TABLE proveedores (
id char(4),
nombre nvarchar(100),
primary key (id)
);

CREATE TABLE suministra (
codigoPieza int,
idProveedor char(4),
precio int,
primary key (codigoPieza, idProveedor),
foreign key (codigoPieza) references piezas (codigo),
foreign key (idProveedor) references proveedores (id)
);

