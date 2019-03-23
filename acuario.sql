-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 23-03-2019 a las 19:02:14
-- Versión del servidor: 10.1.37-MariaDB-0+deb9u1
-- Versión de PHP: 7.0.33-0+deb9u3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Estructura de tabla para la tabla `Analisis`
--

CREATE TABLE `Analisis` (
  `idAnalisis` int(11) NOT NULL,
  `PH` float DEFAULT NULL,
  `Temperatura` float DEFAULT NULL,
  `Nitritos` float DEFAULT NULL,
  `Nitratos` float DEFAULT NULL,
  `K` float DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Observaciones` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `Analisis_has_Producto` (
  `Analisis_idAnalisis` int(11) NOT NULL,
  `Producto_idProducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Producto`
--

CREATE TABLE `Producto` (
  `idProducto` int(11) NOT NULL,
  `tipo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `marca` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `uso` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `web` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` binary(255) DEFAULT NULL,
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuarios` int(11) NOT NULL,
  `Nombre` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Apellidos` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ciudad` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Telefono` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



--
-- Indices de la tabla `Analisis`
--
ALTER TABLE `Analisis`
  ADD PRIMARY KEY (`idAnalisis`),
  ADD KEY `email` (`email`);

--
-- Indices de la tabla `Analisis_has_Producto`
--
ALTER TABLE `Analisis_has_Producto`
  ADD PRIMARY KEY (`Analisis_idAnalisis`,`Producto_idProducto`),
  ADD KEY `Producto_idProducto` (`Producto_idProducto`);

--
-- Indices de la tabla `Producto`
--
ALTER TABLE `Producto`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `idusuarios` (`idusuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Analisis`
--
ALTER TABLE `Analisis`
  MODIFY `idAnalisis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT de la tabla `Producto`
--
ALTER TABLE `Producto`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Analisis`
--
ALTER TABLE `Analisis`
  ADD CONSTRAINT `Analisis_ibfk_1` FOREIGN KEY (`email`) REFERENCES `usuarios` (`email`);

--
-- Filtros para la tabla `Analisis_has_Producto`
--
ALTER TABLE `Analisis_has_Producto`
  ADD CONSTRAINT `Analisis_has_Producto_ibfk_1` FOREIGN KEY (`Analisis_idAnalisis`) REFERENCES `Analisis` (`idAnalisis`),
  ADD CONSTRAINT `Analisis_has_Producto_ibfk_2` FOREIGN KEY (`Producto_idProducto`) REFERENCES `Producto` (`idProducto`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
