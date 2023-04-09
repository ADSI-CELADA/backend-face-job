-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2023 at 09:57 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `face_job`
--

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
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
  `namecomplete` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`email`, `name`, `age`, `number`, `password`, `iconUser`, `profession`, `codigo`, `cod_paquete`, `info_paquete`, `lastname`, `namecomplete`) VALUES
('anciano@gmail.com', 'Yaji', '2023-04-05', '1242141', '$2b$10$Y9GCco6/bjwcE3XYllwWM.daa89hyvTJvvnEzg4Jt9YOIxZenEC.i', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1680828571/posts/zxck2qaa8wcluo8ra4qi.jpg', 'programador', 0, '1', 3, 'Anciano', 'Yaji Anciano'),
('camilogomess10@gmail.com', 'camilo', '2023-03-12', '3128977187', '$2b$10$hRgWC.vxA4.G2XrxsXARBehVby1Nrw4FPuTZbaGwfEgUwKoErSu6u', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1678657052/posts/ce3wifbdg93wf51d34pi.jpg', 'Profesor', 0, '1', 2, 'gomes', 'camilo gomes'),
('dabeats0914@gmail.com', 'David', '2023-04-04', '3015112641', '$2b$10$0mLUJmMTLENdK.en08Jq.O4iUZD7vgW75fRhYk.MQILQvTLMBn4KK', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1680908740/posts/qrrasxnqharjpxdihp5c.jpg', 'programador', 0, '1', 0, 'Cuellar Velez', 'David Cuellar Velez'),
('juanca@gmail.com', 'Juan', '2023-04-04', '31321', '$2b$10$tap1YB0f3oHP/FOzNgRFD.pLVul24BTPazmhe0HGTv49TiK5U9TY.', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1680749854/posts/tnuvc71ssw8btqei7ffd.png', 'programador', 0, '4', 0, 'Velez', 'Juan Velez'),
('kebinochoa10@gmail.com', 'kebyn', '2023-03-11', '657567', '$2b$10$8xjiWGG6YW0dhj9rOKnxD.IzEuVOC4ZY24yt47hK/E2nzLsotbePS', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1680828409/posts/woz9emkuc0hivxq96w2v.jpg', 'Profesor', 0, '1', 2, 'ochoa', 'kebyn ochoa'),
('zed@gmail.com', 'zed', '2023-03-12', '4354', '$2b$10$R/XO00nx3OGhe.ynmtc3C./mQ5BSd87tQByUaOhQOTn0Fjq0P9hb.', 'https://res.cloudinary.com/dqrwt5fo7/image/upload/v1674674484/posts/kfslmtqtfmrxpnv2cw4w.jpg', 'programador', 0, '2', 8, 'ryan', 'zed ryan');

--
-- Triggers `cliente`
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
-- Table structure for table `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(20) NOT NULL,
  `comentario` varchar(100) DEFAULT NULL,
  `hora` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comentarios`
--

INSERT INTO `comentarios` (`id`, `comentario`, `hora`) VALUES
(30000, 'dfgd', '2023-01-25 20:06:34'),
(30001, 'hola', '2023-04-06 19:57:48'),
(30002, 'qwrrq', '2023-04-07 19:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `comentarios_imagen`
--

CREATE TABLE `comentarios_imagen` (
  `id_comentario` int(20) DEFAULT NULL,
  `idimagen` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comentarios_textos`
--

CREATE TABLE `comentarios_textos` (
  `id_comentario2` int(20) DEFAULT NULL,
  `idtextos` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comentarios_usuario`
--

CREATE TABLE `comentarios_usuario` (
  `id_comentario3` int(20) DEFAULT NULL,
  `emailcliente` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comentarios_usuario`
--

INSERT INTO `comentarios_usuario` (`id_comentario3`, `emailcliente`) VALUES
(30001, 'dabeats0914@gmail.com'),
(30002, 'dabeats0914@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `megusta`
--

CREATE TABLE `megusta` (
  `id_megusta` int(20) DEFAULT NULL,
  `email_megusta` varchar(50) DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `megusta`
--

INSERT INTO `megusta` (`id_megusta`, `email_megusta`, `estado`) VALUES
(50030, 'camilogomess10@gmail.com', 'megusta'),
(50030, 'dabeats0914@gmail.com', 'nomegusta'),
(50030, 'kebinochoa10@gmail.com', 'megusta'),
(50030, 'zed@gmail.com', 'nomegusta'),
(50030, 'anciano@gmail.com', 'nomegusta'),
(50030, 'juanca@gmail.com', 'nomegusta'),
(50031, 'camilogomess10@gmail.com', 'megusta'),
(50031, 'dabeats0914@gmail.com', 'nomegusta'),
(50031, 'kebinochoa10@gmail.com', 'nomegusta'),
(50031, 'zed@gmail.com', 'nomegusta'),
(50031, 'anciano@gmail.com', 'nomegusta'),
(50031, 'juanca@gmail.com', 'nomegusta'),
(50032, 'camilogomess10@gmail.com', 'megusta'),
(50032, 'dabeats0914@gmail.com', 'nomegusta'),
(50032, 'kebinochoa10@gmail.com', 'megusta'),
(50032, 'zed@gmail.com', 'nomegusta'),
(50032, 'anciano@gmail.com', 'megusta'),
(50032, 'juanca@gmail.com', 'nomegusta');

-- --------------------------------------------------------

--
-- Table structure for table `megustatextos`
--

CREATE TABLE `megustatextos` (
  `id_textos` int(20) DEFAULT NULL,
  `email_cliente2` varchar(50) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `megustatextos`
--

INSERT INTO `megustatextos` (`id_textos`, `email_cliente2`, `estado`) VALUES
(7034, 'kebinochoa10@gmail.com', 'nomegusta'),
(7035, 'anciano@gmail.com', 'megusta'),
(7035, 'camilogomess10@gmail.com', 'megusta'),
(7035, 'dabeats0914@gmail.com', 'nomegusta'),
(7035, 'kebinochoa10@gmail.com', 'nomegusta'),
(7035, 'zed@gmail.com', 'nomegusta'),
(7035, 'juanca@gmail.com', 'nomegusta'),
(7036, 'anciano@gmail.com', 'nomegusta'),
(7036, 'camilogomess10@gmail.com', 'megusta'),
(7036, 'dabeats0914@gmail.com', 'nomegusta'),
(7036, 'kebinochoa10@gmail.com', 'nomegusta'),
(7036, 'zed@gmail.com', 'nomegusta'),
(7036, 'juanca@gmail.com', 'nomegusta'),
(7037, 'anciano@gmail.com', 'megusta'),
(7037, 'camilogomess10@gmail.com', 'nomegusta'),
(7037, 'dabeats0914@gmail.com', 'nomegusta'),
(7037, 'kebinochoa10@gmail.com', 'nomegusta'),
(7037, 'zed@gmail.com', 'nomegusta'),
(7037, 'juanca@gmail.com', 'nomegusta');

-- --------------------------------------------------------

--
-- Table structure for table `mensaje`
--

CREATE TABLE `mensaje` (
  `id_mensajes` int(11) NOT NULL,
  `remitente` varchar(70) DEFAULT NULL,
  `receptor` varchar(70) DEFAULT NULL,
  `mensaje` varchar(400) DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `link` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mensaje`
--

INSERT INTO `mensaje` (`id_mensajes`, `remitente`, `receptor`, `mensaje`, `tipo`, `fecha`, `link`) VALUES
(47, 'camilogomess10@gmail.com', 'dabeats0914@gmail.com', 'Hola me gustaria trabajar contigo', 'texto', '2023-04-09 19:05:50', 'NULL'),
(48, 'dabeats0914@gmail.com', 'camilogomess10@gmail.com', 'Gracias por comunicarte', 'texto', '2023-04-09 19:05:50', 'NULL'),
(49, 'camilogomess10@gmail.com', 'dabeats0914@gmail.com', 'hola', 'texto', '2023-04-09 19:05:59', 'NULL'),
(52, 'anciano@gmail.com', 'kebinochoa10@gmail.com', 'Hola me gustaria trabajar contigo', 'texto', '2023-04-09 19:47:18', 'NULL'),
(53, 'kebinochoa10@gmail.com', 'anciano@gmail.com', 'Gracias por comunicarte', 'texto', '2023-04-09 19:47:18', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `paquetes`
--

CREATE TABLE `paquetes` (
  `nombre_paquete` varchar(1) NOT NULL,
  `vistas_paquete` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paquetes`
--

INSERT INTO `paquetes` (`nombre_paquete`, `vistas_paquete`) VALUES
('1', 10),
('2', 25),
('3', 40),
('4', 5);

-- --------------------------------------------------------

--
-- Table structure for table `profesionales_vistos`
--

CREATE TABLE `profesionales_vistos` (
  `email_cliente` varchar(50) DEFAULT NULL,
  `email_visto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profesionales_vistos`
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
('anciano@gmail.com', 'camilogomess10@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id` int(20) NOT NULL,
  `tiempo` timestamp NOT NULL DEFAULT current_timestamp(),
  `img` text DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `likes` int(10) DEFAULT 0,
  `comments` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publicaciones`
--

INSERT INTO `publicaciones` (`id`, `tiempo`, `img`, `description`, `likes`, `comments`) VALUES
(50000, '2023-01-25 20:08:02', 'gdfg', 'dfgdfg', 0, 0),
(50007, '2023-01-25 23:17:20', 'https://res.cloudinary.com/dqrwt5fo7/image/upload/v1674674237/posts/b0tv2xe99edsgqng4xjb.png', 'juego melito', 0, 0),
(50010, '2023-03-12 04:10:23', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1678576222/posts/nk6ktkzkv3fkl19orh34.png', 'fgdgdfgd', 0, 0),
(50011, '2023-03-12 04:12:33', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1678576352/posts/an427mqsiiipnzxdjlgj.png', 'melooo', 0, 0),
(50012, '2023-03-12 04:14:03', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1678576441/posts/k1i5uoe5cbehcxcthgva.png', 'melooo', 0, 0),
(50017, '2023-03-13 02:45:00', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1678657499/posts/ln9cw9j1p5el49wzbchu.jpg', 'sdfsdf', 2, 0),
(50023, '2023-04-06 02:56:11', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1680749770/posts/cr00pehqenknxcjzw89r.png', 'qwert', 0, 1),
(50030, '2023-04-09 17:30:02', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1681061403/posts/ldhhhai60utuwmqu8wns.jpg', 'pues eso', 2, 0),
(50031, '2023-04-09 17:30:48', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1681061448/posts/zkidiw448uluodm2couj.png', 'otra', 1, 0),
(50032, '2023-04-09 17:31:10', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1681061470/posts/bva4rnzv3ga77fg0ajsb.jpg', 'sdfdsf', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `publicacionestextos`
--

CREATE TABLE `publicacionestextos` (
  `id` int(20) NOT NULL,
  `tiempo` timestamp NOT NULL DEFAULT current_timestamp(),
  `textos` varchar(80) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `likes` int(10) DEFAULT 0,
  `comments` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publicacionestextos`
--

INSERT INTO `publicacionestextos` (`id`, `tiempo`, `textos`, `description`, `likes`, `comments`) VALUES
(7000, '2023-01-25 05:05:21', 'ewraawe', 'werawe', 0, 0),
(7016, '2023-01-25 20:31:23', 'hgj', 'ghjgh', 0, 0),
(7034, '2023-04-09 17:04:08', 'fsdfsdf', 'pues eso', 0, 0),
(7035, '2023-04-09 18:03:12', 'fsdfsdf', 'sdfsdf', 2, 0),
(7036, '2023-04-09 18:21:18', 'werwer', 'rwerwerqwr', 1, 0),
(7037, '2023-04-09 18:21:28', '3', '3', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `publicacionestextos_cliente`
--

CREATE TABLE `publicacionestextos_cliente` (
  `email4` varchar(50) DEFAULT NULL,
  `id3` int(20) DEFAULT NULL,
  `tiempo` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publicacionestextos_cliente`
--

INSERT INTO `publicacionestextos_cliente` (`email4`, `id3`, `tiempo`) VALUES
('zed@gmail.com', 7016, '2023-01-25 20:51:25'),
('kebinochoa10@gmail.com', 7034, '2023-04-09 17:04:08'),
('anciano@gmail.com', 7035, '2023-04-09 18:03:13'),
('anciano@gmail.com', 7036, '2023-04-09 18:21:18'),
('anciano@gmail.com', 7037, '2023-04-09 18:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `publicaciones_cliente`
--

CREATE TABLE `publicaciones_cliente` (
  `email3` varchar(50) DEFAULT NULL,
  `id2` int(20) DEFAULT NULL,
  `tiempo` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publicaciones_cliente`
--

INSERT INTO `publicaciones_cliente` (`email3`, `id2`, `tiempo`) VALUES
('zed@gmail.com', 50007, '2023-01-25 23:17:20'),
('camilogomess10@gmail.com', 50017, '2023-03-13 02:45:01'),
('juanca@gmail.com', 50023, '2023-04-06 02:56:12'),
('kebinochoa10@gmail.com', 50030, '2023-04-09 17:30:02'),
('kebinochoa10@gmail.com', 50031, '2023-04-09 17:30:48'),
('kebinochoa10@gmail.com', 50032, '2023-04-09 17:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `reportes`
--

CREATE TABLE `reportes` (
  `email_remitente` varchar(70) DEFAULT NULL,
  `resportado_email` varchar(70) DEFAULT NULL,
  `razon` varchar(200) DEFAULT NULL,
  `tiempo` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reportes`
--

INSERT INTO `reportes` (`email_remitente`, `resportado_email`, `razon`, `tiempo`) VALUES
('anciano@gmail.com', 'camilogomess10@gmail.com', NULL, '2023-04-09 19:37:15'),
('anciano@gmail.com', 'camilogomess10@gmail.com', 'es muy raro', '2023-04-09 19:40:31'),
('anciano@gmail.com', 'camilogomess10@gmail.com', 'es rarito el man ese', '2023-04-09 19:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `trabajos`
--

CREATE TABLE `trabajos` (
  `mi_email` varchar(70) DEFAULT NULL,
  `profecional_email` varchar(70) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trabajos`
--

INSERT INTO `trabajos` (`mi_email`, `profecional_email`, `estado`) VALUES
('kebinochoa10@gmail.com', 'camilogomess10@gmail.com', 'Eliminado'),
('camilogomess10@gmail.com', 'kebinochoa10@gmail.com', 'Eliminado'),
('camilogomess10@gmail.com', 'dabeats0914@gmail.com', 'trabajando'),
('dabeats0914@gmail.com', 'camilogomess10@gmail.com', 'nuevo'),
('anciano@gmail.com', 'camilogomess10@gmail.com', 'nuevo'),
('camilogomess10@gmail.com', 'anciano@gmail.com', 'nuevo'),
('anciano@gmail.com', 'kebinochoa10@gmail.com', 'nuevo'),
('kebinochoa10@gmail.com', 'anciano@gmail.com', 'nuevo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`email`),
  ADD KEY `cod_paquete` (`cod_paquete`);

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comentarios_imagen`
--
ALTER TABLE `comentarios_imagen`
  ADD KEY `id_comentario` (`id_comentario`),
  ADD KEY `idimagen` (`idimagen`);

--
-- Indexes for table `comentarios_textos`
--
ALTER TABLE `comentarios_textos`
  ADD KEY `id_comentario2` (`id_comentario2`),
  ADD KEY `idtextos` (`idtextos`);

--
-- Indexes for table `comentarios_usuario`
--
ALTER TABLE `comentarios_usuario`
  ADD KEY `id_comentario3` (`id_comentario3`),
  ADD KEY `emailcliente` (`emailcliente`);

--
-- Indexes for table `megusta`
--
ALTER TABLE `megusta`
  ADD KEY `id_megusta` (`id_megusta`),
  ADD KEY `email_megusta` (`email_megusta`);

--
-- Indexes for table `megustatextos`
--
ALTER TABLE `megustatextos`
  ADD KEY `id_textos` (`id_textos`),
  ADD KEY `email_cliente2` (`email_cliente2`);

--
-- Indexes for table `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id_mensajes`),
  ADD KEY `remitente` (`remitente`),
  ADD KEY `receptor` (`receptor`);

--
-- Indexes for table `paquetes`
--
ALTER TABLE `paquetes`
  ADD PRIMARY KEY (`nombre_paquete`);

--
-- Indexes for table `profesionales_vistos`
--
ALTER TABLE `profesionales_vistos`
  ADD KEY `email_cliente` (`email_cliente`);

--
-- Indexes for table `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publicacionestextos`
--
ALTER TABLE `publicacionestextos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publicacionestextos_cliente`
--
ALTER TABLE `publicacionestextos_cliente`
  ADD KEY `email4` (`email4`),
  ADD KEY `id3` (`id3`);

--
-- Indexes for table `publicaciones_cliente`
--
ALTER TABLE `publicaciones_cliente`
  ADD KEY `email3` (`email3`),
  ADD KEY `id2` (`id2`);

--
-- Indexes for table `trabajos`
--
ALTER TABLE `trabajos`
  ADD KEY `mi_email` (`mi_email`),
  ADD KEY `profecional_email` (`profecional_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30010;

--
-- AUTO_INCREMENT for table `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id_mensajes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50033;

--
-- AUTO_INCREMENT for table `publicacionestextos`
--
ALTER TABLE `publicacionestextos`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7038;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`cod_paquete`) REFERENCES `paquetes` (`nombre_paquete`);

--
-- Constraints for table `comentarios_imagen`
--
ALTER TABLE `comentarios_imagen`
  ADD CONSTRAINT `comentarios_imagen_ibfk_1` FOREIGN KEY (`id_comentario`) REFERENCES `comentarios` (`id`),
  ADD CONSTRAINT `comentarios_imagen_ibfk_2` FOREIGN KEY (`idimagen`) REFERENCES `publicaciones` (`id`);

--
-- Constraints for table `comentarios_textos`
--
ALTER TABLE `comentarios_textos`
  ADD CONSTRAINT `comentarios_textos_ibfk_1` FOREIGN KEY (`id_comentario2`) REFERENCES `comentarios` (`id`),
  ADD CONSTRAINT `comentarios_textos_ibfk_2` FOREIGN KEY (`idtextos`) REFERENCES `publicacionestextos` (`id`);

--
-- Constraints for table `comentarios_usuario`
--
ALTER TABLE `comentarios_usuario`
  ADD CONSTRAINT `comentarios_usuario_ibfk_1` FOREIGN KEY (`id_comentario3`) REFERENCES `comentarios` (`id`),
  ADD CONSTRAINT `comentarios_usuario_ibfk_2` FOREIGN KEY (`emailcliente`) REFERENCES `cliente` (`email`);

--
-- Constraints for table `megusta`
--
ALTER TABLE `megusta`
  ADD CONSTRAINT `megusta_ibfk_1` FOREIGN KEY (`id_megusta`) REFERENCES `publicaciones` (`id`),
  ADD CONSTRAINT `megusta_ibfk_2` FOREIGN KEY (`email_megusta`) REFERENCES `cliente` (`email`);

--
-- Constraints for table `megustatextos`
--
ALTER TABLE `megustatextos`
  ADD CONSTRAINT `megustatextos_ibfk_1` FOREIGN KEY (`id_textos`) REFERENCES `publicacionestextos` (`id`),
  ADD CONSTRAINT `megustatextos_ibfk_2` FOREIGN KEY (`email_cliente2`) REFERENCES `cliente` (`email`);

--
-- Constraints for table `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `mensaje_ibfk_1` FOREIGN KEY (`remitente`) REFERENCES `cliente` (`email`),
  ADD CONSTRAINT `mensaje_ibfk_2` FOREIGN KEY (`receptor`) REFERENCES `cliente` (`email`);

--
-- Constraints for table `profesionales_vistos`
--
ALTER TABLE `profesionales_vistos`
  ADD CONSTRAINT `profesionales_vistos_ibfk_1` FOREIGN KEY (`email_cliente`) REFERENCES `cliente` (`email`);

--
-- Constraints for table `publicacionestextos_cliente`
--
ALTER TABLE `publicacionestextos_cliente`
  ADD CONSTRAINT `publicacionestextos_cliente_ibfk_1` FOREIGN KEY (`email4`) REFERENCES `cliente` (`email`),
  ADD CONSTRAINT `publicacionestextos_cliente_ibfk_2` FOREIGN KEY (`id3`) REFERENCES `publicacionestextos` (`id`);

--
-- Constraints for table `publicaciones_cliente`
--
ALTER TABLE `publicaciones_cliente`
  ADD CONSTRAINT `publicaciones_cliente_ibfk_1` FOREIGN KEY (`email3`) REFERENCES `cliente` (`email`),
  ADD CONSTRAINT `publicaciones_cliente_ibfk_2` FOREIGN KEY (`id2`) REFERENCES `publicaciones` (`id`);

--
-- Constraints for table `trabajos`
--
ALTER TABLE `trabajos`
  ADD CONSTRAINT `trabajos_ibfk_1` FOREIGN KEY (`mi_email`) REFERENCES `cliente` (`email`),
  ADD CONSTRAINT `trabajos_ibfk_2` FOREIGN KEY (`profecional_email`) REFERENCES `cliente` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
