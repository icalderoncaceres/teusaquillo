-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-04-2018 a las 05:27:30
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `teusaquillo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `identificacion` int(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(245) NOT NULL,
  `telefonos` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `observaciones` varchar(245) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `identificacion`, `nombre`, `direccion`, `telefonos`, `email`, `observaciones`) VALUES
(1, 1232396262, 'Ivan', 'Suba', '3117364378', 'ivan@mail.com', 'Ninguna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `more` decimal(12,0) NOT NULL,
  `less` decimal(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `description`, `more`, `less`) VALUES
(1, 'Item 1', '2000', '1000'),
(2, 'Item 2', '3000', '2000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes_detalle`
--

CREATE TABLE `planes_detalle` (
  `valor_retirar` decimal(12,0) NOT NULL,
  `items_id` int(11) NOT NULL,
  `platinium` int(11) NOT NULL,
  `gold` int(11) NOT NULL,
  `premium` int(11) NOT NULL,
  `valor_adicional` decimal(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservaciones`
--

CREATE TABLE `reservaciones` (
  `id` int(11) NOT NULL,
  `fecha_reserv` datetime NOT NULL,
  `fecha_event` datetime NOT NULL,
  `salon` varchar(45) NOT NULL,
  `plan` varchar(45) NOT NULL,
  `monto` double NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `observaciones` varchar(245) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reservaciones`
--

INSERT INTO `reservaciones` (`id`, `fecha_reserv`, `fecha_event`, `salon`, `plan`, `monto`, `cliente_id`, `observaciones`) VALUES
(1, '2018-04-04 00:00:00', '2018-04-13 00:00:00', 'Principal', 'Golden', 123088, 1, 'Ninguna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservaciones_detalle`
--

CREATE TABLE `reservaciones_detalle` (
  `reservaciones_id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservaciones`
--
ALTER TABLE `reservaciones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `reservaciones`
--
ALTER TABLE `reservaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
