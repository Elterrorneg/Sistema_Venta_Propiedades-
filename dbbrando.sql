-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2023 a las 22:41:37
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbbrando`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedades`
--

CREATE TABLE `propiedades` (
  `id` smallint(5) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `caracteristicas` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `precioalquiler` decimal(6,2) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `propiedades`
--

INSERT INTO `propiedades` (`id`, `nombre`, `direccion`, `caracteristicas`, `estado`, `precioalquiler`, `create_at`, `update_at`) VALUES
(3, 'asaS', 'DAADDDA', 'SDA<DDD', 'ADADAD', '12.00', '2023-11-16 21:28:42', '2023-11-16 21:28:42'),
(4, 'bb', 'bb', 'bb', 'bb', '11.00', '2023-11-16 21:29:08', '2023-11-16 21:29:08'),
(6, 'Gran depa', 'Cuenta con varias habitaciones', 'se encuentra en el centro', 'Alquilado', '120.00', '2023-11-16 21:37:14', '2023-11-16 21:37:14'),
(7, 'Oferton Plaza', '10 metros cuadrados', 'En el mercado modelo', 'Disponible', '130.00', '2023-11-16 21:38:05', '2023-11-16 21:38:05'),
(8, 'cuarto', 'Se encuentra en el tercer piso', 'JR de la Union', 'Ocupado', '600.00', '2023-11-16 21:38:59', '2023-11-16 21:38:59'),
(9, 'Bosques', 'Amplio, uso para estudio', 'Frente a la pradera', 'Desocupado', '400.00', '2023-11-16 21:40:47', '2023-11-16 21:40:47');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
