DROP DATABASE IF EXISTS biblioteca;
CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE `autor` (
  `claveautor` int NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`claveautor`)
);

CREATE TABLE `editorial` (
  `claveeditorial` smallint NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`claveeditorial`)
);

CREATE TABLE `libro` (
  `clavelibro` int NOT NULL,
  `titulo` varchar(60) DEFAULT NULL,
  `idioma` varchar(15) DEFAULT NULL,
  `formato` varchar(15) DEFAULT NULL,
  `claveeditorial` smallint DEFAULT NULL,
  PRIMARY KEY (`clavelibro`),
  KEY `claveeditorial` (`claveeditorial`),
  CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`claveeditorial`) REFERENCES `editorial` (`claveeditorial`) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE `tema` (
  `clavetema` smallint NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`clavetema`)
);

