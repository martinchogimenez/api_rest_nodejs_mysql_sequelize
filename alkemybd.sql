-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-04-2022 a las 19:27:35
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alkemybd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `image` blob DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `history` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `characters`
--

INSERT INTO `characters` (`id`, `image`, `name`, `age`, `weight`, `history`, `createdAt`, `updatedAt`) VALUES
(1, NULL, 'pepe', 11, 35, 'ble bla ble', '2021-07-04 19:36:44', '2021-07-04 19:36:44'),
(2, NULL, 'pipi', 88, 22, 'blblblb', '2021-07-04 19:39:26', '2021-07-04 19:39:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generes`
--

CREATE TABLE `generes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` blob DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `image` blob DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `date_of_creation` datetime DEFAULT NULL,
  `calification` int(11) DEFAULT NULL,
  `genere_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'pepote', 'pepote@gmail.com', '$2a$10$UDx9d0/oMSos9eMS/zn.kenpZhttdMS8KUeM//BbQ3TqMgBPwfJdy', '2021-06-27 23:30:43', '2021-06-27 23:30:43'),
(2, 'pepote', 'pepote@gmail.com', '$2a$10$44SFjIOA1BkuOGst6QdtLunWdch7ahoeGqi9wagF9asB.hJUExXBS', '2021-06-27 23:52:37', '2021-06-27 23:52:37'),
(3, 'pepote', 'pepote@gmail.com', '$2a$10$iGTQbMflQ3ws7Oshf2JSEey3WMh/bFLOyAflTSC0FlrYBJE8aAt1e', '2021-06-27 23:53:39', '2021-06-27 23:53:39'),
(4, 'pepote', 'pepote@gmail.com', '$2a$10$QnbEkTgyJka1DT7WVJSMt.NM155wkvB..FFih6moLuIxvjquR2vgm', '2021-06-27 23:54:47', '2021-06-27 23:54:47'),
(5, 'pepote', 'pepote@gmail.com', '$2a$10$5eWVL7Cs2PNVSVuQTnuY9uEhdXfPlGrW5v1e7roSdelPEU4C0N3DK', '2021-06-27 23:56:01', '2021-06-27 23:56:01'),
(6, 'pepote', 'pepote@gmail.com', '$2a$10$o48nK35HOnWxu0Guxyc31uYHJZyPzfJZ3uSFzYvyzI2neTF/24gTK', '2021-06-28 00:02:59', '2021-06-28 00:02:59'),
(7, 'yuy', 'yuyu@gmail.com', '$2a$10$OaE40DXUmRGa3UP6LDizyOyrdeZA8A6E45TUPPobxXpfcD8c/ZKkG', '2021-06-28 00:24:22', '2021-06-28 00:24:22'),
(8, 'gogo', 'yuyu@gmail.com', '$2a$10$jeed8iSQuLXTLZg8rvlz5.96q6xMyWDxS4THdXLDIuUMAL6yBXqJS', '2021-06-28 00:30:32', '2021-06-28 00:30:32'),
(9, 'gogo', 'yuyu@gmail.com', '$2a$10$crXAengOKuxp.35TkGcl7ePTD1/8AH6Nn1Vso.AqvFUhEwnTTA2dC', '2021-06-28 00:55:24', '2021-06-28 00:55:24'),
(10, 'gogo', 'martincho.gimenez@gmail.com', '$2a$10$uwFKfd5UjatzkOA7VHE52uyzcZq9fGIqn3tp6GILFrrfo.dAcqsDi', '2021-06-28 00:55:51', '2021-06-28 00:55:51'),
(11, 'gogo', 'martincho.gimenez@gmail.com', '$2a$10$K/GjK.KHYtXhDwdbSXGtd.ZcnZ/HG1JxbG0.XMzr6uQxg8D0Nd8Pi', '2021-06-28 00:57:52', '2021-06-28 00:57:52'),
(12, 'gogo', 'martincho.gimenez@gmail.com', '$2a$10$SKbBg2dnbHEgypXiXswiE.T53m3wAb1NAEYmmPfUh2mN1Q/3IZ5C2', '2021-06-28 15:25:09', '2021-06-28 15:25:09'),
(13, 'gogo', 'martincho.gimenez@gmail.com', '$2a$10$gTIdPETTJA70yZ4nhl8rKOiG7ZY8NyVfe7UPnRlskK/NHfJOwtpLm', '2021-06-29 15:53:28', '2021-06-29 15:53:28'),
(14, 'gogo', 'martincho.gimenez@gmail.com', '$2a$10$9Da9PndpPSSjv8yeN7..UuB8ahdBV1U3d54Xo.ygHdUAIz/SgqRMm', '2021-07-04 12:02:40', '2021-07-04 12:02:40'),
(15, 'gogo', 'martincho.gimenez@gmail.com', '$2a$10$i7p2ByDAbD6Kio5XjU5eQOAyfkyV39zyF5VdauU00CwNrZ41.DXh6', '2021-07-04 12:52:55', '2021-07-04 12:52:55'),
(16, 'gogo', 'martincho.gimenez@gmail.com', '$2a$10$NSMBURdFKFTjFy1zyyPEnuHQCLflOQd1UtzXEGuRQT4lu/7iiz0Ay', '2021-07-04 12:55:15', '2021-07-04 12:55:15'),
(17, 'gogo', 'martincho.gimenez@gmail.com', '$2a$10$XnOse2sIUrx6HYrAJcgzh.M84LvV6n7k/qgsOKW1ua/B2qmMoRnmi', '2021-07-04 13:00:37', '2021-07-04 13:00:37'),
(18, 'gogo', 'martincho.gimenez@gmail.com', '$2a$10$l9/qTZTVWTUeN/Dfvjg0Bep8e2a/ztJ99GXhznk/jeBaOuTfIbJxu', '2021-07-04 13:02:51', '2021-07-04 13:02:51'),
(19, 'gogo', 'martincho.gimenez@gmail.com', '$2a$10$qLaRmD49CJKNzb3BCAHmFuNsv7yfedmg8408ZMFYKzp/ukImAel9i', '2021-07-04 13:28:46', '2021-07-04 13:28:46'),
(20, 'gogo', 'martincho.gimenez@gmail.com', '$2a$10$OedGVF3CrAYggvmCtpxif.oKZdatr93SkcUUp5/lYIA7D8viAxo1W', '2021-07-04 13:44:28', '2021-07-04 13:44:28');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `generes`
--
ALTER TABLE `generes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `generes`
--
ALTER TABLE `generes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
