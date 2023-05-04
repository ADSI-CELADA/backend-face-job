-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2023 a las 18:45:39
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
('AlejandraHernan@gmail.com', 'Alejandra ', '2000-08-21', '3113456789', '$2b$10$K/c8M8PXVu0pGW.J0RQQneJwC2IDvvYzffwtQi4JGYGPZKHA3W1EC', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341096/defaults/Fotos%20de%20perfil/pexels-spencer-selover-428321_apqszj.jpg', 'Desarrollador de software', 0, '1', 5, 'Hernández', 'Alejandra  Hernández', 'Cliente'),
('AnaRojas2002@gmail.com', 'Ana María', '2002-01-17', '3112345678', '$2b$10$qeYlad4TW9CnjohR56kyAeOCUbhAqqpDSODsZK/BPDw/qkEZE4XlO', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341087/defaults/Fotos%20de%20perfil/pexels-daniel-xavier-1239291_e5a2qv.jpg', 'Diseñador de interiores', 0, '4', 2, 'Rojaas', 'Ana María Rojaas', 'Cliente'),
('AndreaMontoya@gmail.com', 'Andrea ', '2002-07-27', '3175678901', '$2b$10$0sd8kLfjYhRCcKGKwwZFKe8xEtsBbnSfzRMK57MORTM6.mcr4QmP.', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341084/defaults/Fotos%20de%20perfil/pexels-hannah-nelson-1065084_copxej.jpg', 'Coach personal', 0, '4', 3, 'Montoya', 'Andrea  Montoya', 'Cliente'),
('AndresFelipe@gmail.com', 'Andres Felipe', '1999-10-20', '3172345678', '$2b$10$G.AgFT.xgBpws2xo1kEdG.mqKmlbSr4YQwd2anHUpgJ81m4FazEma', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341081/defaults/Fotos%20de%20perfil/pexels-justin-shaifer-1222271_ysvggd.jpg', 'Fotografo', 0, '4', 3, 'Sanchez', 'Andres Felipe Sanchez', 'Cliente'),
('CamilaRamirez@gmail.com', 'Camila ', '2001-10-07', '3126789012', '$2b$10$YS1NKEUL8dI91EqgWzkemepWrFvk6QNe0IfUhkF5z4cQ53ju//BLG', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341078/defaults/Fotos%20de%20perfil/pexels-daniel-xavier-1102341_yaeu2g.jpg', 'Desarrollador de software', 0, '4', 3, 'Ramírez', 'Camila  Ramírez', 'Cliente'),
('CarlosAndres@gmail.com', 'Carlos Andrés', '2001-07-18', '3159012345', '$2b$10$qMHxENosayDHPCTEk3H5oefs0UNOUC9F/cbCsNXKBp1PrFNIKr5sO', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341081/defaults/Fotos%20de%20perfil/pexels-burst-374044_phdyzm.jpg', 'Coach personal', 0, '4', 3, 'Ramírez', 'Carlos Andrés Ramírez', 'Cliente'),
('danaeslo2004@gmail.com', 'Danna', '2004-11-28', '3508637649', '$2b$10$oo240Z1S7kiL0OiBlnb5R.jaqEdFJtxOAtwqRwm8sMxOUJ106mhv2', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1683215106/posts/k25skdjwyc3kgtncah5n.jpg', 'Diseñador grafico', 0, '4', 0, 'Estrada', 'Danna Estrada', 'Cliente'),
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
('LauraMartinez@gmail.com', 'Laura', '2002-08-13', '3189876543', '$2b$10$rJozsTbkv.EApCEAkiggx.POUGtAXGeFw8FXTkF.sPhJjkVW5IPOm', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682341073/defaults/Fotos%20de%20perfil/pexels-min-an-713312_n2ju7z.jpg', 'Diseñador de interiores', 0, '4', 0, 'Martínez', 'Laura Martínez', 'Cliente'),
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
(50083, 'PaulaRodriguez@gmail.com', 'nomegusta'),
(50084, 'ValenGomez01@gmail.com', 'nomegusta'),
(50085, 'ValenGomez01@gmail.com', 'nomegusta'),
(50086, 'ValenGomez01@gmail.com', 'nomegusta'),
(50087, 'DianaHerrera@gmail.com', 'nomegusta'),
(50088, 'DianaHerrera@gmail.com', 'nomegusta'),
(50089, 'DianaHerrera@gmail.com', 'nomegusta'),
(50090, 'CarlosAndres@gmail.com', 'nomegusta'),
(50091, 'CarlosAndres@gmail.com', 'nomegusta'),
(50092, 'CarlosAndres@gmail.com', 'nomegusta'),
(50093, 'SantiagoGonzales@gmail.com', 'nomegusta'),
(50094, 'SantiagoGonzales@gmail.com', 'nomegusta'),
(50095, 'SantiagoGonzales@gmail.com', 'nomegusta'),
(50096, 'AndreaMontoya@gmail.com', 'nomegusta'),
(50097, 'AndreaMontoya@gmail.com', 'nomegusta'),
(50098, 'AndreaMontoya@gmail.com', 'nomegusta'),
(50099, 'NataliaTorres01@gmail.com', 'nomegusta'),
(50100, 'NataliaTorres01@gmail.com', 'nomegusta'),
(50101, 'NataliaTorres01@gmail.com', 'nomegusta'),
(50102, 'AlejandraHernan@gmail.com', 'nomegusta'),
(50103, 'AlejandraHernan@gmail.com', 'nomegusta'),
(50104, 'AlejandraHernan@gmail.com', 'nomegusta'),
(50105, 'CamilaRamirez@gmail.com', 'nomegusta'),
(50106, 'CamilaRamirez@gmail.com', 'nomegusta'),
(50107, 'CamilaRamirez@gmail.com', 'nomegusta'),
(50108, 'JoseManuel@gmail.com', 'nomegusta'),
(50109, 'JoseManuel@gmail.com', 'nomegusta'),
(50110, 'JoseManuel@gmail.com', 'nomegusta'),
(50111, 'DiegoArango@gmail.com', 'nomegusta'),
(50112, 'DiegoArango@gmail.com', 'nomegusta'),
(50113, 'DiegoArango@gmail.com', 'nomegusta'),
(50114, 'IsabelRestrepo@gmail.com', 'nomegusta'),
(50115, 'IsabelRestrepo@gmail.com', 'nomegusta'),
(50116, 'IsabelRestrepo@gmail.com', 'nomegusta'),
(50117, 'MariaFernanda@gmail.com', 'nomegusta'),
(50118, 'MariaFernanda@gmail.com', 'nomegusta'),
(50119, 'MariaFernanda@gmail.com', 'nomegusta'),
(50120, 'AndresFelipe@gmail.com', 'nomegusta'),
(50121, 'AndresFelipe@gmail.com', 'nomegusta'),
(50122, 'AndresFelipe@gmail.com', 'nomegusta'),
(50123, 'zed@gmail.com', 'nomegusta'),
(50124, 'zed@gmail.com', 'nomegusta'),
(50125, 'zed@gmail.com', 'nomegusta'),
(50126, 'JavierRojas@gmail.com', 'nomegusta'),
(50127, 'JavierRojas@gmail.com', 'nomegusta'),
(50128, 'JavierRojas@gmail.com', 'nomegusta'),
(50129, 'SofiaGarcia@gmail.com', 'nomegusta'),
(50130, 'SofiaGarcia@gmail.com', 'nomegusta'),
(50131, 'SofiaGarcia@gmail.com', 'nomegusta'),
(50133, 'JosePerea@gmail.com', 'nomegusta'),
(50134, 'JosePerea@gmail.com', 'nomegusta'),
(50135, 'JosePerea@gmail.com', 'nomegusta'),
(50136, 'DanielaVargas@gmail.com', 'nomegusta'),
(50137, 'DanielaVargas@gmail.com', 'nomegusta'),
(50138, 'DanielaVargas@gmail.com', 'nomegusta');

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
(121, 'ValenGomez01@gmail.com', 'LuisMiguel2001@gmail.com', 'Gracias por comunicarte', 'texto', '2023-05-02 12:27:28', 'NULL'),
(122, 'LauraMartinez@gmail.com', 'ValenGomez01@gmail.com', 'Hola me gustaria trabajar contigo', 'texto', '2023-05-03 12:46:11', 'NULL'),
(123, 'ValenGomez01@gmail.com', 'LauraMartinez@gmail.com', 'Gracias por comunicarte', 'texto', '2023-05-03 12:46:11', 'NULL'),
(124, 'LauraMartinez@gmail.com', 'ValenGomez01@gmail.com', 'hola', 'texto', '2023-05-03 12:47:03', 'NULL'),
(125, 'ValenGomez01@gmail.com', 'LauraMartinez@gmail.com', 'holaa', 'texto', '2023-05-03 12:47:10', 'NULL'),
(126, 'danaeslo2004@gmail.com', 'CamilaRamirez@gmail.com', 'Hola me gustaria trabajar contigo', 'texto', '2023-05-04 14:22:40', 'NULL'),
(127, 'CamilaRamirez@gmail.com', 'danaeslo2004@gmail.com', 'Gracias por comunicarte', 'texto', '2023-05-04 14:22:40', 'NULL'),
(128, 'danaeslo2004@gmail.com', 'CamilaRamirez@gmail.com', 'hola', 'texto', '2023-05-04 14:26:25', 'NULL'),
(129, 'danaeslo2004@gmail.com', 'CamilaRamirez@gmail.com', 'hola', 'texto', '2023-05-04 14:26:26', 'NULL'),
(130, 'danaeslo2004@gmail.com', 'CamilaRamirez@gmail.com', 'hola', 'texto', '2023-05-04 14:26:28', 'NULL'),
(131, 'danaeslo2004@gmail.com', 'CamilaRamirez@gmail.com', 'hoal', 'texto', '2023-05-04 14:26:30', 'NULL'),
(132, 'danaeslo2004@gmail.com', 'CamilaRamirez@gmail.com', 'ajaja', 'texto', '2023-05-04 14:26:31', 'NULL'),
(133, 'danaeslo2004@gmail.com', 'CamilaRamirez@gmail.com', 'a', 'texto', '2023-05-04 14:26:31', 'NULL'),
(134, 'danaeslo2004@gmail.com', 'CamilaRamirez@gmail.com', 'ajsasa', 'texto', '2023-05-04 14:26:32', 'NULL'),
(135, 'danaeslo2004@gmail.com', 'CamilaRamirez@gmail.com', 'sasasa', 'texto', '2023-05-04 14:26:33', 'NULL'),
(136, 'danaeslo2004@gmail.com', 'CamilaRamirez@gmail.com', 'sasas', 'texto', '2023-05-04 14:26:34', 'NULL');

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
('DavidTorres@gmail.com', 'AnaRojas2002@gmail.com'),
('LauraMartinez@gmail.com', 'ValenGomez01@gmail.com'),
('LauraMartinez@gmail.com', 'JoseManuel@gmail.com'),
('LauraMartinez@gmail.com', 'DiegoArango@gmail.com'),
('AlejandraHernan@gmail.com', 'CamilaRamirez@gmail.com'),
('AlejandraHernan@gmail.com', 'DiegoArango@gmail.com'),
('AlejandraHernan@gmail.com', 'JoseManuel@gmail.com'),
('danaeslo2004@gmail.com', 'JavierRojas@gmail.com'),
('danaeslo2004@gmail.com', 'DanielaVargas@gmail.com'),
('danaeslo2004@gmail.com', 'CamilaRamirez@gmail.com');

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
(50083, '2023-05-02 16:37:05', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345225/defaults/Desarrollador%20de%20aplicaciones%20moviles/4_urvqks.png', 'Interfaz de notas y tareas', 0, 0),
(50084, '2023-05-03 11:37:30', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345209/defaults/Dise%C3%B1o%20interiores/1_gbawpf.png', 'La casa mamamia', 0, 0),
(50085, '2023-05-03 11:38:17', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345209/defaults/Dise%C3%B1o%20interiores/12_mjc1mr.png', 'Sala con concepto abierto', 0, 0),
(50086, '2023-05-03 11:38:17', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345210/defaults/Dise%C3%B1o%20interiores/5_sqhtxh.png', 'Fachada moderna', 0, 0),
(50087, '2023-05-03 11:41:56', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345225/defaults/Desarrollador%20de%20aplicaciones%20moviles/8_lxkg8t.png', 'Interfaz relations company', 0, 0),
(50088, '2023-05-03 11:42:54', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1683113203/defaults/Desarrollador%20de%20aplicaciones%20moviles/13_t9b0mu.png', 'Interfaz balance', 0, 0),
(50089, '2023-05-03 11:42:55', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345225/defaults/Desarrollador%20de%20aplicaciones%20moviles/9_w4whng.png', 'Interfaz porcentaje', 0, 0),
(50090, '2023-05-03 11:47:38', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345217/defaults/Coach%20personal/10_opw1gi.png', 'Cuerpo sano y saludable', 0, 0),
(50091, '2023-05-03 11:48:44', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345218/defaults/Coach%20personal/11_fp4oqh.png', 'Entrenamiento personal online', 0, 0),
(50092, '2023-05-03 11:49:18', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345218/defaults/Coach%20personal/1_zgbvd1.png', 'Transforma tu cuerpo', 0, 0),
(50093, '2023-05-03 11:52:40', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345218/defaults/Coach%20personal/12_phtqf6.png', 'Studio fitness en tu ciudad', 0, 0),
(50094, '2023-05-03 11:54:29', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345219/defaults/Coach%20personal/3_dmgu2q.png', 'Mejora tu nivel de condicion fisica para mejor', 0, 0),
(50095, '2023-05-03 11:55:45', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345219/defaults/Coach%20personal/2_obpmaq.png', 'Haz que tu cuerpo este en forma y saludable', 0, 0),
(50096, '2023-05-03 11:59:30', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345221/defaults/Coach%20personal/8_nt9huu.png', 'Entrena para estar saludable', 0, 0),
(50097, '2023-05-03 12:01:02', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345222/defaults/Coach%20personal/6_hjm4ce.png', 'Sencilla experiencia fitness para todos', 0, 0),
(50098, '2023-05-03 12:01:58', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345228/defaults/Coach%20personal/5_uutzmq.png', 'Fitness coach', 0, 0),
(50099, '2023-05-03 13:57:53', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345220/defaults/Coach%20personal/4_cpxy4q.png', 'Construye un cuerpo saludable', 0, 0),
(50100, '2023-05-03 13:59:01', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345220/defaults/Coach%20personal/7_y9zbvv.png', 'Tu salud es única', 0, 0),
(50101, '2023-05-03 14:00:32', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345221/defaults/Coach%20personal/9_meh9rz.png', 'Libera a tu atleta interno', 0, 0),
(50102, '2023-05-03 14:03:32', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345206/defaults/Desarrollador%20de%20Software/7_nrtnj1.png', 'Oficio remoto', 0, 0),
(50103, '2023-05-03 14:05:05', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345213/defaults/Desarrollador%20de%20Software/9_yfzwtp.png', 'Las mejores viviendas acogedoras', 0, 0),
(50104, '2023-05-03 14:14:32', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345226/defaults/Desarrollador%20de%20Software/2_viik9e.png', 'Es hora del mundo virtual', 0, 0),
(50105, '2023-05-03 14:19:16', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345205/defaults/Desarrollador%20de%20Software/8_fhq43k.png', 'Crea contenido en un solo click', 0, 0),
(50106, '2023-05-03 14:20:08', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345205/defaults/Desarrollador%20de%20Software/12_pnif49.png', 'Rutina diaria de cuidado de la piel', 0, 0),
(50107, '2023-05-03 14:21:06', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345205/defaults/Desarrollador%20de%20Software/3_bprwgg.png', 'Plataforma de seguimiento financiero', 0, 0),
(50108, '2023-05-03 14:25:02', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345204/defaults/Desarrollador%20de%20Software/4_awg1bw.png', 'Boom digital', 0, 0),
(50109, '2023-05-03 14:25:53', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345204/defaults/Desarrollador%20de%20Software/5_r5vynt.png', 'Facilita la gestión de su negocio', 0, 0),
(50110, '2023-05-03 14:27:46', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345205/defaults/Desarrollador%20de%20Software/6_jc4wdz.png', 'Pon en marcha tu cartera de criptomonedas', 0, 0),
(50111, '2023-05-03 14:53:22', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345203/defaults/Desarrollador%20de%20Software/1_zcgf50.png', 'Ideas pretenciosas ilimitadas', 0, 0),
(50112, '2023-05-03 14:54:27', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345203/defaults/Desarrollador%20de%20Software/10_cog1pa.png', 'Ahorros futuros', 0, 0),
(50113, '2023-05-03 14:55:11', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345203/defaults/Desarrollador%20de%20Software/11_fzjfmq.png', 'Conquistar el comercio', 0, 0),
(50114, '2023-05-03 14:58:25', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345219/defaults/Fotografo/4_f5cwr8.png', 'Mi equipo de trabajo', 0, 0),
(50115, '2023-05-03 14:59:47', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345220/defaults/Fotografo/3_m6zizg.png', 'Detalles vintage', 0, 0),
(50116, '2023-05-03 15:02:02', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345225/defaults/Fotografo/12_byfauv.png', 'Body fit sesion', 0, 0),
(50117, '2023-05-03 15:05:15', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345211/defaults/Fotografo/1_qs38sj.png', 'Mis herramientas de trabajo', 0, 0),
(50118, '2023-05-03 15:13:58', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345212/defaults/Fotografo/10_ciwdif.png', 'Mascara de mohai', 0, 0),
(50119, '2023-05-03 15:15:05', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345213/defaults/Fotografo/11_ecz0vt.png', 'Seta de porcelana', 0, 0),
(50120, '2023-05-04 11:43:37', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345213/defaults/Fotografo/2_b64r7p.png', 'Calido como el amor', 0, 0),
(50121, '2023-05-04 11:44:15', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345215/defaults/Fotografo/6_wz1ogd.png', 'Corsel de porcelana', 0, 0),
(50122, '2023-05-04 11:45:37', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345216/defaults/Fotografo/9_x3uide.png', 'Una cruda realidad', 0, 0),
(50123, '2023-05-04 11:51:27', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345215/defaults/Fotografo/7_fyotgk.png', 'Mi compañero de trabajo', 0, 0),
(50124, '2023-05-04 11:52:12', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345216/defaults/Fotografo/8_f6qnwe.png', 'Todo cuuerpo es perfecto', 0, 0),
(50125, '2023-05-04 11:53:13', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1683200545/defaults/Fotografo/pexels-kyle-loftus-2510428_ljoo6e.jpg', 'Una sesion de trabajo', 0, 0),
(50126, '2023-05-04 13:01:08', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345207/defaults/Dise%C3%B1o%20Grafico/6_ljvvvp.png', 'Arte animal', 0, 0),
(50127, '2023-05-04 13:01:44', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345206/defaults/Dise%C3%B1o%20Grafico/12_lpczs0.png', 'Diseño de portada para album', 0, 0),
(50128, '2023-05-04 13:02:24', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345206/defaults/Dise%C3%B1o%20Grafico/2_ekptiy.png', 'Diseño digital', 0, 0),
(50129, '2023-05-04 13:23:51', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345214/defaults/Dise%C3%B1o%20Grafico/1_sum5jf.png', 'Transito', 0, 0),
(50130, '2023-05-04 13:23:52', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345208/defaults/Dise%C3%B1o%20Grafico/9_rfgiq2.png', 'Oficina', 0, 0),
(50131, '2023-05-04 13:25:12', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345205/defaults/Dise%C3%B1o%20Grafico/10_cwo9y6.png', 'Compras', 0, 0),
(50133, '2023-05-04 13:31:52', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345207/defaults/Dise%C3%B1o%20Grafico/4_dq2det.png', 'Vector oficina', 0, 0),
(50134, '2023-05-04 13:32:46', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345208/defaults/Dise%C3%B1o%20Grafico/8_za7ofr.png', 'Vector repartidor', 0, 0),
(50135, '2023-05-04 13:34:25', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345208/defaults/Dise%C3%B1o%20Grafico/7_cimhb2.png', 'Vector mirando a la luna', 0, 0),
(50136, '2023-05-04 13:38:33', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345206/defaults/Dise%C3%B1o%20Grafico/11_oanlxm.png', 'Comunicacion', 0, 0),
(50137, '2023-05-04 13:39:04', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345207/defaults/Dise%C3%B1o%20Grafico/3_klpeit.png', 'Correo', 0, 0),
(50138, '2023-05-04 13:39:22', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1682345209/defaults/Dise%C3%B1o%20Grafico/5_ujj2j1.png', 'Reunion', 0, 0);

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
('PaulaRodriguez@gmail.com', 50083, '2023-05-02 16:37:05'),
('ValenGomez01@gmail.com', 50084, '2023-05-03 11:37:30'),
('ValenGomez01@gmail.com', 50085, '2023-05-03 11:38:17'),
('ValenGomez01@gmail.com', 50086, '2023-05-03 11:38:17'),
('DianaHerrera@gmail.com', 50087, '2023-05-03 11:41:56'),
('DianaHerrera@gmail.com', 50088, '2023-05-03 11:42:54'),
('DianaHerrera@gmail.com', 50089, '2023-05-03 11:42:55'),
('CarlosAndres@gmail.com', 50090, '2023-05-03 11:47:38'),
('CarlosAndres@gmail.com', 50091, '2023-05-03 11:48:44'),
('CarlosAndres@gmail.com', 50092, '2023-05-03 11:49:18'),
('SantiagoGonzales@gmail.com', 50093, '2023-05-03 11:52:40'),
('SantiagoGonzales@gmail.com', 50094, '2023-05-03 11:54:29'),
('SantiagoGonzales@gmail.com', 50095, '2023-05-03 11:55:45'),
('AndreaMontoya@gmail.com', 50096, '2023-05-03 11:59:30'),
('AndreaMontoya@gmail.com', 50097, '2023-05-03 12:01:02'),
('AndreaMontoya@gmail.com', 50098, '2023-05-03 12:01:58'),
('NataliaTorres01@gmail.com', 50099, '2023-05-03 13:57:53'),
('NataliaTorres01@gmail.com', 50100, '2023-05-03 13:59:01'),
('NataliaTorres01@gmail.com', 50101, '2023-05-03 14:00:32'),
('AlejandraHernan@gmail.com', 50102, '2023-05-03 14:03:32'),
('AlejandraHernan@gmail.com', 50103, '2023-05-03 14:05:05'),
('AlejandraHernan@gmail.com', 50104, '2023-05-03 14:14:32'),
('CamilaRamirez@gmail.com', 50105, '2023-05-03 14:19:16'),
('CamilaRamirez@gmail.com', 50106, '2023-05-03 14:20:08'),
('CamilaRamirez@gmail.com', 50107, '2023-05-03 14:21:06'),
('JoseManuel@gmail.com', 50108, '2023-05-03 14:25:02'),
('JoseManuel@gmail.com', 50109, '2023-05-03 14:25:53'),
('JoseManuel@gmail.com', 50110, '2023-05-03 14:27:46'),
('DiegoArango@gmail.com', 50111, '2023-05-03 14:53:22'),
('DiegoArango@gmail.com', 50112, '2023-05-03 14:54:27'),
('DiegoArango@gmail.com', 50113, '2023-05-03 14:55:11'),
('IsabelRestrepo@gmail.com', 50114, '2023-05-03 14:58:25'),
('IsabelRestrepo@gmail.com', 50115, '2023-05-03 14:59:47'),
('IsabelRestrepo@gmail.com', 50116, '2023-05-03 15:02:02'),
('MariaFernanda@gmail.com', 50117, '2023-05-03 15:05:15'),
('MariaFernanda@gmail.com', 50118, '2023-05-03 15:13:58'),
('MariaFernanda@gmail.com', 50119, '2023-05-03 15:15:05'),
('AndresFelipe@gmail.com', 50120, '2023-05-04 11:43:37'),
('AndresFelipe@gmail.com', 50121, '2023-05-04 11:44:15'),
('AndresFelipe@gmail.com', 50122, '2023-05-04 11:45:37'),
('zed@gmail.com', 50123, '2023-05-04 11:51:27'),
('zed@gmail.com', 50124, '2023-05-04 11:52:12'),
('zed@gmail.com', 50125, '2023-05-04 11:53:13'),
('JavierRojas@gmail.com', 50126, '2023-05-04 13:01:08'),
('JavierRojas@gmail.com', 50127, '2023-05-04 13:01:44'),
('JavierRojas@gmail.com', 50128, '2023-05-04 13:02:24'),
('SofiaGarcia@gmail.com', 50129, '2023-05-04 13:23:51'),
('SofiaGarcia@gmail.com', 50130, '2023-05-04 13:23:52'),
('SofiaGarcia@gmail.com', 50131, '2023-05-04 13:25:12'),
('JosePerea@gmail.com', 50133, '2023-05-04 13:31:52'),
('JosePerea@gmail.com', 50134, '2023-05-04 13:32:46'),
('JosePerea@gmail.com', 50135, '2023-05-04 13:34:25'),
('DanielaVargas@gmail.com', 50136, '2023-05-04 13:38:33'),
('DanielaVargas@gmail.com', 50137, '2023-05-04 13:39:04'),
('DanielaVargas@gmail.com', 50138, '2023-05-04 13:39:22');

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
('ValenGomez01@gmail.com', 'LuisMiguel2001@gmail.com', 'nuevo'),
('LauraMartinez@gmail.com', 'ValenGomez01@gmail.com', 'Eliminado'),
('ValenGomez01@gmail.com', 'LauraMartinez@gmail.com', 'Eliminado'),
('danaeslo2004@gmail.com', 'CamilaRamirez@gmail.com', 'Eliminado'),
('CamilaRamirez@gmail.com', 'danaeslo2004@gmail.com', 'Eliminado');

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
  MODIFY `id_mensajes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50139;

--
-- AUTO_INCREMENT de la tabla `publicacionestextos`
--
ALTER TABLE `publicacionestextos`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7042;

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
