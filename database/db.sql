-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-04-2023 a las 02:21:11
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
-- Base de datos: `face_job`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `email` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `age` date DEFAULT NULL,
  `number` text NOT NULL,
  `password` text NOT NULL,
  `iconUser` text NOT NULL,
  `profession` varchar(50) NOT NULL,
  `codigo` int(30) DEFAULT NULL,
  `cod_paquete` varchar(1) DEFAULT NULL,
  `info_paquete` int(2) DEFAULT NULL,
  `lastname` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`email`, `name`, `age`, `number`, `password`, `iconUser`, `profession`, `codigo`, `cod_paquete`, `info_paquete`, `lastname`) VALUES
('anciano@gmail.com', 'Yaji', '2023-04-05', '1242141', '$2b$10$Y9GCco6/bjwcE3XYllwWM.daa89hyvTJvvnEzg4Jt9YOIxZenEC.i', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1680828571/posts/zxck2qaa8wcluo8ra4qi.jpg', 'programador', 0, '4', 0, 'Anciano'),
('camilogomess10@gmail.com', 'camilo', '2023-03-12', '3128977187', '$2b$10$hRgWC.vxA4.G2XrxsXARBehVby1Nrw4FPuTZbaGwfEgUwKoErSu6u', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1678657052/posts/ce3wifbdg93wf51d34pi.jpg', 'Profesor', 0, NULL, NULL, 'gomes'),
('dabeats0914@gmail.com', 'David', '2023-04-04', '3015112641', '$2b$10$0mLUJmMTLENdK.en08Jq.O4iUZD7vgW75fRhYk.MQILQvTLMBn4KK', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1680908740/posts/qrrasxnqharjpxdihp5c.jpg', 'programador', 0, '1', 0, 'Cuellar Velez'),
('juanca@gmail.com', 'Juan', '2023-04-04', '31321', '$2b$10$tap1YB0f3oHP/FOzNgRFD.pLVul24BTPazmhe0HGTv49TiK5U9TY.', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1680749854/posts/tnuvc71ssw8btqei7ffd.png', 'programador', 0, '4', 0, 'Carlos'),
('kebinochoa10@gmail.com', 'kebyn', '2023-03-11', '657567', '$2b$10$8xjiWGG6YW0dhj9rOKnxD.IzEuVOC4ZY24yt47hK/E2nzLsotbePS', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1680828409/posts/woz9emkuc0hivxq96w2v.jpg', 'Profesor', 0, '1', 2, 'ochoa'),
('zed@gmail.com', 'zed', '0000-00-00', '4354', '$2b$10$R/XO00nx3OGhe.ynmtc3C./mQ5BSd87tQByUaOhQOTn0Fjq0P9hb.', 'https://res.cloudinary.com/dqrwt5fo7/image/upload/v1674674484/posts/kfslmtqtfmrxpnv2cw4w.jpg', 'programador', NULL, '2', 9, 'ryan');

--
-- Disparadores `cliente`
--
DELIMITER $$
CREATE TRIGGER `paquete_default` BEFORE INSERT ON `cliente` FOR EACH ROW BEGIN
	SET NEW.cod_paquete = "4",
    NEW.info_paquete = 3;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(20) NOT NULL,
  `comentario` varchar(100) DEFAULT NULL,
  `hora` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `comentario`, `hora`) VALUES
(30000, 'dfgd', '2023-01-25 20:06:34'),
(30001, 'hola', '2023-04-06 19:57:48'),
(30002, 'qwrrq', '2023-04-07 19:15:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios_imagen`
--

CREATE TABLE `comentarios_imagen` (
  `id_comentario` int(20) DEFAULT NULL,
  `idimagen` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios_imagen`
--

INSERT INTO `comentarios_imagen` (`id_comentario`, `idimagen`) VALUES
(30001, 50022),
(30002, 50024);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios_textos`
--

CREATE TABLE `comentarios_textos` (
  `id_comentario2` int(20) DEFAULT NULL,
  `idtextos` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios_usuario`
--

CREATE TABLE `comentarios_usuario` (
  `id_comentario3` int(20) DEFAULT NULL,
  `emailcliente` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios_usuario`
--

INSERT INTO `comentarios_usuario` (`id_comentario3`, `emailcliente`) VALUES
(30001, 'dabeats0914@gmail.com'),
(30002, 'dabeats0914@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `megusta`
--

CREATE TABLE `megusta` (
  `id_megusta` int(20) DEFAULT NULL,
  `email_megusta` varchar(50) DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `megusta`
--

INSERT INTO `megusta` (`id_megusta`, `email_megusta`, `estado`) VALUES
(50021, 'zed@gmail.com', 'nomegusta'),
(50022, 'dabeats0914@gmail.com', 'nomegusta'),
(50024, 'dabeats0914@gmail.com', 'nomegusta'),
(50024, 'juanca@gmail.com', 'megusta'),
(50027, 'dabeats0914@gmail.com', 'nomegusta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `megustatextos`
--

CREATE TABLE `megustatextos` (
  `id_textos` int(20) DEFAULT NULL,
  `email_cliente2` varchar(50) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `megustatextos`
--

INSERT INTO `megustatextos` (`id_textos`, `email_cliente2`, `estado`) VALUES
(7023, 'camilogomess10@gmail.com', 'nomegusta'),
(7023, 'kebinochoa10@gmail.com', 'megusta'),
(7027, 'dabeats0914@gmail.com', 'nomegusta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquetes`
--

CREATE TABLE `paquetes` (
  `nombre_paquete` varchar(1) NOT NULL,
  `vistas_paquete` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paquetes`
--

INSERT INTO `paquetes` (`nombre_paquete`, `vistas_paquete`) VALUES
('1', 10),
('2', 25),
('3', 40),
('4', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesionales_vistos`
--

CREATE TABLE `profesionales_vistos` (
  `email_cliente` varchar(50) DEFAULT NULL,
  `email_visto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesionales_vistos`
--

INSERT INTO `profesionales_vistos` (`email_cliente`, `email_visto`) VALUES
('juanca@gmail.com', 'camilogomess10@gmail.com'),
('juanca@gmail.com', 'kebinochoa10@gmail.com'),
('juanca@gmail.com', 'anciano@gmail.com'),
('juanca@gmail.com', 'dabeats0914@gmail.com'),
('kebinochoa10@gmail.com', 'anciano@gmail.com'),
('kebinochoa10@gmail.com', 'dabeats0914@gmail.com'),
('kebinochoa10@gmail.com', 'camilogomess10@gmail.com'),
('zed@gmail.com', 'camilogomess10@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id` int(20) NOT NULL,
  `tiempo` timestamp NOT NULL DEFAULT current_timestamp(),
  `img` text DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `likes` int(10) DEFAULT 0,
  `comments` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id`, `tiempo`, `img`, `description`, `likes`, `comments`) VALUES
(50000, '2023-01-25 20:08:02', 'gdfg', 'dfgdfg', 0, 0),
(50007, '2023-01-25 23:17:20', 'https://res.cloudinary.com/dqrwt5fo7/image/upload/v1674674237/posts/b0tv2xe99edsgqng4xjb.png', 'juego melito', 0, 0),
(50010, '2023-03-12 04:10:23', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1678576222/posts/nk6ktkzkv3fkl19orh34.png', 'fgdgdfgd', 0, 0),
(50011, '2023-03-12 04:12:33', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1678576352/posts/an427mqsiiipnzxdjlgj.png', 'melooo', 0, 0),
(50012, '2023-03-12 04:14:03', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1678576441/posts/k1i5uoe5cbehcxcthgva.png', 'melooo', 0, 0),
(50017, '2023-03-13 02:45:00', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1678657499/posts/ln9cw9j1p5el49wzbchu.jpg', 'sdfsdf', 2, 0),
(50021, '2023-04-04 04:12:24', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1680581544/posts/adqdugtxorahvf6rotxl.jpg', '123', 0, 0),
(50022, '2023-04-04 18:02:02', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1680631319/posts/gg99houggfu2agsk1f7i.jpg', 'poi', 0, 1),
(50023, '2023-04-06 02:56:11', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1680749770/posts/cr00pehqenknxcjzw89r.png', 'qwert', 0, 1),
(50024, '2023-04-07 16:28:33', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1680884912/posts/umjqzoerurvmimyzmyxw.jpg', 'hola', 2, 1),
(50027, '2023-04-08 00:04:03', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1680912243/posts/gdpw5rrz5leyuhz5vobm.jpg', 'linda', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacionestextos`
--

CREATE TABLE `publicacionestextos` (
  `id` int(20) NOT NULL,
  `tiempo` timestamp NOT NULL DEFAULT current_timestamp(),
  `textos` varchar(80) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `likes` int(10) DEFAULT 0,
  `comments` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `publicacionestextos`
--

INSERT INTO `publicacionestextos` (`id`, `tiempo`, `textos`, `description`, `likes`, `comments`) VALUES
(7000, '2023-01-25 05:05:21', 'ewraawe', 'werawe', 0, 0),
(7016, '2023-01-25 20:31:23', 'hgj', 'ghjgh', 0, 0),
(7023, '2023-03-13 02:45:22', 'hola', 'melooo', 1, 0),
(7027, '2023-04-07 23:57:50', 'hola baby, eieieiei', 'qwerty', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacionestextos_cliente`
--

CREATE TABLE `publicacionestextos_cliente` (
  `email4` varchar(50) DEFAULT NULL,
  `id3` int(20) DEFAULT NULL,
  `tiempo` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `publicacionestextos_cliente`
--

INSERT INTO `publicacionestextos_cliente` (`email4`, `id3`, `tiempo`) VALUES
('zed@gmail.com', 7016, '2023-01-25 20:51:25'),
('camilogomess10@gmail.com', 7023, '2023-03-13 02:45:23'),
('dabeats0914@gmail.com', 7027, '2023-04-07 23:57:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones_cliente`
--

CREATE TABLE `publicaciones_cliente` (
  `email3` varchar(50) DEFAULT NULL,
  `id2` int(20) DEFAULT NULL,
  `tiempo` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `publicaciones_cliente`
--

INSERT INTO `publicaciones_cliente` (`email3`, `id2`, `tiempo`) VALUES
('zed@gmail.com', 50007, '2023-01-25 23:17:20'),
('camilogomess10@gmail.com', 50017, '2023-03-13 02:45:01'),
('zed@gmail.com', 50021, '2023-04-04 04:12:24'),
('dabeats0914@gmail.com', 50022, '2023-04-04 18:02:02'),
('juanca@gmail.com', 50023, '2023-04-06 02:56:12'),
('dabeats0914@gmail.com', 50024, '2023-04-07 16:28:33'),
('dabeats0914@gmail.com', 50027, '2023-04-08 00:04:03');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`email`),
  ADD KEY `cod_paquete` (`cod_paquete`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios_imagen`
--
ALTER TABLE `comentarios_imagen`
  ADD KEY `id_comentario` (`id_comentario`),
  ADD KEY `idimagen` (`idimagen`);

--
-- Indices de la tabla `comentarios_textos`
--
ALTER TABLE `comentarios_textos`
  ADD KEY `id_comentario2` (`id_comentario2`),
  ADD KEY `idtextos` (`idtextos`);

--
-- Indices de la tabla `comentarios_usuario`
--
ALTER TABLE `comentarios_usuario`
  ADD KEY `id_comentario3` (`id_comentario3`),
  ADD KEY `emailcliente` (`emailcliente`);

--
-- Indices de la tabla `megusta`
--
ALTER TABLE `megusta`
  ADD KEY `id_megusta` (`id_megusta`),
  ADD KEY `email_megusta` (`email_megusta`);

--
-- Indices de la tabla `megustatextos`
--
ALTER TABLE `megustatextos`
  ADD KEY `id_textos` (`id_textos`),
  ADD KEY `email_cliente2` (`email_cliente2`);

--
-- Indices de la tabla `paquetes`
--
ALTER TABLE `paquetes`
  ADD PRIMARY KEY (`nombre_paquete`);

--
-- Indices de la tabla `profesionales_vistos`
--
ALTER TABLE `profesionales_vistos`
  ADD KEY `email_cliente` (`email_cliente`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `publicacionestextos`
--
ALTER TABLE `publicacionestextos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `publicacionestextos_cliente`
--
ALTER TABLE `publicacionestextos_cliente`
  ADD KEY `email4` (`email4`),
  ADD KEY `id3` (`id3`);

--
-- Indices de la tabla `publicaciones_cliente`
--
ALTER TABLE `publicaciones_cliente`
  ADD KEY `email3` (`email3`),
  ADD KEY `id2` (`id2`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30008;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50028;

--
-- AUTO_INCREMENT de la tabla `publicacionestextos`
--
ALTER TABLE `publicacionestextos`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7028;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`cod_paquete`) REFERENCES `paquetes` (`nombre_paquete`);

--
-- Filtros para la tabla `comentarios_imagen`
--
ALTER TABLE `comentarios_imagen`
  ADD CONSTRAINT `comentarios_imagen_ibfk_1` FOREIGN KEY (`id_comentario`) REFERENCES `comentarios` (`id`),
  ADD CONSTRAINT `comentarios_imagen_ibfk_2` FOREIGN KEY (`idimagen`) REFERENCES `publicaciones` (`id`);

--
-- Filtros para la tabla `comentarios_textos`
--
ALTER TABLE `comentarios_textos`
  ADD CONSTRAINT `comentarios_textos_ibfk_1` FOREIGN KEY (`id_comentario2`) REFERENCES `comentarios` (`id`),
  ADD CONSTRAINT `comentarios_textos_ibfk_2` FOREIGN KEY (`idtextos`) REFERENCES `publicacionestextos` (`id`);

--
-- Filtros para la tabla `comentarios_usuario`
--
ALTER TABLE `comentarios_usuario`
  ADD CONSTRAINT `comentarios_usuario_ibfk_1` FOREIGN KEY (`id_comentario3`) REFERENCES `comentarios` (`id`),
  ADD CONSTRAINT `comentarios_usuario_ibfk_2` FOREIGN KEY (`emailcliente`) REFERENCES `cliente` (`email`);

--
-- Filtros para la tabla `megusta`
--
ALTER TABLE `megusta`
  ADD CONSTRAINT `megusta_ibfk_1` FOREIGN KEY (`id_megusta`) REFERENCES `publicaciones` (`id`),
  ADD CONSTRAINT `megusta_ibfk_2` FOREIGN KEY (`email_megusta`) REFERENCES `cliente` (`email`);

--
-- Filtros para la tabla `megustatextos`
--
ALTER TABLE `megustatextos`
  ADD CONSTRAINT `megustatextos_ibfk_1` FOREIGN KEY (`id_textos`) REFERENCES `publicacionestextos` (`id`),
  ADD CONSTRAINT `megustatextos_ibfk_2` FOREIGN KEY (`email_cliente2`) REFERENCES `cliente` (`email`);

--
-- Filtros para la tabla `profesionales_vistos`
--
ALTER TABLE `profesionales_vistos`
  ADD CONSTRAINT `profesionales_vistos_ibfk_1` FOREIGN KEY (`email_cliente`) REFERENCES `cliente` (`email`);

--
-- Filtros para la tabla `publicacionestextos_cliente`
--
ALTER TABLE `publicacionestextos_cliente`
  ADD CONSTRAINT `publicacionestextos_cliente_ibfk_1` FOREIGN KEY (`email4`) REFERENCES `cliente` (`email`),
  ADD CONSTRAINT `publicacionestextos_cliente_ibfk_2` FOREIGN KEY (`id3`) REFERENCES `publicacionestextos` (`id`);

--
-- Filtros para la tabla `publicaciones_cliente`
--
ALTER TABLE `publicaciones_cliente`
  ADD CONSTRAINT `publicaciones_cliente_ibfk_1` FOREIGN KEY (`email3`) REFERENCES `cliente` (`email`),
  ADD CONSTRAINT `publicaciones_cliente_ibfk_2` FOREIGN KEY (`id2`) REFERENCES `publicaciones` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
