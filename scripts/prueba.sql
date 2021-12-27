-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 22-12-2021 a las 15:48:52
-- Versión del servidor: 8.0.26
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destinos`
--

CREATE TABLE `destinos` (
  `idDestino` tinyint UNSIGNED NOT NULL,
  `destNombre` varchar(45) NOT NULL,
  `idRegion` tinyint NOT NULL,
  `destPrecio` float NOT NULL,
  `destAsientos` tinyint NOT NULL,
  `destDisponibles` tinyint NOT NULL,
  `destActivo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `destinos`
--

INSERT INTO `destinos` (`idDestino`, `destNombre`, `idRegion`, `destPrecio`, `destAsientos`, `destDisponibles`, `destActivo`) VALUES
(1, 'Londres (Heathrow)', 5, 9711, 5, 5, 1),
(2, 'Amsterdam (Schiphol)', 5, 6231, 5, 5, 1),
(3, 'Miami (Wilcox Field)', 4, 6517, 5, 5, 1),
(4, 'Tokio (Narita)', 7, 8704, 5, 5, 1),
(5, 'Kuala Lumpur (KLIA)', 8, 8570, 5, 5, 1),
(6, 'Bangkok (Suvarnabhumi)', 8, 8469, 5, 5, 1),
(7, 'París (Charles de Gaulle)', 5, 7713, 5, 5, 1),
(8, 'Cancún (Cancún)', 3, 6494, 5, 5, 1),
(9, 'Milán (Malpensa)', 5, 6756, 5, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `precio` float UNSIGNED NOT NULL,
  `stock` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `stock`) VALUES
(1, 'Ledger Nano S', 16000, 30),
(2, 'Trezor One', 19500, 30),
(3, 'Trezor T', 78000, 20),
(4, 'Ledger Nano X', 56000, 20),
(5, 'Safepal S1', 15000, 50),
(6, 'secux v20', 55000, 20),
(7, 'secux w20', 46000, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `idRegion` tinyint UNSIGNED NOT NULL,
  `regNombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`idRegion`, `regNombre`) VALUES
(1, 'América del Sur'),
(2, 'América Central'),
(3, 'Caribe y México'),
(4, 'América del Norte'),
(5, 'Europa Occidental'),
(6, 'Europa del Este'),
(7, 'Asia'),
(8, 'Oceanía');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `destinos`
--
ALTER TABLE `destinos`
  ADD PRIMARY KEY (`idDestino`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`idRegion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `destinos`
--
ALTER TABLE `destinos`
  MODIFY `idDestino` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `idRegion` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
