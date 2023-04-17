-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 03:13 AM
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
  `namecomplete` varchar(100) DEFAULT NULL,
  `rol` varchar(20) DEFAULT 'Cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`email`, `name`, `age`, `number`, `password`, `iconUser`, `profession`, `codigo`, `cod_paquete`, `info_paquete`, `lastname`, `namecomplete`, `rol`) VALUES
('anciano@gmail.com', 'Yaji', '2023-04-05', '1242141', '$2b$10$Y9GCco6/bjwcE3XYllwWM.daa89hyvTJvvnEzg4Jt9YOIxZenEC.i', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1680828571/posts/zxck2qaa8wcluo8ra4qi.jpg', 'Diseñador grafico', 0, '1', 3, 'Anciano', 'Yaji Anciano', 'Cliente'),
('camilogomess10@gmail.com', 'camilo', '2023-03-12', '2345425646', '$2b$10$hRgWC.vxA4.G2XrxsXARBehVby1Nrw4FPuTZbaGwfEgUwKoErSu6u', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1678657052/posts/ce3wifbdg93wf51d34pi.jpg', 'Coach personal', 0, '1', 1, 'gomez', 'camilo gomes', 'Cliente'),
('dabeats0914@gmail.com', 'David', '2023-04-04', '3015112641', '$2b$10$0mLUJmMTLENdK.en08Jq.O4iUZD7vgW75fRhYk.MQILQvTLMBn4KK', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1680908740/posts/qrrasxnqharjpxdihp5c.jpg', 'Desarrollador de software', 4746, '1', 1, 'Cuellar Velez', 'David Cuellar Velez', 'Cliente'),
('face-job-admin@facejob.com', 'face', '2023-04-17', '32423423423', '$2b$10$rYFu1f28ITlAuZm3HYm58.3kgGcsjrnFzzUuV1Nq7tFkScnvq99Py', '', 'Face-job', 0, '4', 3, 'job', 'face job', 'ADMIN'),
('juanca@gmail.com', 'Juan', '2023-04-04', '3019874512', '$2b$10$tap1YB0f3oHP/FOzNgRFD.pLVul24BTPazmhe0HGTv49TiK5U9TY.', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1680749854/posts/tnuvc71ssw8btqei7ffd.png', 'Desarrollador de aplicaciones moviles', 0, '2', 10, 'Carlos', 'Juan Velez', 'Cliente'),
('kebinochoa10@gmail.com', 'Kebyn', '2023-03-11', '31321', '$2b$10$8xjiWGG6YW0dhj9rOKnxD.IzEuVOC4ZY24yt47hK/E2nzLsotbePS', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1680828409/posts/woz9emkuc0hivxq96w2v.jpg', 'Diseñador de interiores', 0, '4', 0, 'ochoa', 'kebyn ochoa', 'Cliente'),
('zed@gmail.com', 'zed', '2023-03-12', '3147896352', '$2b$10$R/XO00nx3OGhe.ynmtc3C./mQ5BSd87tQByUaOhQOTn0Fjq0P9hb.', 'https://res.cloudinary.com/dqrwt5fo7/image/upload/v1674674484/posts/kfslmtqtfmrxpnv2cw4w.jpg', 'Fotografo', 0, '2', 4, 'ryan', 'zed ryan', 'Cliente');

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
(30000, 'dfgd', '2023-01-26 01:06:34'),
(30001, 'hola', '2023-04-07 00:57:48'),
(30002, 'qwrrq', '2023-04-08 00:15:45'),
(30013, 'holaaa', '2023-04-14 22:37:56'),
(30014, 'qwerqqtqt', '2023-04-14 22:38:59');

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
(50056, 'zed@gmail.com', 'nomegusta'),
(50058, 'camilogomess10@gmail.com', 'nomegusta');

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
(7040, 'anciano@gmail.com', 'megusta'),
(7040, 'camilogomess10@gmail.com', 'nomegusta'),
(7040, 'dabeats0914@gmail.com', 'nomegusta'),
(7040, 'kebinochoa10@gmail.com', 'nomegusta'),
(7040, 'zed@gmail.com', 'nomegusta'),
(7040, 'juanca@gmail.com', 'nomegusta');

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
(61, 'juanca@gmail.com', 'dabeats0914@gmail.com', 'Hola me gustaria trabajar contigo', 'texto', '2023-04-15 21:24:24', 'NULL'),
(62, 'dabeats0914@gmail.com', 'juanca@gmail.com', 'Gracias por comunicarte', 'texto', '2023-04-15 21:24:24', 'NULL'),
(63, 'juanca@gmail.com', 'dabeats0914@gmail.com', 'qwewqerqrqrq', 'texto', '2023-04-15 21:24:32', 'NULL');

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
('anciano@gmail.com', 'camilogomess10@gmail.com'),
('zed@gmail.com', 'juanca@gmail.com'),
('zed@gmail.com', 'dabeats0914@gmail.com'),
('zed@gmail.com', 'anciano@gmail.com'),
('camilogomess10@gmail.com', 'zed@gmail.com'),
('dabeats0914@gmail.com', 'kebinochoa10@gmail.com'),
('zed@gmail.com', 'antonio@gmail.com'),
('dabeats0914@gmail.com', 'anciano@gmail.com'),
('dabeats0914@gmail.com', 'zed@gmail.com'),
('dabeats0914@gmail.com', 'juanca@gmail.com'),
('kebinochoa10@gmail.com', 'juanca@gmail.com'),
('kebinochoa10@gmail.com', 'zed@gmail.com');

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
(50056, '2023-04-15 20:18:33', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1681589913/posts/iuetccyodypmdoybwalu.jpg', 'paisaje foto', 0, 0),
(50058, '2023-04-17 01:04:40', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1681693482/posts/vkdtknpqhmn7xjphg4rx.png', 'pues eso', 0, 0);

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
(7040, '2023-04-15 00:17:41', 'hola baby, eieieiei', 'qwerty', 1, 0);

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
('anciano@gmail.com', 7040, '2023-04-15 00:17:41');

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
('zed@gmail.com', 50056, '2023-04-15 20:18:33'),
('camilogomess10@gmail.com', 50058, '2023-04-17 01:04:40');

-- --------------------------------------------------------

--
-- Table structure for table `reportes`
--

CREATE TABLE `reportes` (
  `id_reporte` int(11) NOT NULL,
  `email_remitente` varchar(70) DEFAULT NULL,
  `reportado_email` varchar(70) DEFAULT NULL,
  `razon` varchar(300) DEFAULT NULL,
  `tiempo` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
('dabeats0914@gmail.com', 'kebinochoa10@gmail.com', 'Reportado'),
('kebinochoa10@gmail.com', 'dabeats0914@gmail.com', 'Reportado'),
('juanca@gmail.com', 'dabeats0914@gmail.com', 'nuevo'),
('dabeats0914@gmail.com', 'juanca@gmail.com', 'nuevo');

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
-- Indexes for table `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`id_reporte`),
  ADD KEY `email_remitente` (`email_remitente`),
  ADD KEY `reportado_email` (`reportado_email`);

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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30020;

--
-- AUTO_INCREMENT for table `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id_mensajes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50059;

--
-- AUTO_INCREMENT for table `publicacionestextos`
--
ALTER TABLE `publicacionestextos`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7041;

--
-- AUTO_INCREMENT for table `reportes`
--
ALTER TABLE `reportes`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `reportes`
--
ALTER TABLE `reportes`
  ADD CONSTRAINT `reportes_ibfk_1` FOREIGN KEY (`email_remitente`) REFERENCES `cliente` (`email`),
  ADD CONSTRAINT `reportes_ibfk_2` FOREIGN KEY (`reportado_email`) REFERENCES `cliente` (`email`);

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
