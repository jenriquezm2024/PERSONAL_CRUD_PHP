-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2024 a las 19:12:22
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_producto`
--

CREATE TABLE `tm_producto` (
  `prod_id` int(11) NOT NULL,
  `prod_nom` varchar(150) NOT NULL,
  `prod_desc` varchar(500) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `fech_modi` datetime DEFAULT NULL,
  `fech_elim` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_producto`
--

INSERT INTO `tm_producto` (`prod_id`, `prod_nom`, `prod_desc`, `fech_crea`, `fech_modi`, `fech_elim`, `est`) VALUES
(1, 'Auriculares', 'Ninguna', '2021-04-08 11:04:37', '2021-04-08 15:00:24', NULL, 1),
(2, 'Mouse', 'Ninguna', '2021-04-08 11:05:40', '2021-04-08 15:00:34', NULL, 1),
(3, 'Teclado', 'Ninguna', '2021-04-08 11:06:13', NULL, '2021-04-08 14:10:22', 0),
(4, 'Monitor', 'qqqq', '0000-00-00 00:00:00', '2021-04-08 15:00:28', NULL, 1),
(5, 'test', 'Ninguna', '2021-04-08 14:15:45', NULL, '2021-04-08 14:17:11', 0),
(6, 'anderson', 'Ninguna', '2021-04-08 14:17:03', NULL, '2021-04-08 14:17:09', 0),
(7, 'wwww', 'Ninguna', '2021-04-08 14:39:54', '2021-04-08 14:40:11', '2021-04-08 14:42:17', 0),
(8, 'zzzzzz', 'Ninguna', '2021-04-08 14:41:02', '2021-04-08 14:41:15', '2021-04-08 14:42:19', 0),
(9, '22222', 'Ninguna', '2021-04-08 14:41:24', '2021-04-08 14:41:40', '2021-04-08 14:42:14', 0),
(10, '22222', 'Ninguna', '2021-04-08 14:42:24', '2021-04-08 15:00:18', '2024-11-07 11:28:56', 0),
(11, 'qqqqq', 'Ninguna', '2021-04-08 14:42:32', NULL, '2021-04-08 14:50:37', 0),
(12, 'test', 'azazazaz', '2021-04-08 14:50:24', NULL, '2021-04-08 14:50:39', 0),
(13, 'asdasd', '', '2021-04-08 15:12:16', NULL, '2024-11-07 11:30:06', 0),
(14, 'test', '', '2024-11-07 11:55:57', NULL, '2024-11-07 11:57:52', 0),
(15, 'test', '', '2024-11-07 11:57:03', NULL, '2024-11-07 11:57:55', 0),
(16, 'Javier', '', '2024-11-07 11:57:14', NULL, '2024-11-07 11:57:58', 0),
(17, 'Test2', '', '2024-11-07 11:58:04', NULL, NULL, 1),
(18, 'Test3', '', '2024-11-07 12:00:37', NULL, NULL, 1),
(19, 'ertyuio', '', '2024-11-07 12:29:18', '2024-11-07 12:29:31', NULL, 1),
(20, 'Javier', 'ENriquez', '2024-11-07 13:10:49', '2024-11-07 13:10:58', NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  ADD PRIMARY KEY (`prod_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
