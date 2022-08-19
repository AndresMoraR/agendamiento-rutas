-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-08-2022 a las 17:21:38
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agendar_rutas`
--

--
-- Volcado de datos para la tabla `ar_admin_cupo`
--

INSERT INTO `ar_admin_cupo` (`id_cupo`, `funcionario_cupo`, `estudiante_cupo`, `total_cupo_cupo`, `cupo_extra_cupo`, `estado_cupo`, `fecha_creacion_cupo`, `id_usuario_creacion_cupo`) VALUES
(1, 10, 15, 30, 5, 1, '2022-08-02 00:00:00', 1),
(2, 7, 13, 25, 5, 0, '2022-08-02 00:00:00', 1),
(3, 10, 10, 35, 15, 1, '2022-08-16 13:12:40', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
