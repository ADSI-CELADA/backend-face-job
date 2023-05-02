-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2023 a las 18:45:17
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

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
('AlejandraHernan@gmail.com', 'Alejandra ', '2000-08-21', '3113456789', '$2b$10$K/c8M8PXVu0pGW.J0RQQneJwC2IDvvYzffwtQi4JGYGPZKHA3W1EC', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341096/defaults/Fotos%20de%20perfil/pexels-spencer-selover-428321_apqszj.jpg', 'Desarrollador de software', 0, '4', 3, 'Hernández', 'Alejandra  Hernández', 'Cliente'),
('AnaRojas2002@gmail.com', 'Ana María', '2002-01-17', '3112345678', '$2b$10$qeYlad4TW9CnjohR56kyAeOCUbhAqqpDSODsZK/BPDw/qkEZE4XlO', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341087/defaults/Fotos%20de%20perfil/pexels-daniel-xavier-1239291_e5a2qv.jpg', 'Diseñador de interiores', 0, '4', 2, 'Rojaas', 'Ana María Rojaas', 'Cliente'),
('AndreaMontoya@gmail.com', 'Andrea ', '2002-07-27', '3175678901', '$2b$10$0sd8kLfjYhRCcKGKwwZFKe8xEtsBbnSfzRMK57MORTM6.mcr4QmP.', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341084/defaults/Fotos%20de%20perfil/pexels-hannah-nelson-1065084_copxej.jpg', 'Coach personal', 0, '4', 3, 'Montoya', 'Andrea  Montoya', 'Cliente'),
('AndresFelipe@gmail.com', 'Andres Felipe', '1999-10-20', '3172345678', '$2b$10$G.AgFT.xgBpws2xo1kEdG.mqKmlbSr4YQwd2anHUpgJ81m4FazEma', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341081/defaults/Fotos%20de%20perfil/pexels-justin-shaifer-1222271_ysvggd.jpg', 'Fotografo', 0, '4', 3, 'Sanchez', 'Andres Felipe Sanchez', 'Cliente'),
('CamilaRamirez@gmail.com', 'Camila ', '2001-10-07', '3126789012', '$2b$10$YS1NKEUL8dI91EqgWzkemepWrFvk6QNe0IfUhkF5z4cQ53ju//BLG', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341078/defaults/Fotos%20de%20perfil/pexels-daniel-xavier-1102341_yaeu2g.jpg', 'Desarrollador de software', 0, '4', 3, 'Ramírez', 'Camila  Ramírez', 'Cliente'),
('CarlosAndres@gmail.com', 'Carlos Andrés', '2001-07-18', '3159012345', '$2b$10$qMHxENosayDHPCTEk3H5oefs0UNOUC9F/cbCsNXKBp1PrFNIKr5sO', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341081/defaults/Fotos%20de%20perfil/pexels-burst-374044_phdyzm.jpg', 'Coach personal', 0, '4', 3, 'Ramírez', 'Carlos Andrés Ramírez', 'Cliente'),
('DanielaVargas@gmail.com', 'Daniela', '1998-09-09', '3132345678', '$2b$10$9GfdDskFW1LbIs.RReUwc.8sb.jWNxmq9DEmFTaNoTlFOiIkC12f2', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341075/defaults/Fotos%20de%20perfil/pexels-pixabay-415263_urjt4q.jpg', 'Diseñador grafico', 0, '4', 3, 'Vargas', 'Daniela Vargas', 'Cliente'),
('DavidTorres@gmail.com', 'David', '2001-05-20', '3135678901', '$2b$10$regBpdVb1PdpqMf9sBdQquWflQcj94U9kGoeuARHWQRAUYNLXBrH2', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341080/defaults/Fotos%20de%20perfil/pexels-stefan-stefancik-91227_frtzki.jpg', 'Desarrollador de aplicaciones moviles', 0, '4', 2, 'Torres', 'David Torres', 'Cliente'),
('DianaHerrera@gmail.com', 'Diana', '2002-06-10', '3146789012', '$2b$10$UgmmirZR4HPdABz5ubMP0O309.H1LG74wqSNM/qB4VE.OY.KwSz1q', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341074/defaults/Fotos%20de%20perfil/pexels-fauxels-3184405_hr8220.jpg', 'Desarrollador de aplicaciones moviles', 0, '4', 3, 'Herrera', 'Diana Herrera', 'Cliente'),
('DiegoArango@gmail.com', 'Diego', '2000-11-03', '3142345678', '$2b$10$DP2vrLVhQXSwPYkyg5q28uxKROGhMgHeAXks/C//0a1w42IbC.Qp6', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341077/defaults/Fotos%20de%20perfil/pexels-simon-robben-614810_tatxfb.jpg', 'Desarrollador de software', 0, '4', 3, 'Arango', 'Diego Arango', 'Cliente'),
('face-job-admin@facejob.com', 'face', '2023-04-17', '32423423423', '$2b$10$rYFu1f28ITlAuZm3HYm58.3kgGcsjrnFzzUuV1Nq7tFkScnvq99Py', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682083366/usericon_eqm409.jpg', 'Face-job', 0, '4', 3, 'job', 'face job', 'ADMIN'),
('IsabelRestrepo@gmail.com', 'Isabel', '2000-06-21', '3155678901', '$2b$10$2WLgC0ItGZ1jXe0/8G79UOwvmQoNOapWA4M8JtTgRsvVu0nuOiNpe', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341073/defaults/Fotos%20de%20perfil/pexels-danang-wicaksono-582039_takctl.jpg', 'Fotografo', 0, '4', 3, 'Restrepo', 'Isabel Restrepo', 'Cliente'),
('JavierRojas@gmail.com', 'Javier', '2001-11-11', '3103456789', '$2b$10$L.SgMsOcX3QGzwcNKXf.0e9e9uqyWcYvfsGJLshrDLXMt9DqRmWwG', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341077/defaults/Fotos%20de%20perfil/pexels-italo-melo-2379005_y8g0kw.jpg', 'Diseñador grafico', 0, '4', 3, 'Rojas', 'Javier Rojas', 'Cliente'),
('JoseManuel@gmail.com', 'José Manuel', '2002-07-18', '3139012345', '$2b$10$lpnwUMt8nAQUSo.WRpmbJOp6flP4M5JRSNC3t214eKa9SwAQR/Emi', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341070/defaults/Fotos%20de%20perfil/pexels-nathan-cowley-1300402_se3yjg.jpg', 'Desarrollador de software', 0, '4', 3, 'López', 'José Manuel López', 'Cliente'),
('JosePerea@gmail.com', 'Jose Antonio', '2003-08-30', '3199012345', '$2b$10$yEgduDGuhArJZmtkhYgpjufU.b7lM4KPRqBRtxlwAl8pnuOGe5SXG', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341069/defaults/Fotos%20de%20perfil/pexels-royal-anwar-450214_uy1trx.jpg', 'Diseñador grafico', 0, '4', 3, 'Perea', 'Jose Antonio Perea', 'Cliente'),
('JuanPabloM@gmail.com', 'Juan Pablo', '2002-10-15', '3178901234', '$2b$10$HR1xuXAJywJDu6frx6EZsO5CTu2cyOEVq4oD6nD82f13eL796G.5a', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341069/defaults/Fotos%20de%20perfil/pexels-jeffrey-reed-769745_w16r8s.jpg', 'Diseñador de interiores', 0, '4', 3, 'Muñoz', 'Juan Pablo Muñoz', 'Cliente'),
('LauraMartinez@gmail.com', 'Laura', '2002-08-13', '3189876543', '$2b$10$rJozsTbkv.EApCEAkiggx.POUGtAXGeFw8FXTkF.sPhJjkVW5IPOm', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341073/defaults/Fotos%20de%20perfil/pexels-min-an-713312_n2ju7z.jpg', 'Diseñador de interiores', 0, '4', 3, 'Martínez', 'Laura Martínez', 'Cliente'),
('LuisMiguel2001@gmail.com', 'Luis Miguel', '2001-11-08', ' 3190123456', '$2b$10$.WyjHrcfwZglLgyvgt.vHuCiQsTHV21ih3FYuqYocTck.Ebjc3rWO', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341066/defaults/Fotos%20de%20perfil/pexels-andrea-piacquadio-3778680_gkwoad.jpg', 'Desarrollador de aplicaciones moviles', 0, '4', 2, 'Guitiérrez', 'Luis Miguel Gutiérrez Guitiérrez', 'Cliente'),
('MariaFernanda@gmail.com', 'Maria Fernanda', '2002-06-12', '3169012345', '$2b$10$adC.4qXF9IcL5ZUTiDjog.RnCy0fD.OAnQmTDEL5O.02SSyTosoT.', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341071/defaults/Fotos%20de%20perfil/pexels-pixabay-354951_nxzipd.jpg', 'Fotografo', 0, '4', 3, 'Suarez', 'Maria Fernanda Suarez', 'Cliente'),
('NataliaTorres01@gmail.com', 'Natalia', '2001-12-18', '3189012345', '$2b$10$7pb5gTXh.EQDfO79f0QHGeItKNsSSXwXZwP8Kad0jZ5nTZV5cGFYq', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341068/defaults/Fotos%20de%20perfil/pexels-anastasiya-gepp-2036646_sbdlxv.jpg', 'Coach personal', 0, '4', 3, 'Torres', 'Natalia Torres', 'Cliente'),
('PaulaRodriguez@gmail.com', 'Paula ', '2000-03-21', '3190123456', '$2b$10$.kbZcpfTabH2ijNHbKZBvuE.db3HQ1PMrdnB4o6A4hIHc/siHKGhi', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341067/defaults/Fotos%20de%20perfil/pexels-andrea-piacquadio-712513_hdsn7m.jpg', 'Desarrollador de aplicaciones moviles', 0, '4', 3, 'Rodríguez', 'Paula  Rodríguez', 'Cliente'),
('SantiagoGonzales@gmail.com', 'Santiago', '2002-09-26', '3162345678', '$2b$10$vc8LTfx9iv/HBDF2sNrNWeUb08Oq1R35f4Dqmg7y1mzrZoPwbdDG2', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341066/defaults/Fotos%20de%20perfil/pexels-andrea-piacquadio-834863_okixek.jpg', 'Coach personal', 0, '4', 3, 'González', 'Santiago González', 'Cliente'),
('SofiaGarcia@gmail.com', 'Sofia', '2004-04-21', '3156789012', '$2b$10$21WPFfoMNM6fHaY1kdfeFukHBLmtFlI7iS5r5xvz.uM3Z0USnWbke', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341065/defaults/Fotos%20de%20perfil/pexels-andrea-piacquadio-733872_brjd1j.jpg', 'Diseñador grafico', 0, '4', 3, 'Garcia', 'Sofia Garcia', 'Cliente'),
('ValenGomez01@gmail.com', 'Valentina', '2001-06-28', '3104567890', '$2b$10$qt2WODnS/BImUUPquTJzw.AqhzK9l/OGH62ebBlRrIIeCNt3oaeCi', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341064/defaults/Fotos%20de%20perfil/pexels-ezekixl-akinnewu-950243_fvp43c.jpg', 'Diseñador de interiores', 0, '4', 3, 'Gómez', 'Valentina Gómez', 'Cliente'),
('zed@gmail.com', 'Oscar', '2023-03-12', '3137744766', '$2b$10$R/XO00nx3OGhe.ynmtc3C./mQ5BSd87tQByUaOhQOTn0Fjq0P9hb.', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341064/defaults/Fotos%20de%20perfil/pexels-spencer-selover-567459_ssxvhx.jpg', 'Fotografo', 0, '2', 3, 'Martínez', 'zed ryan', 'Cliente');

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
(30000, 'dfgd', '2023-01-26 06:06:34'),
(30013, 'holaaa', '2023-04-15 03:37:56'),
(30014, 'qwerqqtqt', '2023-04-15 03:38:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios_imagen`
--

CREATE TABLE `comentarios_imagen` (
  `id_comentario` int(20) DEFAULT NULL,
  `idimagen` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(50065, 'AnaRojas2002@gmail.com', 'nomegusta'),
(50066, 'AnaRojas2002@gmail.com', 'nomegusta'),
(50068, 'AnaRojas2002@gmail.com', 'nomegusta'),
(50069, 'DavidTorres@gmail.com', 'nomegusta'),
(50070, 'DavidTorres@gmail.com', 'nomegusta'),
(50071, 'DavidTorres@gmail.com', 'nomegusta'),
(50072, 'JuanPabloM@gmail.com', 'nomegusta'),
(50073, 'JuanPabloM@gmail.com', 'nomegusta'),
(50074, 'JuanPabloM@gmail.com', 'nomegusta'),
(50075, 'LauraMartinez@gmail.com', 'nomegusta'),
(50076, 'LauraMartinez@gmail.com', 'nomegusta'),
(50077, 'LauraMartinez@gmail.com', 'nomegusta'),
(50078, 'LuisMiguel2001@gmail.com', 'nomegusta'),
(50079, 'LuisMiguel2001@gmail.com', 'nomegusta'),
(50080, 'LuisMiguel2001@gmail.com', 'nomegusta'),
(50081, 'PaulaRodriguez@gmail.com', 'nomegusta'),
(50082, 'PaulaRodriguez@gmail.com', 'nomegusta'),
(50083, 'PaulaRodriguez@gmail.com', 'nomegusta');

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
(7040, 'zed@gmail.com', 'nomegusta');

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
(120, 'LuisMiguel2001@gmail.com', 'ValenGomez01@gmail.com', 'Hola me gustaria trabajar contigo', 'texto', '2023-05-02 12:27:28', 'NULL'),
(121, 'ValenGomez01@gmail.com', 'LuisMiguel2001@gmail.com', 'Gracias por comunicarte', 'texto', '2023-05-02 12:27:28', 'NULL');

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
('zed@gmail.com', 'camilogomess10@gmail.com'),
('zed@gmail.com', 'kebinochoa10@gmail.com'),
('zed@gmail.com', 'juanca@gmail.com'),
('zed@gmail.com', 'dabeats0914@gmail.com'),
('zed@gmail.com', 'anciano@gmail.com'),
('zed@gmail.com', 'danaeslo2004@gmail.com'),
('LuisMiguel2001@gmail.com', 'ValenGomez01@gmail.com'),
('AnaRojas2002@gmail.com', 'zed@gmail.com'),
('DavidTorres@gmail.com', 'AnaRojas2002@gmail.com');

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
(50056, '2023-04-16 01:18:33', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1681589913/posts/iuetccyodypmdoybwalu.jpg', 'paisaje foto', 0, 0),
(50065, '2023-05-02 15:54:46', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345214/defaults/Dise%C3%B1o%20interiores/6_wkuddr.png', 'Concepto abierto de Cocina-Comedor', 0, 0),
(50066, '2023-05-02 15:56:46', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345213/defaults/Dise%C3%B1o%20interiores/9_jfaqiz.png', 'Escritorio simple', 0, 0),
(50068, '2023-05-02 15:56:47', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345209/defaults/Dise%C3%B1o%20interiores/10_nx0a40.png', 'Entrada ', 0, 0),
(50069, '2023-05-02 16:02:28', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345223/defaults/Desarrollador%20de%20aplicaciones%20moviles/12_eohgf2.png', 'Interfaz grafica', 0, 0),
(50070, '2023-05-02 16:02:32', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345221/defaults/Desarrollador%20de%20aplicaciones%20moviles/1_vcrwzl.png', 'Interfaz grafica en tonos pastel', 0, 0),
(50071, '2023-05-02 16:08:33', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345222/defaults/Desarrollador%20de%20aplicaciones%20moviles/10_rtje5n.png', 'Interfaz de perfil de usuario', 0, 0),
(50072, '2023-05-02 16:12:41', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345212/defaults/Dise%C3%B1o%20interiores/8_lgb0nw.png', 'Iluminacion ambiente', 0, 0),
(50073, '2023-05-02 16:14:06', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345211/defaults/Dise%C3%B1o%20interiores/7_mtng49.png', 'Habitacion sencilla', 0, 0),
(50074, '2023-05-02 16:14:54', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345211/defaults/Dise%C3%B1o%20interiores/2_puit6l.png', 'Sala de estar con tematica ambiental', 0, 0),
(50075, '2023-05-02 16:18:38', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345210/defaults/Dise%C3%B1o%20interiores/11_yg64rm.png', 'Sillas modernas', 0, 0),
(50076, '2023-05-02 16:19:24', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345210/defaults/Dise%C3%B1o%20interiores/3_orfsro.png', 'Planos casa Asolo', 0, 0),
(50077, '2023-05-02 16:20:02', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345210/defaults/Dise%C3%B1o%20interiores/4_q7ryhc.png', 'Casa la Quinta', 0, 0),
(50078, '2023-05-02 16:25:20', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345223/defaults/Desarrollador%20de%20aplicaciones%20moviles/5_nhvfbk.png', 'Interfaz de bienvenida a portafolio', 0, 0),
(50079, '2023-05-02 16:29:18', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345224/defaults/Desarrollador%20de%20aplicaciones%20moviles/2_gbcroa.png', 'Interfaz de Categorias', 0, 0),
(50080, '2023-05-02 16:30:43', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345224/defaults/Desarrollador%20de%20aplicaciones%20moviles/3_kyb9wr.png', 'Interfaz de bienvenida a una aplicacion de banco', 0, 0),
(50081, '2023-05-02 16:34:53', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345224/defaults/Desarrollador%20de%20aplicaciones%20moviles/7_tztwqg.png', 'Informacion de equipo', 0, 0),
(50082, '2023-05-02 16:36:18', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345224/defaults/Desarrollador%20de%20aplicaciones%20moviles/6_wlz5rj.png', 'Interfaz de asistente de marketing', 0, 0),
(50083, '2023-05-02 16:37:05', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345225/defaults/Desarrollador%20de%20aplicaciones%20moviles/4_urvqks.png', 'Interfaz de notas y tareas', 0, 0);

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
(7040, '2023-04-15 05:17:41', 'hola baby, eieieiei', 'qwerty', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacionestextos_cliente`
--

CREATE TABLE `publicacionestextos_cliente` (
  `email4` varchar(50) DEFAULT NULL,
  `id3` int(20) DEFAULT NULL,
  `tiempo` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
('zed@gmail.com', 50056, '2023-04-16 01:18:33'),
('AnaRojas2002@gmail.com', 50065, '2023-05-02 15:54:46'),
('AnaRojas2002@gmail.com', 50066, '2023-05-02 15:56:46'),
('AnaRojas2002@gmail.com', 50068, '2023-05-02 15:56:47'),
('DavidTorres@gmail.com', 50069, '2023-05-02 16:02:28'),
('DavidTorres@gmail.com', 50070, '2023-05-02 16:02:32'),
('DavidTorres@gmail.com', 50071, '2023-05-02 16:08:33'),
('JuanPabloM@gmail.com', 50072, '2023-05-02 16:12:41'),
('JuanPabloM@gmail.com', 50073, '2023-05-02 16:14:06'),
('JuanPabloM@gmail.com', 50074, '2023-05-02 16:14:54'),
('LauraMartinez@gmail.com', 50075, '2023-05-02 16:18:38'),
('LauraMartinez@gmail.com', 50076, '2023-05-02 16:19:24'),
('LauraMartinez@gmail.com', 50077, '2023-05-02 16:20:02'),
('LuisMiguel2001@gmail.com', 50078, '2023-05-02 16:25:20'),
('LuisMiguel2001@gmail.com', 50079, '2023-05-02 16:29:18'),
('LuisMiguel2001@gmail.com', 50080, '2023-05-02 16:30:43'),
('PaulaRodriguez@gmail.com', 50081, '2023-05-02 16:34:53'),
('PaulaRodriguez@gmail.com', 50082, '2023-05-02 16:36:18'),
('PaulaRodriguez@gmail.com', 50083, '2023-05-02 16:37:05');

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
('LuisMiguel2001@gmail.com', 'ValenGomez01@gmail.com', 'nuevo'),
('ValenGomez01@gmail.com', 'LuisMiguel2001@gmail.com', 'nuevo');

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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30061;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id_mensajes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50084;

--
-- AUTO_INCREMENT de la tabla `publicacionestextos`
--
ALTER TABLE `publicacionestextos`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7042;

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
