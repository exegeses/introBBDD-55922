-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 05-01-2022 a las 14:19:27
-- Versión del servidor: 8.0.26
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `prueba`
--
CREATE DATABASE prueba;
USE prueba;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idCategoria` tinyint UNSIGNED NOT NULL,
  `catNombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `catNombre`) VALUES
(1, 'Smartphone'),
(2, 'Cámaras mirorless'),
(3, 'Lentes'),
(4, 'Parlantes bluetooth'),
(5, 'Smart TV'),
(6, 'Consolas'),
(7, 'Tablets'),
(8, 'Crypto wallet');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `idMarca` tinyint UNSIGNED NOT NULL,
  `mkNombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`idMarca`, `mkNombre`) VALUES
(1, 'Nikon'),
(2, 'Apple'),
(3, 'Audiotechnica'),
(4, 'Marshall'),
(5, 'Samsung'),
(6, 'Huawei'),
(7, 'Ledger'),
(8, 'Safepal'),
(9, 'Trezor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` mediumint UNSIGNED NOT NULL,
  `prdNombre` varchar(78) NOT NULL,
  `prdPrecio` double(8,2) NOT NULL,
  `idMarca` tinyint UNSIGNED NOT NULL,
  `idCategoria` tinyint UNSIGNED NOT NULL,
  `prdDescripcion` text NOT NULL,
  `prdImagen` varchar(45) NOT NULL,
  `prdActivo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `prdNombre`, `prdPrecio`, `idMarca`, `idCategoria`, `prdDescripcion`, `prdImagen`, `prdActivo`) VALUES
(1, 'Nikon Z6', 1650.00, 1, 2, 'Cuerpo de cámara sin espejo formato full frame. Resolución 24.5 MPX. Bluetooth, Wi-Fi, GPS. ISO 100-51200', 'nikon-z6.jpg', 1),
(2, 'iPhone 12 Pro (256GB) gold', 1200.00, 2, 1, 'Apple iPhone 12 Pro de 256GB color dorado, libre de carrier.', 'iphone-12-pro-gold.png', 1),
(3, 'Marshall Acton II', 300.00, 4, 4, 'Altavoz inalámbrico Marshall Acton II. Wi-Fi y Bluetooth multihabitación color negro.', 'marshall-acton.jpg', 1),
(4, 'Homepod Mini', 99.00, 2, 4, 'Altavoz inteligente inalámbrico. Compatible con Siri. Wifi, Bluetooth. Compatible con multihabitación.', 'homepod-mini.jpg', 1),
(5, 'Samsung Class QLED Q80T Series', 1200.00, 5, 5, 'Smart TV Samsung Class QLED Q80T Series, 65\", 4K, UHD', 'Q80T.jpg', 1),
(6, 'P40 Pro Plus 512GB', 1250.00, 6, 1, 'Smartphone Huawei P40 Pro Plus 5G 512GB', 'P40-pro-plus.jpg', 1),
(7, 'Ledger Nano S', 40.00, 7, 8, 'Crypto billetera con pantalla', 'noDisponible.jpg', 1),
(8, 'Trezor T', 130.00, 9, 8, 'Crypto billetera copn pantalla táctil', 'noDisponible.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productosOLD`
--

CREATE TABLE `productosOLD` (
  `id` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `precio` float UNSIGNED NOT NULL,
  `stock` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productosOLD`
--

INSERT INTO `productosOLD` (`id`, `nombre`, `precio`, `stock`) VALUES
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `destinos`
--
ALTER TABLE `destinos`
  ADD PRIMARY KEY (`idDestino`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`idMarca`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `productos_idmarca_foreign` (`idMarca`),
  ADD KEY `productos_idcategoria_foreign` (`idCategoria`);

--
-- Indices de la tabla `productosOLD`
--
ALTER TABLE `productosOLD`
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
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `destinos`
--
ALTER TABLE `destinos`
  MODIFY `idDestino` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `idMarca` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `productosOLD`
--
ALTER TABLE `productosOLD`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `idRegion` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_idcategoria_foreign` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`),
  ADD CONSTRAINT `productos_idmarca_foreign` FOREIGN KEY (`idMarca`) REFERENCES `marcas` (`idMarca`);
COMMIT;


