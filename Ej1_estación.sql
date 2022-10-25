DROP DATABASE IF EXISTS meteoro; 
CREATE DATABASE meteoro;
USE meteoro;


CREATE TABLE `estacion` (
  `identificador` mediumint unsigned NOT NULL,
  `latitud` varchar(14) NOT NULL,
  `longitud` varchar(15) NOT NULL,
  `altitud` mediumint NOT NULL,
  PRIMARY KEY (`identificador`)
);


CREATE TABLE `muestra` (
  `identificadorestacion` mediumint unsigned NOT NULL,
  `fecha` date NOT NULL,
  `temperaturaminima` tinyint DEFAULT NULL,
  `temperaturamaxima` tinyint DEFAULT NULL,
  `precipitaciones` smallint unsigned DEFAULT NULL,
  `humedadminima` tinyint unsigned DEFAULT NULL,
  `humedadmaxima` tinyint unsigned DEFAULT NULL,
  `velocidadminima` tinyint unsigned DEFAULT NULL,
  `velocidamaxima` tinyint unsigned DEFAULT NULL,
  KEY `identificadorestacion` (`identificadorestacion`),
  CONSTRAINT `muestra_ibfk_1` FOREIGN KEY (`identificadorestacion`) REFERENCES `estacion` (`identificador`) ON UPDATE CASCADE
);