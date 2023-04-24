-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-04-2023 a las 15:36:30
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
  `lastname` varchar(70) NOT NULL,
  `namecomplete` varchar(100) DEFAULT NULL,
  `rol` varchar(20) DEFAULT 'Cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`email`, `name`, `age`, `number`, `password`, `iconUser`, `profession`, `codigo`, `cod_paquete`, `info_paquete`, `lastname`, `namecomplete`, `rol`) VALUES
('anciano@gmail.com', 'Yaji', '2023-04-05', '1242141', '$2b$10$Y9GCco6/bjwcE3XYllwWM.daa89hyvTJvvnEzg4Jt9YOIxZenEC.i', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682083366/usericon_eqm409.jpg', 'Diseñador grafico', 0, '1', 3, 'Anciano', 'Yaji Anciano', 'Cliente'),
('camilogomess10@gmail.com', 'camilo', '2023-03-12', '2345425646', '$2b$10$hRgWC.vxA4.G2XrxsXARBehVby1Nrw4FPuTZbaGwfEgUwKoErSu6u', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1681834317/posts/sh4sxxyw6jf0dlq4x1fm.jpg', 'Coach personal', 0, '1', 1, 'gomez', 'camilo gomes', 'Cliente'),
('dabeats0914@gmail.com', 'David', '2023-04-04', '3015112641', '$2b$10$0mLUJmMTLENdK.en08Jq.O4iUZD7vgW75fRhYk.MQILQvTLMBn4KK', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682083366/usericon_eqm409.jpg', 'Desarrollador de software', 4746, '1', 1, 'Cuellar Velez', 'David Cuellar Velez', 'Cliente'),
('danaeslo2004@gmail.com', 'Danna', '2004-11-28', '3508637649', '$2b$10$OXkWbMCdIAwVY/l5/VbZPuDPQUA68QcTsqYcONWCDkXaP2phDaFoO', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682083366/usericon_eqm409.jpg', 'Diseñador grafico', 0, '1', 2, 'Estrada', 'Danna Estrada', 'Cliente'),
('face-job-admin@facejob.com', 'face', '2023-04-17', '32423423423', '$2b$10$rYFu1f28ITlAuZm3HYm58.3kgGcsjrnFzzUuV1Nq7tFkScnvq99Py', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682083366/usericon_eqm409.jpg', 'Face-job', 0, '4', 3, 'job', 'face job', 'ADMIN'),
('juanca@gmail.com', 'Juan', '2023-04-04', '3019874512', '$2b$10$tap1YB0f3oHP/FOzNgRFD.pLVul24BTPazmhe0HGTv49TiK5U9TY.', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682083366/usericon_eqm409.jpg', 'Desarrollador de aplicaciones moviles', 0, '2', 10, 'Carlos', 'Juan Velez', 'Cliente'),
('kebinochoa10@gmail.com', 'Kebyn', '2023-03-11', '31321', '$2b$10$8xjiWGG6YW0dhj9rOKnxD.IzEuVOC4ZY24yt47hK/E2nzLsotbePS', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682083366/usericon_eqm409.jpg', 'Diseñador de interiores', 0, '4', 0, 'ochoa', 'kebyn ochoa', 'Cliente'),
('prueba1@gmail.com', 'Prueba', '2023-04-18', '3137744766', '$2b$10$waYZ2mvtDl0jt8ziuCNMue.wXcdTZwsDgPahXfUP.1uZp45jLVjDC', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682083366/usericon_eqm409.jpg', 'Diseñador grafico', 0, '4', 1, '1', 'Prueba 1', 'Cliente'),
('prueba2@gmail.com', 'Prueba', '2020-02-02', '6206206202', '$2b$10$QBFnjGU5j77eV3k8cjqH0un9H97Gd0Oa4CqrwB.sf2CNYFdn1Wmqa', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682083366/usericon_eqm409.jpg', 'Diseñador grafico', 0, '3', 14, '2', 'Prueba 2', 'Cliente'),
('zed@gmail.com', 'zed', '2023-03-12', '3147896352', '$2b$10$R/XO00nx3OGhe.ynmtc3C./mQ5BSd87tQByUaOhQOTn0Fjq0P9hb.', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682083366/usericon_eqm409.jpg', 'Fotografo', 0, '2', 4, 'ryan', 'zed ryan', 'Cliente');

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
  `comentario` text DEFAULT NULL,
  `hora` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `comentario`, `hora`) VALUES
(30000, 'dfgd', '2023-01-26 11:06:34'),
(30001, 'hola', '2023-04-07 10:57:48'),
(30002, 'qwrrq', '2023-04-08 10:15:45'),
(30013, 'holaaa', '2023-04-15 08:37:56'),
(30014, 'qwerqqtqt', '2023-04-15 08:38:59'),
(30020, 'HOLA', '2023-04-18 18:32:38'),
(30035, '', '2023-04-18 18:53:24'),
(30036, 'yet', '2023-04-18 18:53:27'),
(30051, 'asdad', '2023-04-18 20:58:39'),
(30053, 'hgjjg', '2023-04-18 21:03:00'),
(30054, 'hola', '2023-04-24 13:30:00');

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
(30020, 50058),
(30035, 50058),
(30036, 50058),
(30051, 50058),
(30054, 50060);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios_textos`
--

CREATE TABLE `comentarios_textos` (
  `id_comentario2` int(20) DEFAULT NULL,
  `idtextos` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios_textos`
--

INSERT INTO `comentarios_textos` (`id_comentario2`, `idtextos`) VALUES
(30053, 7041);

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
(30002, 'dabeats0914@gmail.com'),
(30020, 'prueba1@gmail.com'),
(30035, 'prueba1@gmail.com'),
(30036, 'prueba1@gmail.com'),
(30051, 'prueba1@gmail.com'),
(30053, 'prueba1@gmail.com'),
(30054, 'camilogomess10@gmail.com');

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
(50056, 'zed@gmail.com', 'nomegusta'),
(50058, 'camilogomess10@gmail.com', 'megusta'),
(50058, 'prueba1@gmail.com', 'megusta'),
(50056, 'danaeslo2004@gmail.com', 'nomegusta'),
(50059, 'zed@gmail.com', 'megusta'),
(50060, 'camilogomess10@gmail.com', 'nomegusta');

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
(7040, 'anciano@gmail.com', 'megusta'),
(7040, 'camilogomess10@gmail.com', 'nomegusta'),
(7040, 'dabeats0914@gmail.com', 'nomegusta'),
(7040, 'kebinochoa10@gmail.com', 'nomegusta'),
(7040, 'zed@gmail.com', 'nomegusta'),
(7040, 'juanca@gmail.com', 'nomegusta'),
(7041, 'anciano@gmail.com', 'nomegusta'),
(7041, 'camilogomess10@gmail.com', 'nomegusta'),
(7041, 'dabeats0914@gmail.com', 'nomegusta'),
(7041, 'danaeslo2004@gmail.com', 'nomegusta'),
(7041, 'juanca@gmail.com', 'nomegusta'),
(7041, 'zed@gmail.com', 'nomegusta'),
(7041, 'prueba2@gmail.com', 'nomegusta'),
(7041, 'face-job-admin@facejob.com', 'nomegusta'),
(7041, 'kebinochoa10@gmail.com', 'nomegusta'),
(7041, 'prueba1@gmail.com', 'nomegusta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `id_mensajes` int(11) NOT NULL,
  `remitente` varchar(70) DEFAULT NULL,
  `receptor` varchar(70) DEFAULT NULL,
  `mensaje` text DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `link` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mensaje`
--

INSERT INTO `mensaje` (`id_mensajes`, `remitente`, `receptor`, `mensaje`, `tipo`, `fecha`, `link`) VALUES
(61, 'juanca@gmail.com', 'dabeats0914@gmail.com', 'Hola me gustaria trabajar contigo', 'texto', '2023-04-16 07:24:24', 'NULL'),
(62, 'dabeats0914@gmail.com', 'juanca@gmail.com', 'Gracias por comunicarte', 'texto', '2023-04-16 07:24:24', 'NULL'),
(63, 'juanca@gmail.com', 'dabeats0914@gmail.com', 'qwewqerqrqrq', 'texto', '2023-04-16 07:24:32', 'NULL'),
(64, 'prueba2@gmail.com', 'danaeslo2004@gmail.com', 'Hola me gustaria trabajar contigo', 'texto', '2023-04-18 17:15:39', 'NULL'),
(65, 'danaeslo2004@gmail.com', 'prueba2@gmail.com', 'Gracias por comunicarte', 'texto', '2023-04-18 17:15:39', 'NULL'),
(66, 'prueba2@gmail.com', 'prueba1@gmail.com', 'Hola me gustaria trabajar contigo', 'texto', '2023-04-18 17:16:39', 'NULL'),
(67, 'prueba1@gmail.com', 'prueba2@gmail.com', 'Gracias por comunicarte', 'texto', '2023-04-18 17:16:39', 'NULL'),
(68, 'prueba1@gmail.com', 'prueba2@gmail.com', 'XD', 'texto', '2023-04-18 17:17:15', 'NULL'),
(69, 'prueba1@gmail.com', 'prueba2@gmail.com', 'Imagen', 'img', '2023-04-18 17:40:45', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1681821644/Images%20Chat/cdp3xhr2597cifbtwsiv.jpg'),
(70, 'prueba2@gmail.com', 'prueba1@gmail.com', 'hola', 'texto', '2023-04-18 17:41:49', 'NULL'),
(71, 'prueba1@gmail.com', 'prueba2@gmail.com', 'este es un texto largo para probar el tamaño del contenedor del chat, de manera de ver que tanto espacio soporta una chat box con un ensaje que sobresale al tamaño de un mensaje comun', 'texto', '2023-04-18 17:44:22', 'NULL'),
(72, 'prueba1@gmail.com', 'dabeats0914@gmail.com', 'Hola me gustaria trabajar contigo', 'texto', '2023-04-18 18:30:19', 'NULL'),
(73, 'dabeats0914@gmail.com', 'prueba1@gmail.com', 'Gracias por comunicarte', 'texto', '2023-04-18 18:30:19', 'NULL'),
(74, 'prueba1@gmail.com', 'dabeats0914@gmail.com', 'bobo', 'texto', '2023-04-18 18:30:28', 'NULL'),
(75, 'prueba1@gmail.com', 'prueba2@gmail.com', 'este es un texto largo para probar el tamaño del contenedor del chat, de manera de ver que tanto espacio soporta una chat box con un ensaje que sobresale al tamaño de un mensaje comuneste es un texto largo para probar el tamaño del contenedor del chat, de manera de ver que tanto espacio soporta una chat box con un ensaje que sobresale al tamaño de un mensaje comuneste es un texto largo para probar el tamaño del contenedor del chat, de manera de ver que tanto espacio soporta una chat box con un ensaje que sobresale al tamaño de un mensaje comuneste es un texto largo para probar el tamaño del contenedor del chat, de manera de ver que tanto espacio soporta una chat box con un ensaje que sobresale al tamaño de un mensaje comuneste es un texto largo para probar el tamaño del contenedor del chat, de manera de ver que tanto espacio soporta una chat box con un ensaje que sobresale al tamaño de un mensaje comun', 'texto', '2023-04-18 20:40:31', 'NULL'),
(76, 'danaeslo2004@gmail.com', 'zed@gmail.com', 'Hola me gustaria trabajar contigo', 'texto', '2023-04-18 21:16:26', 'NULL'),
(77, 'zed@gmail.com', 'danaeslo2004@gmail.com', 'Gracias por comunicarte', 'texto', '2023-04-18 21:16:26', 'NULL');

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
('zed@gmail.com', 'camilogomess10@gmail.com'),
('camilogomess10@gmail.com', 'kebinochoa10@gmail.com'),
('zed@gmail.com', 'kebinochoa10@gmail.com'),
('camilogomess10@gmail.com', 'dabeats0914@gmail.com'),
('anciano@gmail.com', 'kebinochoa10@gmail.com'),
('camilogomess10@gmail.com', 'anciano@gmail.com'),
('anciano@gmail.com', 'camilogomess10@gmail.com'),
('zed@gmail.com', 'juanca@gmail.com'),
('zed@gmail.com', 'dabeats0914@gmail.com'),
('zed@gmail.com', 'anciano@gmail.com'),
('camilogomess10@gmail.com', 'zed@gmail.com'),
('dabeats0914@gmail.com', 'kebinochoa10@gmail.com'),
('dabeats0914@gmail.com', 'anciano@gmail.com'),
('dabeats0914@gmail.com', 'zed@gmail.com'),
('dabeats0914@gmail.com', 'juanca@gmail.com'),
('kebinochoa10@gmail.com', 'juanca@gmail.com'),
('kebinochoa10@gmail.com', 'zed@gmail.com'),
('danaeslo2004@gmail.com', 'juanca@gmail.com'),
('danaeslo2004@gmail.com', 'kebinochoa10@gmail.com'),
('danaeslo2004@gmail.com', 'dabeats0914@gmail.com'),
('prueba2@gmail.com', 'danaeslo2004@gmail.com'),
('prueba2@gmail.com', 'juanca@gmail.com'),
('prueba2@gmail.com', 'prueba1@gmail.com'),
('prueba1@gmail.com', 'dabeats0914@gmail.com'),
('prueba1@gmail.com', 'camilogomess10@gmail.com'),
('prueba2@gmail.com', 'camilogomess10@gmail.com'),
('danaeslo2004@gmail.com', 'anciano@gmail.com'),
('danaeslo2004@gmail.com', 'zed@gmail.com'),
('danaeslo2004@gmail.com', 'camilogomess10@gmail.com');

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
(50056, '2023-04-16 06:18:33', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1681589913/posts/iuetccyodypmdoybwalu.jpg', 'paisaje foto', 0, 0),
(50058, '2023-04-17 11:04:40', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1681693482/posts/vkdtknpqhmn7xjphg4rx.png', 'pues eso', 2, 4),
(50059, '2023-04-24 11:50:19', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682337019/posts/kt8vbixizor09yd4nrcl.jpg', 'hola', 1, 0),
(50060, '2023-04-24 13:25:04', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682342703/posts/konnzp52ynfsl1qfg9y4.jpg', 'qwert', 0, 1);

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
(7040, '2023-04-15 10:17:41', 'hola baby, eieieiei', 'qwerty', 1, 0),
(7041, '2023-04-18 21:00:27', 'hola', 'ghgfh', 0, 1);

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
('anciano@gmail.com', 7040, '2023-04-15 10:17:41'),
('camilogomess10@gmail.com', 7041, '2023-04-18 21:00:27');

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
('zed@gmail.com', 50056, '2023-04-16 06:18:33'),
('camilogomess10@gmail.com', 50058, '2023-04-17 11:04:40'),
('zed@gmail.com', 50059, '2023-04-24 11:50:19'),
('camilogomess10@gmail.com', 50060, '2023-04-24 13:25:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `id_reporte` int(11) NOT NULL,
  `email_remitente` varchar(70) DEFAULT NULL,
  `reportado_email` varchar(70) DEFAULT NULL,
  `razon` varchar(300) DEFAULT NULL,
  `tiempo` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajos`
--

CREATE TABLE `trabajos` (
  `mi_email` varchar(70) DEFAULT NULL,
  `profecional_email` varchar(70) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `trabajos`
--

INSERT INTO `trabajos` (`mi_email`, `profecional_email`, `estado`) VALUES
('dabeats0914@gmail.com', 'kebinochoa10@gmail.com', 'Reportado'),
('kebinochoa10@gmail.com', 'dabeats0914@gmail.com', 'Reportado'),
('juanca@gmail.com', 'dabeats0914@gmail.com', 'nuevo'),
('dabeats0914@gmail.com', 'juanca@gmail.com', 'nuevo'),
('prueba2@gmail.com', 'danaeslo2004@gmail.com', 'nuevo'),
('danaeslo2004@gmail.com', 'prueba2@gmail.com', 'trabajando'),
('prueba2@gmail.com', 'prueba1@gmail.com', 'trabajando'),
('prueba1@gmail.com', 'prueba2@gmail.com', 'trabajando'),
('prueba1@gmail.com', 'dabeats0914@gmail.com', 'nuevo'),
('dabeats0914@gmail.com', 'prueba1@gmail.com', 'nuevo'),
('danaeslo2004@gmail.com', 'zed@gmail.com', 'nuevo'),
('zed@gmail.com', 'danaeslo2004@gmail.com', 'nuevo');

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
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id_mensajes`),
  ADD KEY `remitente` (`remitente`),
  ADD KEY `receptor` (`receptor`);

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
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`id_reporte`),
  ADD KEY `email_remitente` (`email_remitente`),
  ADD KEY `reportado_email` (`reportado_email`);

--
-- Indices de la tabla `trabajos`
--
ALTER TABLE `trabajos`
  ADD KEY `mi_email` (`mi_email`),
  ADD KEY `profecional_email` (`profecional_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30055;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id_mensajes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50061;

--
-- AUTO_INCREMENT de la tabla `publicacionestextos`
--
ALTER TABLE `publicacionestextos`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7042;

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT;

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
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `mensaje_ibfk_1` FOREIGN KEY (`remitente`) REFERENCES `cliente` (`email`),
  ADD CONSTRAINT `mensaje_ibfk_2` FOREIGN KEY (`receptor`) REFERENCES `cliente` (`email`);

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

--
-- Filtros para la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD CONSTRAINT `reportes_ibfk_1` FOREIGN KEY (`email_remitente`) REFERENCES `cliente` (`email`),
  ADD CONSTRAINT `reportes_ibfk_2` FOREIGN KEY (`reportado_email`) REFERENCES `cliente` (`email`);

--
-- Filtros para la tabla `trabajos`
--
ALTER TABLE `trabajos`
  ADD CONSTRAINT `trabajos_ibfk_1` FOREIGN KEY (`mi_email`) REFERENCES `cliente` (`email`),
  ADD CONSTRAINT `trabajos_ibfk_2` FOREIGN KEY (`profecional_email`) REFERENCES `cliente` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
