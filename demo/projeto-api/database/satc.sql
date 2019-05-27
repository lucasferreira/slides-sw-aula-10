-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 24, 2019 at 08:41 AM
-- Server version: 5.5.60-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `satc`
--

-- --------------------------------------------------------

--
-- Table structure for table `alunos`
--

CREATE TABLE IF NOT EXISTS `alunos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(64) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `al_code` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alunos`
--

INSERT INTO `alunos` (`id`, `codigo`, `nome`, `email`, `updated_at`, `created_at`) VALUES
(2, '201620617', 'ALISSON GOULART LUIZ', 'alissongluiz@outlook.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '201711418', 'AMÁBILE NUNES FREITAS', 'amabile.freitas@live.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '201811420', 'EDVAN RONCHI', 'edvan_ronchi@hotmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '201511423', 'GABRIEL DAL FARRA DE FREITAS', 'gabrieldfreitas9@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '201811414', 'GUILHERME FERNANDES LOLI', 'engguilhermeloli@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '201711401', 'HENRIQUE CECHINEL', 'henrique-cechinel@hotmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '201611401', 'HIGOR DOMINGOS MACHADO', 'higordomingosmachado@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '201611407', 'JOÃO PAULO PACHECO DA SILVA', 'joaojp1921@hotmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '201811401', 'JOSIANE RODRIGUES PEDRO', 'Josianerodriguespedro@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '201711408', 'LEONARDO DA SILVA NONNENMACHER', 'leoconon@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '201421407', 'LEONARDO QUAREZEMIN BAGIO', 'leonardobagiosatc@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '201511315', 'MARIANE JOAQUIM MELO', 'marymeelo20@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '201711405', 'MATEUS BEZ FONTANA', 'mateus_bez@outlook.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '201211417', 'MURILO DA LUZ SILVA', 'murilodaluzsilva@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '201511407', 'RAFAEL DIAS MACHADO', 'razdias@hotmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '201711415', 'RODRIGO PASINI DE SOUZA', 'rodrigo4635@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, '201311435', 'ROGER ENRIQUE CAVALER', 'rogerenrique_cavaler@hotmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, '201711423', 'VICTOR THALES PEREIRA DE LIMAS', 'victor_limas@hotmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, '201611409', 'VITOR HUGO DE SOUZA', 'vito.hs@hotmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, '201611415', 'VLADSON RAMOS DOS SANTOS', 'vladson_.ramos@outlook.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, '201711416', 'WESLEY GUSTAVO DE FAVERI CRAVO', 'faveriwesley@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, '1000', 'TESTE 2', 'lucas.ferreira@satc.edu.br', '2019-05-24 00:29:00', '2019-05-24 00:29:00'),
(26, '1000', 'TESTE 10000', 'lucas.ferreira@satc.edu.br', '2019-05-23 21:35:18', '2019-05-23 21:33:23'),
(27, '', 'Lucas Ferreira', NULL, '2019-05-23 21:42:36', '2019-05-23 21:42:36');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
