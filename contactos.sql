-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
-- Author Milton Quiroz
-- Database: `sportsworld`


CREATE TABLE `contacto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `curp` varchar(255) DEFAULT NULL,
  `mantenimiento` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



INSERT INTO `contacto` (`id`, `name`, `celular`, `email`, `curp`, `mantenimiento`) VALUES
(NULL, 'Juan Pérez', '5551234567', 'juan@example.com', 'ABC123456XYZ789012', 'Uniclub'),
(NULL, 'María García', '5552345678', 'maria@example.com', 'DEF123456UVW789012', 'Allclub'),
(NULL, 'Carlos López', '5553456789', 'carlos@example.com', 'GHI123456ABC789012', 'Part Time'),
(NULL, 'Ana Martínez', '5554567890', 'ana@example.com', 'JKL123456MNO789012', 'Hit Plan'),
(NULL, 'Luis González', '5555678901', 'luis@example.com', 'ABC456789XYZ789012', 'Hibrido'),
(NULL, 'María Rodríguez', '5556789012', 'maria@example.com', 'DEF456789UVW789012', 'Uniclub'),
(NULL, 'Ricardo López', '5557890123', 'ricardo@example.com', 'GHI456789ABC789012', 'Allclub'),
(NULL, 'Laura Fernández', '5558901234', 'laura@example.com', 'JKL456789MNO789012', 'Part Time'),
(NULL, 'José Pérez', '5559012345', 'jose@example.com', 'PQR456789STU789012', 'Hibrido'),
(NULL, 'Sofía Martínez', '5550123456', 'sofia@example.com', 'ABC567890XYZ789012', 'Uniclub'),
(NULL, 'Andrés García', '5551234567', 'andres@example.com', 'DEF567890UVW789012', 'Allclub'),
(NULL, 'Ana López', '5552345678', 'analopez@example.com', 'GHI567890ABC789012', 'Part Time'),
(NULL, 'Luisa Rodríguez', '5553456789', 'luisa@example.com', 'JKL567890MNO789012', 'Hit Plan'),
(NULL, 'Roberto Pérez', '5554567890', 'roberto@example.com', 'PQR567890STU789012', 'Hibrido'),
(NULL, 'María González', '5555678901', 'mariagonzalez@example.com', 'ABC678901XYZ789012', 'Uniclub'),
(NULL, 'Javier Martínez', '5556789012', 'javier@example.com', 'DEF678901UVW789012', 'Allclub'),
(NULL, 'Sara López', '5557890123', 'sara@example.com', 'GHI678901ABC789012', 'Part Time'),
(NULL, 'Andrea Rodríguez', '5558901234', 'andrea@example.com', 'JKL678901MNO789012', 'Hit Plan'),
(NULL, 'Pedro García', '5559012345', 'pedro@example.com', 'PQR678901STU789012', 'Hibrido'),
(NULL, 'Fernanda Pérez', '5550123456', 'fernanda@example.com', 'ABC789012XYZ789012', 'Uniclub'),
(NULL, 'Alejandro Martínez', '5551234567', 'alejandro@example.com', 'DEF789012UVW789012', 'Allclub'),
(NULL, 'Diana López', '5552345678', 'diana@example.com', 'GHI789012ABC789012', 'Part Time'),
(NULL, 'Rafael Rodríguez', '5553456789', 'rafael@example.com', 'JKL789012MNO789012', 'Hit Plan'),
(NULL, 'Carolina Riveron', '5525130956', 'caro@example.com', 'CRC123456XYZ789012', 'Allclub'),
(NULL, 'Alexandra Ruiz', '55567675959', 'alexa@example.com', 'ARUC123456XYZ789012', 'Uniclub');

INSERT INTO `usuario` (`id`, `name`, `email`, `password`) VALUES
(NULL, 'Milton Quiroz', 'milton.quiroz@sportsworld.com.mx','$2a$12$o.HBPOFUsfGgsMCi/jC.NOk1Ca/VJ1lO/ny8ukfLA9oX7TSRrf46u'),
(NULL, 'Arturo Salgado', 'arturo.salgado@sportsworld.com.mx','$2a$12$HmJBcvKq/VhVG7iHZ7ZqnO6OYf/rwlLtclTfjvFjHj1PMhEKBXApq');