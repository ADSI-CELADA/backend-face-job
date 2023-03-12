-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2023 at 10:47 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

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
  `lastname` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`email`, `name`, `age`, `number`, `password`, `iconUser`, `profession`, `codigo`, `lastname`) VALUES
('camilogomess10@gmail.com', 'camilo', '2023-03-12', '3128977187', '$2b$10$hRgWC.vxA4.G2XrxsXARBehVby1Nrw4FPuTZbaGwfEgUwKoErSu6u', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1678657052/posts/ce3wifbdg93wf51d34pi.jpg', 'Profesor', 0, 'gomes'),
('kebinochoa10@gmail.com', 'kebyn', '2023-03-11', '657567', '$2b$10$8xjiWGG6YW0dhj9rOKnxD.IzEuVOC4ZY24yt47hK/E2nzLsotbePS', '', 'Profesor', 0, 'ochoa'),
('zed@gmail.com', 'zed', '0000-00-00', '4354', '$2b$10$R/XO00nx3OGhe.ynmtc3C./mQ5BSd87tQByUaOhQOTn0Fjq0P9hb.', 'https://res.cloudinary.com/dqrwt5fo7/image/upload/v1674674484/posts/kfslmtqtfmrxpnv2cw4w.jpg', 'programador', NULL, 'ryan');

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(20) NOT NULL,
  `comentario` varchar(100) DEFAULT NULL,
  `hora` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comentarios`
--

INSERT INTO `comentarios` (`id`, `comentario`, `hora`) VALUES
(30000, 'dfgd', '2023-01-25 15:06:34');

-- --------------------------------------------------------

--
-- Table structure for table `comentarios_imagen`
--

CREATE TABLE `comentarios_imagen` (
  `id_comentario` int(20) DEFAULT NULL,
  `idimagen` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comentarios_textos`
--

CREATE TABLE `comentarios_textos` (
  `id_comentario2` int(20) DEFAULT NULL,
  `idtextos` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comentarios_usuario`
--

CREATE TABLE `comentarios_usuario` (
  `id_comentario3` int(20) DEFAULT NULL,
  `emailcliente` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `megusta`
--

CREATE TABLE `megusta` (
  `id_megusta` int(20) DEFAULT NULL,
  `email_megusta` varchar(50) DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `megusta`
--

INSERT INTO `megusta` (`id_megusta`, `email_megusta`, `estado`) VALUES
(50017, 'camilogomess10@gmail.com', 'megusta'),
(50017, 'kebinochoa10@gmail.com', 'megusta');

-- --------------------------------------------------------

--
-- Table structure for table `megustatextos`
--

CREATE TABLE `megustatextos` (
  `id_textos` int(20) DEFAULT NULL,
  `email_cliente2` varchar(50) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `megustatextos`
--

INSERT INTO `megustatextos` (`id_textos`, `email_cliente2`, `estado`) VALUES
(7023, 'camilogomess10@gmail.com', 'nomegusta'),
(7023, 'kebinochoa10@gmail.com', 'megusta');

-- --------------------------------------------------------

--
-- Table structure for table `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id` int(20) NOT NULL,
  `tiempo` timestamp NOT NULL DEFAULT current_timestamp(),
  `img` text DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `likes` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publicaciones`
--

INSERT INTO `publicaciones` (`id`, `tiempo`, `img`, `description`, `likes`) VALUES
(50000, '2023-01-25 15:08:02', 'gdfg', 'dfgdfg', 0),
(50007, '2023-01-25 18:17:20', 'https://res.cloudinary.com/dqrwt5fo7/image/upload/v1674674237/posts/b0tv2xe99edsgqng4xjb.png', 'juego melito', 0),
(50010, '2023-03-11 23:10:23', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1678576222/posts/nk6ktkzkv3fkl19orh34.png', 'fgdgdfgd', 0),
(50011, '2023-03-11 23:12:33', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1678576352/posts/an427mqsiiipnzxdjlgj.png', 'melooo', 0),
(50012, '2023-03-11 23:14:03', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1678576441/posts/k1i5uoe5cbehcxcthgva.png', 'melooo', 0),
(50017, '2023-03-12 21:45:00', 'https://res.cloudinary.com/de2sdukuk/image/upload/v1678657499/posts/ln9cw9j1p5el49wzbchu.jpg', 'sdfsdf', 2);

-- --------------------------------------------------------

--
-- Table structure for table `publicacionestextos`
--

CREATE TABLE `publicacionestextos` (
  `id` int(20) NOT NULL,
  `tiempo` timestamp NOT NULL DEFAULT current_timestamp(),
  `textos` varchar(80) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `likes` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publicacionestextos`
--

INSERT INTO `publicacionestextos` (`id`, `tiempo`, `textos`, `description`, `likes`) VALUES
(7000, '2023-01-25 00:05:21', 'ewraawe', 'werawe', 0),
(7016, '2023-01-25 15:31:23', 'hgj', 'ghjgh', 0),
(7023, '2023-03-12 21:45:22', 'hola', 'melooo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `publicacionestextos_cliente`
--

CREATE TABLE `publicacionestextos_cliente` (
  `email4` varchar(50) DEFAULT NULL,
  `id3` int(20) DEFAULT NULL,
  `tiempo` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publicacionestextos_cliente`
--

INSERT INTO `publicacionestextos_cliente` (`email4`, `id3`, `tiempo`) VALUES
('zed@gmail.com', 7016, '2023-01-25 15:51:25'),
('camilogomess10@gmail.com', 7023, '2023-03-12 21:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `publicaciones_cliente`
--

CREATE TABLE `publicaciones_cliente` (
  `email3` varchar(50) DEFAULT NULL,
  `id2` int(20) DEFAULT NULL,
  `tiempo` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publicaciones_cliente`
--

INSERT INTO `publicaciones_cliente` (`email3`, `id2`, `tiempo`) VALUES
('zed@gmail.com', 50007, '2023-01-25 18:17:20'),
('camilogomess10@gmail.com', 50017, '2023-03-12 21:45:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`email`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30001;

--
-- AUTO_INCREMENT for table `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50018;

--
-- AUTO_INCREMENT for table `publicacionestextos`
--
ALTER TABLE `publicacionestextos`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7024;

--
-- Constraints for dumped tables
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
