-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 25-10-2020 a las 23:44:28
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `id_articulo` int(11) NOT NULL,
  `imagenes_id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `articulo` varchar(8000) NOT NULL,
  `fecha` varchar(8) NOT NULL,
  `etiqueta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id_articulo`, `imagenes_id`, `titulo`, `articulo`, `fecha`, `etiqueta_id`) VALUES
(1, 1, 'titulo de programa', 'articulo de programa', 'programa', 1),
(2, 2, 'titulo de desarrollo', 'articulo de desarrollo', 'develop', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etiqueta`
--

CREATE TABLE `etiqueta` (
  `id_etiqueta` int(11) NOT NULL,
  `etiqueta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `etiqueta`
--

INSERT INTO `etiqueta` (`id_etiqueta`, `etiqueta`) VALUES
(1, 'programas'),
(2, 'desarrollo'),
(3, 'cocina'),
(4, 'obras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id_imagen` int(11) NOT NULL,
  `imagen10` varchar(255) NOT NULL,
  `imagen9` varchar(255) NOT NULL,
  `imagen8` varchar(255) NOT NULL,
  `imagen7` varchar(255) NOT NULL,
  `imagen6` varchar(255) NOT NULL,
  `imagen5` varchar(255) NOT NULL,
  `imagen4` varchar(255) NOT NULL,
  `imagen3` varchar(255) NOT NULL,
  `imagen2` varchar(255) NOT NULL,
  `imagen1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id_imagen`, `imagen10`, `imagen9`, `imagen8`, `imagen7`, `imagen6`, `imagen5`, `imagen4`, `imagen3`, `imagen2`, `imagen1`) VALUES
(1, '', '', '', '', '', '', '', '', '', 'imagen1.png'),
(2, '', '', '', '', '', '', '', '', '', 'imagen11.png'),
(3, '', '', '', '', '', '', '', '', '', 'imagen21.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indice`
--

CREATE TABLE `indice` (
  `id_indice` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `indice`
--

INSERT INTO `indice` (`id_indice`, `imagen`, `titulo`, `descripcion`) VALUES
(1, 'indice1.png', 'esto es un titulo de un indice', 'esta es la decripción de un indice');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logotipo`
--

CREATE TABLE `logotipo` (
  `id_logotipo` int(11) NOT NULL,
  `logotipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `logotipo`
--

INSERT INTO `logotipo` (`id_logotipo`, `logotipo`) VALUES
(1, 'logotipo.jpeg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`id_articulo`),
  ADD KEY `imagenes_id` (`imagenes_id`,`etiqueta_id`),
  ADD KEY `etiqueta_id` (`etiqueta_id`);

--
-- Indices de la tabla `etiqueta`
--
ALTER TABLE `etiqueta`
  ADD PRIMARY KEY (`id_etiqueta`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id_imagen`);

--
-- Indices de la tabla `indice`
--
ALTER TABLE `indice`
  ADD PRIMARY KEY (`id_indice`);

--
-- Indices de la tabla `logotipo`
--
ALTER TABLE `logotipo`
  ADD PRIMARY KEY (`id_logotipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `id_articulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `etiqueta`
--
ALTER TABLE `etiqueta`
  MODIFY `id_etiqueta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id_imagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `indice`
--
ALTER TABLE `indice`
  MODIFY `id_indice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `logotipo`
--
ALTER TABLE `logotipo`
  MODIFY `id_logotipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `articulo_ibfk_1` FOREIGN KEY (`etiqueta_id`) REFERENCES `etiqueta` (`id_etiqueta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articulo_ibfk_2` FOREIGN KEY (`imagenes_id`) REFERENCES `imagenes` (`id_imagen`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
