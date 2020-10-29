-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 29-10-2020 a las 21:40:31
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
  `imagen` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `articulo` varchar(8000) NOT NULL,
  `fecha` varchar(8) NOT NULL,
  `etiqueta_id` int(11) NOT NULL,
  `descripcion` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id_articulo`, `imagen`, `titulo`, `articulo`, `fecha`, `etiqueta_id`, `descripcion`) VALUES
(1, 'imagen1.jpg', 'titulo de programa', 'articulo de programa', 'programa', 1, 'Descripcion del programa en cuestión'),
(2, 'imagen2.jpg', 'titulo de desarrollo', 'articulo de desarrollo', 'develop', 2, 'Descripcion del artículo de desarrollo'),
(3, 'imagen2.jpg', 'Desarrollo', 'Desarrollo', 'Fecha', 2, 'Usando tecnicas Front-End bla bla bla bla'),
(4, 'imagen3.jpg', 'Cocina', 'Cocina', 'Cocina', 3, 'Hoy huevos fritos con patatas'),
(5, 'imagen3.jpg', 'cocina', 'cocina', 'fecha', 3, 'Me paso al mundo vegano'),
(6, 'imagen4.jpg', 'TEST', 'TEST', 'TEST', 5, 'TEST');

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
(4, 'obras'),
(5, 'test');

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
  ADD KEY `etiqueta_id` (`etiqueta_id`);

--
-- Indices de la tabla `etiqueta`
--
ALTER TABLE `etiqueta`
  ADD PRIMARY KEY (`id_etiqueta`);

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
  MODIFY `id_articulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `etiqueta`
--
ALTER TABLE `etiqueta`
  MODIFY `id_etiqueta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  ADD CONSTRAINT `articulo_ibfk_1` FOREIGN KEY (`etiqueta_id`) REFERENCES `etiqueta` (`id_etiqueta`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
