-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2024 a las 05:02:07
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
-- Base de datos: `crud-basico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conciertos`
--

CREATE TABLE `conciertos` (
  `idConcierto` int(11) NOT NULL,
  `username` text NOT NULL,
  `titulo` text NOT NULL,
  `fechayHs` text NOT NULL,
  `lugarDia` text NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `conciertos`
--

INSERT INTO `conciertos` (`idConcierto`, `username`, `titulo`, `fechayHs`, `lugarDia`, `descripcion`) VALUES
(6, 'safasfa', 'Buenos Aires -afasfasfasfasasfas', 'Sabado 15 de junio - 16hs ', 'Av. San Juan 4500, CABA', 'Entradas en venta en boletería del teatro de lunes a sábado de 9 a 18hs (Tel 381 4214994)'),
(8, '1234', 'afafasfs', 'fasfasf', 'asfasf', 'afafasf}\r\n\r\n'),
(9, '', 'aaaaaaaaaaa', 'aaaaaaaaaaaaaa', 'aaaaaaaa', 'aaaaaaaaaa'),
(10, '', 'bbbbbbbbbb', 'bbbbbbbbbbb', 'bbbbbbbbbbbbbb', 'bbbbbbbbbbbbbbbbbbb'),
(11, '', 'ccccccc', 'cccccccccc', 'ccccccccccc', 'cccccccccccc'),
(12, '', 'ddddddddddd', 'ddddddddd', 'ddddddddd', 'ddddddddd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `firstname` text DEFAULT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text DEFAULT NULL,
  `birthdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `middlename`, `lastname`, `birthdate`) VALUES
(1, '1234', '1234', 'asdasdas', 'Vasquez', 'tumama', '2024-05-03'),
(2, 'ffelisk', '2333', 'aaa', 'gsdgsd', 'gsdgsdds', '2024-05-02'),
(3, 'safasfa', 'fafasfas', 'asfas', 'fasasf', 'sfasf', '0124-03-12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conciertos`
--
ALTER TABLE `conciertos`
  ADD PRIMARY KEY (`idConcierto`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING HASH;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `conciertos`
--
ALTER TABLE `conciertos`
  MODIFY `idConcierto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
