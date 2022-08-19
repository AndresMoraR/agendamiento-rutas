-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-08-2022 a las 23:35:27
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ar_admin_cupo`
--

CREATE TABLE `ar_admin_cupo` (
  `id_cupo` int(11) NOT NULL,
  `funcionario_cupo` int(10) NOT NULL,
  `estudiante_cupo` int(10) NOT NULL,
  `total_cupo_cupo` int(10) NOT NULL,
  `cupo_extra_cupo` int(10) NOT NULL,
  `estado_cupo` tinyint(1) NOT NULL,
  `fecha_creacion_cupo` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_usuario_creacion_cupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ar_admin_cupo`
--

INSERT INTO `ar_admin_cupo` (`id_cupo`, `funcionario_cupo`, `estudiante_cupo`, `total_cupo_cupo`, `cupo_extra_cupo`, `estado_cupo`, `fecha_creacion_cupo`, `id_usuario_creacion_cupo`) VALUES
(1, 10, 15, 30, 5, 1, '2022-08-02 00:00:00', 1),
(2, 7, 13, 25, 5, 0, '2022-08-02 00:00:00', 1),
(3, 10, 10, 35, 15, 1, '2022-08-16 13:12:40', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ar_admin_horario`
--

CREATE TABLE `ar_admin_horario` (
  `id_horario` int(11) NOT NULL,
  `hora_horario` time NOT NULL,
  `jornada_horario` varchar(5) NOT NULL,
  `fecha_creacion_horario` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_usuario_creacion_horario` int(11) NOT NULL,
  `id_ruta_horario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ar_admin_ruta`
--

CREATE TABLE `ar_admin_ruta` (
  `id_ruta` int(11) NOT NULL,
  `nombre_ruta` varchar(40) NOT NULL,
  `descripcion_ruta` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ar_admin_ruta`
--

INSERT INTO `ar_admin_ruta` (`id_ruta`, `nombre_ruta`, `descripcion_ruta`) VALUES
(1, 'FUS-CUC', 'Ruta que sale de la sede'),
(2, 'CUC-Venecia', 'Ruta que en la Clínica Colombia'),
(3, 'CUC - SEDE 170', 'CUC - SEDE 170 '),
(4, 'Sede 170 - Venecia', 'Sede 170 - Venecia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ar_bloque`
--

CREATE TABLE `ar_bloque` (
  `id_bloque` int(11) NOT NULL,
  `id_semana_bloque` int(11) NOT NULL,
  `fecha_bloque` datetime NOT NULL,
  `cupo_displonible_funcionario_bloque` int(10) NOT NULL,
  `cupo_disponible_estudiante_bloque` int(10) NOT NULL,
  `cupo_extra_bloque` int(11) NOT NULL,
  `estado_bloque` tinyint(1) NOT NULL,
  `fecha_creacion_bloque` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_horario_bloque` int(11) NOT NULL,
  `id_usuario_creacion_bloque` int(11) NOT NULL,
  `id_cupo_bloque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ar_facultad_area`
--

CREATE TABLE `ar_facultad_area` (
  `id_facultad_area` int(11) NOT NULL,
  `nombre_facultad_area` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ar_log`
--

CREATE TABLE `ar_log` (
  `id_log` int(11) NOT NULL,
  `fecha_hora_log` datetime NOT NULL,
  `id_usuario_log` int(11) NOT NULL,
  `accion_log` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ar_registro_usuario`
--

CREATE TABLE `ar_registro_usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombres_usuario` varchar(40) NOT NULL,
  `apellidos_usuario` varchar(40) NOT NULL,
  `numero_identificacion_usuario` int(15) NOT NULL,
  `correo_usuario` varchar(40) NOT NULL,
  `password_usuario` text NOT NULL,
  `id_facultad_area_usuario` int(10) NOT NULL,
  `estado_usuario` tinyint(1) NOT NULL,
  `fecha_creacion_usuario` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_rol_usuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ar_reserva`
--

CREATE TABLE `ar_reserva` (
  `id_reserva` int(11) NOT NULL,
  `verificacion_reserva` tinyint(1) NOT NULL,
  `asistencia_reserva` tinyint(1) NOT NULL,
  `fecha_creacion_reserva` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cod_verificacion_reserva` text NOT NULL,
  `estado_reserva` tinyint(1) NOT NULL,
  `id_usuario_reserva` int(11) NOT NULL,
  `id_bloque_reserva` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ar_rol`
--

CREATE TABLE `ar_rol` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ar_sancion`
--

CREATE TABLE `ar_sancion` (
  `id_sancion` int(11) NOT NULL,
  `fecha_creacion_sancion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_sancion` datetime NOT NULL,
  `estado_sancion` tinyint(1) NOT NULL,
  `id_reserva_sancion` int(11) NOT NULL,
  `id_usuario_creacion_sancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ar_admin_cupo`
--
ALTER TABLE `ar_admin_cupo`
  ADD PRIMARY KEY (`id_cupo`);

--
-- Indices de la tabla `ar_admin_horario`
--
ALTER TABLE `ar_admin_horario`
  ADD PRIMARY KEY (`id_horario`);

--
-- Indices de la tabla `ar_admin_ruta`
--
ALTER TABLE `ar_admin_ruta`
  ADD PRIMARY KEY (`id_ruta`);

--
-- Indices de la tabla `ar_bloque`
--
ALTER TABLE `ar_bloque`
  ADD PRIMARY KEY (`id_bloque`);

--
-- Indices de la tabla `ar_facultad_area`
--
ALTER TABLE `ar_facultad_area`
  ADD PRIMARY KEY (`id_facultad_area`);

--
-- Indices de la tabla `ar_log`
--
ALTER TABLE `ar_log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indices de la tabla `ar_registro_usuario`
--
ALTER TABLE `ar_registro_usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `numero_identificacion_usuario` (`numero_identificacion_usuario`),
  ADD UNIQUE KEY `correo_usuario` (`correo_usuario`);

--
-- Indices de la tabla `ar_reserva`
--
ALTER TABLE `ar_reserva`
  ADD PRIMARY KEY (`id_reserva`);

--
-- Indices de la tabla `ar_rol`
--
ALTER TABLE `ar_rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `ar_sancion`
--
ALTER TABLE `ar_sancion`
  ADD PRIMARY KEY (`id_sancion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ar_admin_cupo`
--
ALTER TABLE `ar_admin_cupo`
  MODIFY `id_cupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ar_admin_horario`
--
ALTER TABLE `ar_admin_horario`
  MODIFY `id_horario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ar_admin_ruta`
--
ALTER TABLE `ar_admin_ruta`
  MODIFY `id_ruta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ar_bloque`
--
ALTER TABLE `ar_bloque`
  MODIFY `id_bloque` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ar_facultad_area`
--
ALTER TABLE `ar_facultad_area`
  MODIFY `id_facultad_area` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ar_log`
--
ALTER TABLE `ar_log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ar_registro_usuario`
--
ALTER TABLE `ar_registro_usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ar_reserva`
--
ALTER TABLE `ar_reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ar_rol`
--
ALTER TABLE `ar_rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ar_sancion`
--
ALTER TABLE `ar_sancion`
  MODIFY `id_sancion` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
