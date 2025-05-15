-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13/05/2025 às 16:25
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

CREATE DATABASE IF NOT EXISTS db_tampets;
USE db_tampets;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_tampets`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidades`
--

CREATE TABLE `cidades` (
  `id_cidade` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cidades`
--

INSERT INTO `cidades` (`id_cidade`, `nome`) VALUES
(1, 'Sorocaba'),
(2, 'Votorantim'),
(3, 'Araçoiaba da Serra'),
(4, 'Boituva'),
(5, 'Itu'),
(6, 'Piedade'),
(7, 'Salto de Pirapora'),
(8, 'São Roque'),
(9, 'Tatuí');

-- --------------------------------------------------------

--
-- Estrutura para tabela `coletas`
--

CREATE TABLE `coletas` (
  `id_coleta` int(11) NOT NULL,
  `data` datetime NOT NULL DEFAULT current_timestamp(),
  `quantidade` int(11) NOT NULL,
  `id_local` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `coletas`
--

INSERT INTO `coletas` (`id_coleta`, `data`, `quantidade`, `id_local`, `id_user`) VALUES
(1, '2025-01-28 07:39:03', 89, 173, 2),
(2, '2025-03-27 13:48:14', 79, 94, 2),
(3, '2025-04-12 20:07:01', 74, 4, 2),
(4, '2024-12-09 07:05:36', 59, 154, 2),
(5, '2025-02-27 20:36:13', 55, 35, 2),
(6, '2025-02-28 21:33:08', 43, 152, 1),
(7, '2025-05-02 20:41:05', 74, 128, 2),
(8, '2024-12-18 06:18:36', 12, 14, 1),
(9, '2025-02-05 17:56:05', 99, 16, 1),
(10, '2025-04-23 09:37:23', 15, 170, 1),
(11, '2025-04-03 09:08:19', 80, 80, 1),
(12, '2024-12-04 12:10:14', 113, 137, 1),
(13, '2025-01-02 11:20:15', 31, 80, 1),
(14, '2025-05-11 08:04:17', 89, 1, 1),
(15, '2025-01-01 11:17:48', 36, 120, 1),
(16, '2025-05-03 14:03:21', 92, 51, 1),
(17, '2025-02-17 03:18:09', 5, 140, 2),
(18, '2025-01-30 03:20:14', 48, 95, 1),
(19, '2025-05-11 22:15:29', 70, 68, 1),
(20, '2025-04-05 05:23:41', 110, 68, 2),
(21, '2025-03-30 08:34:05', 147, 135, 2),
(22, '2025-03-06 14:59:38', 48, 165, 1),
(23, '2025-04-18 17:57:23', 60, 86, 1),
(24, '2025-04-04 09:43:29', 112, 85, 2),
(25, '2025-02-14 18:13:55', 67, 163, 2),
(26, '2025-04-12 02:57:02', 65, 143, 1),
(27, '2025-03-28 00:21:18', 63, 181, 1),
(28, '2025-01-15 11:52:06', 22, 170, 2),
(29, '2024-12-26 19:12:46', 137, 18, 2),
(30, '2025-01-17 21:41:15', 49, 142, 2),
(31, '2025-01-10 11:41:54', 26, 21, 1),
(32, '2025-04-14 08:53:48', 2, 115, 2),
(33, '2025-04-17 01:05:31', 62, 108, 2),
(34, '2024-12-10 23:04:01', 100, 26, 2),
(35, '2025-05-05 08:36:37', 110, 157, 2),
(36, '2025-04-12 14:03:40', 76, 17, 2),
(37, '2025-01-30 06:41:23', 9, 38, 2),
(38, '2025-02-02 12:44:18', 83, 117, 1),
(39, '2025-04-27 20:28:40', 73, 141, 1),
(40, '2025-03-18 01:14:14', 115, 169, 1),
(41, '2025-03-20 22:47:23', 27, 173, 2),
(42, '2025-04-24 21:46:15', 103, 149, 2),
(43, '2025-03-03 14:36:46', 77, 164, 2),
(44, '2025-04-30 17:50:25', 79, 170, 2),
(45, '2025-01-25 00:40:50', 46, 97, 2),
(46, '2025-02-10 21:26:10', 65, 163, 2),
(47, '2025-05-11 10:36:47', 33, 29, 1),
(48, '2025-05-04 17:07:07', 73, 114, 1),
(49, '2025-03-16 05:08:50', 115, 176, 1),
(50, '2025-02-11 03:57:50', 76, 38, 1),
(51, '2025-04-05 15:45:55', 63, 152, 2),
(52, '2025-05-08 07:34:40', 126, 57, 2),
(53, '2025-04-19 11:19:01', 63, 102, 1),
(54, '2025-01-20 13:04:53', 62, 25, 1),
(55, '2025-03-14 03:20:39', 141, 156, 1),
(56, '2025-03-01 00:33:45', 26, 42, 2),
(57, '2024-12-24 03:10:11', 5, 143, 2),
(58, '2025-03-28 18:45:51', 125, 2, 2),
(59, '2025-03-27 20:26:12', 138, 87, 1),
(60, '2024-12-04 02:59:07', 103, 70, 2),
(61, '2025-03-13 01:37:33', 134, 116, 1),
(62, '2025-03-30 13:01:18', 110, 92, 1),
(63, '2025-02-05 23:50:59', 82, 98, 2),
(64, '2025-04-23 06:49:19', 111, 13, 1),
(65, '2025-02-02 09:11:39', 87, 144, 2),
(66, '2025-03-08 18:07:22', 14, 126, 2),
(67, '2025-05-05 08:31:29', 120, 31, 1),
(68, '2025-02-11 01:08:39', 8, 181, 2),
(69, '2025-04-03 23:01:34', 37, 187, 1),
(70, '2025-02-16 14:22:38', 23, 63, 1),
(71, '2025-04-23 03:23:36', 129, 130, 2),
(72, '2025-04-19 08:31:26', 140, 23, 2),
(73, '2025-03-02 17:58:13', 68, 112, 2),
(74, '2025-04-21 10:25:31', 114, 42, 2),
(75, '2025-01-17 17:23:36', 15, 117, 2),
(76, '2025-04-04 18:33:01', 101, 11, 1),
(77, '2024-12-31 19:02:34', 19, 13, 2),
(78, '2025-03-05 22:10:49', 4, 75, 2),
(79, '2024-12-21 02:31:08', 7, 165, 1),
(80, '2025-05-08 12:28:31', 80, 144, 1),
(81, '2025-02-06 04:05:47', 100, 18, 1),
(82, '2025-05-12 19:37:46', 91, 12, 1),
(83, '2024-12-26 02:16:58', 56, 74, 2),
(84, '2025-04-22 18:05:12', 142, 19, 2),
(85, '2025-05-09 03:57:58', 135, 112, 1),
(86, '2024-12-31 00:27:22', 56, 58, 1),
(87, '2025-05-09 12:17:36', 112, 157, 2),
(88, '2025-03-07 12:50:19', 81, 176, 2),
(89, '2025-04-30 09:00:43', 121, 50, 2),
(90, '2025-03-13 20:15:40', 75, 115, 1),
(91, '2025-03-13 12:39:49', 103, 103, 2),
(92, '2025-02-10 23:36:05', 57, 109, 2),
(93, '2025-03-27 22:38:22', 79, 95, 2),
(94, '2025-04-16 06:45:40', 87, 78, 1),
(95, '2024-12-12 14:24:22', 90, 147, 1),
(96, '2025-04-03 10:42:35', 112, 93, 1),
(97, '2025-01-11 19:39:38', 130, 109, 1),
(98, '2025-01-18 05:10:00', 134, 109, 1),
(99, '2025-05-11 20:46:59', 80, 137, 2),
(100, '2025-02-24 23:16:45', 126, 117, 1),
(101, '2025-03-18 22:25:28', 123, 21, 1),
(102, '2024-12-14 07:07:46', 25, 113, 1),
(103, '2025-01-19 14:05:04', 43, 99, 2),
(104, '2025-05-04 14:35:14', 95, 63, 2),
(105, '2025-03-20 07:43:48', 23, 144, 1),
(106, '2024-12-14 14:56:12', 95, 174, 2),
(107, '2025-01-18 18:14:03', 104, 110, 2),
(108, '2024-12-09 13:32:56', 2, 175, 1),
(109, '2025-03-14 11:22:18', 114, 171, 1),
(110, '2025-05-11 04:06:31', 82, 150, 1),
(111, '2025-04-07 17:20:32', 36, 167, 2),
(112, '2025-01-23 08:42:02', 133, 85, 2),
(113, '2025-01-23 04:40:09', 7, 48, 1),
(114, '2025-03-25 17:53:05', 36, 19, 2),
(115, '2025-02-23 05:20:45', 43, 173, 2),
(116, '2025-01-15 10:02:56', 93, 48, 1),
(117, '2025-01-01 22:48:51', 122, 92, 2),
(118, '2025-01-01 12:21:09', 30, 79, 1),
(119, '2025-05-02 22:01:40', 57, 15, 1),
(120, '2024-12-10 12:07:42', 78, 79, 1),
(121, '2024-12-26 08:51:15', 53, 57, 1),
(122, '2024-12-27 23:40:10', 90, 94, 2),
(123, '2025-03-27 18:28:15', 99, 32, 2),
(124, '2025-03-24 11:25:01', 143, 130, 1),
(125, '2025-02-14 04:58:51', 122, 135, 1),
(126, '2024-12-09 00:47:34', 25, 132, 2),
(127, '2025-02-13 21:29:34', 88, 109, 1),
(128, '2025-02-16 20:55:40', 43, 194, 1),
(129, '2025-03-21 22:24:42', 147, 168, 1),
(130, '2025-01-28 01:10:58', 90, 180, 2),
(131, '2025-02-07 15:24:34', 86, 117, 1),
(132, '2025-03-24 14:45:59', 84, 141, 2),
(133, '2025-02-24 09:49:13', 118, 72, 1),
(134, '2025-01-21 21:21:46', 19, 133, 1),
(135, '2024-12-24 13:04:12', 90, 110, 1),
(136, '2025-02-07 01:40:50', 2, 156, 2),
(137, '2025-02-27 06:53:20', 108, 191, 2),
(138, '2025-04-16 03:49:23', 133, 178, 2),
(139, '2025-05-08 18:25:56', 1, 24, 2),
(140, '2025-03-10 21:42:52', 39, 90, 2),
(141, '2025-01-24 12:11:06', 4, 25, 2),
(142, '2025-02-14 05:42:19', 88, 106, 2),
(143, '2025-01-08 19:01:05', 39, 112, 1),
(144, '2025-04-06 22:08:28', 86, 103, 2),
(145, '2024-12-16 15:05:57', 100, 7, 1),
(146, '2025-04-11 10:35:36', 70, 176, 1),
(147, '2025-05-11 19:38:13', 77, 115, 1),
(148, '2025-01-22 06:30:27', 51, 144, 2),
(149, '2025-01-03 02:31:22', 143, 31, 2),
(150, '2025-01-06 11:16:38', 44, 151, 1),
(151, '2025-03-30 00:47:46', 90, 156, 1),
(152, '2025-04-01 16:43:53', 3, 166, 1),
(153, '2025-02-26 19:29:06', 3, 94, 1),
(154, '2025-01-27 09:13:46', 101, 58, 1),
(155, '2025-02-12 12:31:17', 126, 166, 2),
(156, '2025-01-07 04:18:39', 129, 116, 1),
(157, '2025-01-10 17:27:26', 4, 70, 2),
(158, '2025-03-12 07:43:17', 130, 94, 2),
(159, '2025-03-08 19:34:01', 84, 191, 1),
(160, '2025-01-24 23:08:27', 136, 97, 2),
(161, '2025-02-12 01:25:56', 130, 189, 1),
(162, '2025-02-13 17:59:18', 69, 176, 1),
(163, '2024-12-09 15:07:32', 121, 168, 2),
(164, '2025-05-02 20:01:45', 142, 180, 2),
(165, '2024-12-31 14:01:45', 83, 41, 1),
(166, '2025-01-16 06:41:48', 40, 93, 2),
(167, '2025-02-18 17:39:32', 103, 185, 2),
(168, '2025-03-27 03:40:02', 61, 171, 1),
(169, '2025-01-27 04:38:50', 23, 135, 1),
(170, '2024-12-09 09:59:52', 27, 139, 1),
(171, '2024-12-26 13:50:59', 90, 98, 2),
(172, '2024-12-23 13:41:28', 75, 17, 2),
(173, '2025-01-31 07:17:08', 14, 64, 1),
(174, '2025-04-22 07:06:44', 34, 102, 2),
(175, '2024-12-22 10:27:49', 125, 149, 1),
(176, '2025-01-27 21:58:09', 117, 159, 2),
(177, '2025-01-26 00:58:05', 65, 26, 1),
(178, '2025-02-05 01:37:38', 141, 92, 2),
(179, '2025-01-19 08:48:54', 132, 94, 2),
(180, '2025-02-07 20:48:40', 118, 125, 2),
(181, '2025-02-13 01:15:51', 94, 151, 2),
(182, '2025-03-20 05:02:08', 50, 129, 1),
(183, '2025-03-15 01:56:14', 30, 13, 2),
(184, '2025-02-28 01:43:06', 71, 139, 1),
(185, '2025-03-23 09:31:39', 140, 113, 1),
(186, '2025-04-24 17:51:54', 6, 102, 2),
(187, '2024-12-03 13:04:02', 79, 110, 1),
(188, '2025-03-14 20:03:02', 55, 178, 1),
(189, '2025-03-27 19:59:47', 13, 54, 1),
(190, '2025-04-22 11:48:25', 139, 194, 1),
(191, '2024-12-19 15:09:33', 136, 35, 1),
(192, '2025-02-03 04:17:32', 60, 157, 2),
(193, '2025-04-15 13:25:08', 88, 83, 1),
(194, '2025-03-12 16:06:21', 145, 185, 2),
(195, '2025-02-19 06:27:01', 126, 142, 1),
(196, '2025-02-15 04:58:59', 140, 49, 1),
(197, '2025-02-27 19:46:51', 50, 9, 1),
(198, '2025-05-03 06:19:52', 5, 71, 2),
(199, '2025-02-17 02:27:16', 37, 151, 1),
(200, '2025-02-13 02:06:18', 119, 115, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `locais`
--

CREATE TABLE `locais` (
  `id_local` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `rua` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `cep` varchar(11) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `link_maps` text DEFAULT NULL,
  `atendimento` text DEFAULT NULL,
  `id_cidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `locais`
--

INSERT INTO `locais` (`id_local`, `nome`, `rua`, `bairro`, `numero`, `cep`, `telefone`, `link_maps`, `atendimento`, `id_cidade`) VALUES
(1, 'Agropecuária Aparecidinha', 'R. Juvenal Machado', 'Aparecidinha', '134', '18087-270', '15998584277', 'https://maps.app.goo.gl/Wy3anQmjU6r6jRwS9', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 16h', 1),
(2, 'Agropet Vila Amatto', 'R. Vital de Mello, sala 1 ', 'Aparecidinha', '82', '18087-631', '15997947167', 'https://maps.app.goo.gl/AmTu1sJiRF95iHyf6', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 16h', 1),
(3, 'Óticas Único - Coop (Árvore Grande)', 'R. Padre Madureira', 'Vila Arruda', '255', '18013-210', '15998545912', 'https://maps.app.goo.gl/xZVKCifBk365Bg2w7', 'Atendimento: Seg. à Sábado das 9h às 21h', 1),
(4, 'Voluntária Rosângela', 'R. Ovídio Correa', 'Brigadeiro Tobias', '65', '18108-300', '', 'https://maps.app.goo.gl/GVnxfijrCWgHjjC98', 'Agendar Entrega', 1),
(5, 'Bazar Astúrias', 'R. Joaquim Roque de Oliveira', 'Brigadeiro Tobias', '273', '18108-360', '', 'https://maps.app.goo.gl/X6UQjT4eZoh3bJBFA', 'Seg. à Sexta das 9h às 17h', 1),
(6, 'Óticas Precisão Sorocaba - Shopping Granja Olga', 'Av. São Paulo', 'Granja Olga', '', '18013-004', '1532272447', 'https://maps.app.goo.gl/7m5sAjmwvEnQzMRx9', 'Seg. à Sábado das 9h às 20h', 1),
(7, 'Jô Banho e Tosa', 'R. Artur Tarsitani', 'Jardim Goncalves', '112', '18016-620', '15997313569', 'https://maps.app.goo.gl/UaTDTpjSBB2oH4TA8', 'Terça à Sexta das 9h às 18h | Sábado das 9h às 15h', 1),
(8, 'Espaço Terapêutico Saúde a Vida', 'R. Doraci de Barros', 'Jardim Goncalves', '223', '18016-400', '15988030163', 'https://maps.app.goo.gl/hPmS14A6Ktj2YYPG6', 'Agendar Entrega', 1),
(9, 'Colégio Expande', 'R. Antônio Rodrigues Sanches', 'Jardim Ipê', '147', '18017-005', '1532272667', 'https://maps.app.goo.gl/r1a1SjUF6M3sh9vN9', 'Agendar Entrega', 1),
(10, 'Escola Infantil Aconchego dos Anjos', 'Rua Antônio Rodrigues Sanches', 'Jardim Ipê', '147', '18017-005', '15991393410', 'ttps://maps.app.goo.gl/vW6sfnoxNQpDmomB6', 'Agendar Entrega', 1),
(11, 'Banho e Tosa Cão Contente', 'R. Belmira Loureiro de Almeida', 'Jardim Piratininga', '302', '18016-081', '15991953619', 'https://maps.app.goo.gl/C9ixpFHXZ2MDVV61A', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 15h', 1),
(12, 'Vó Coruja Pet Shop Sorocaba', 'R. Bolívia', 'Vila Barcelona', '160', '18025-720', '15991630261', 'https://maps.app.goo.gl/6zD6tiqGuuG2SR186', 'Seg. à Sábado das 8h às 18h', 1),
(13, 'Academia Duplo Impacto', 'R. Cervantes', 'Vila Assis', '208', '18025-174', '15991143988', 'https://maps.app.goo.gl/yZ7ki6M5T9nYcwVe6', 'Seg. à Sexta das 7h às 12h | das 15h às 21h30 | Sábado das 11h às 14h', 1),
(14, 'Be Power - Beauty House', 'R. Augusto de Assis', 'Vila Assis', '97', '18025-172', '15981212002', 'https://maps.app.goo.gl/jWGV3bsg7XBSX2WH9', 'Agendar Entrega', 1),
(15, 'Escola Infantil Aconchego dos Anjos Unidade II', 'R. Pedro José Senger', 'Vila Haro', '123', '18015-000', '1532277977', 'https://maps.app.goo.gl/n8iFhdQaNbesXcMC6', 'Agendar Entrega', 1),
(16, 'Studio de Beleza Diva\'s', 'R. Martins de Oliveira', 'Vila Haro', '420', '18015-245', '15997305080', 'https://maps.app.goo.gl/74cZf73tRdfNkUtY7', 'Agendar Entrega', 1),
(17, 'Casa de Ração Agro Show - Loja 1', 'Praça Cel. Joaquim Estanislau de Arruda', 'Vila Haro', '202', '18013-130', '15988285143', 'https://maps.app.goo.gl/82viJkZMrF9p5v896', 'Seg. à Sexta das 9h às 19h | Sábado das 9h às 18h', 1),
(18, 'Raquel Tattoo', 'R. Ramon Haro Martini', 'Vila Haro', '659', '18015-140', '15997455986', 'https://maps.app.goo.gl/qAUWEipBeGoLgB2e7', 'Terça, Quinta e Sexta: 9h às 12h - 13h30 às 18h | Quarta: 9h às 12h - 13h30 às 20h | Sábado: 9h às 14h', 1),
(19, 'Mecânica Wilson Salao A', 'Av. Coronel Nogueira Padilha', 'Vila Hortência', '2399', '18020-263', '1532272728', 'https://maps.app.goo.gl/G9wx6N9MRtNa3BAs9', 'Seg. à Sexta das 8h às 12h | 14h às 18h', 1),
(20, 'Com.artsorocaba', 'R. Quinzinho de Barros', 'Vila Hortência', '361', '18020-266', '15988224153', 'https://maps.app.goo.gl/6d3PaEsYCPHDeG7p8', 'Seg. à Sexta das 10h às 18h | Sábado das 10h às 14h', 1),
(21, 'Centro Automotivo Fábio Bellini', 'Av. Eng. Carlos Reinaldo Mendes', 'Além Ponte', '441', '18013-280', '1532278837', 'https://maps.app.goo.gl/Sbj1KeEnvTc15GW26', 'Seg. à Sexta das 8h às 17h', 1),
(22, 'Caldo de Cana da Ana', 'Rua Felisbina Roque da Rosa', 'Jardim Pelegrino', '99', '18013-460', '', 'https://maps.app.goo.gl/yRPaeSk8atoJzPh86A', 'Agendar Entrega', 1),
(23, 'Urban Fight Sorocaba', 'R. Antonio Aidar', 'Parque Três Meninos', '111 1° Andar', '18016-280', '15991580520', 'https://maps.app.goo.gl/ZM7kkb6PVWhxzw1f8', 'Seg. à Sexta das 9h às 20h | Sábado das 9h às 13', 1),
(24, 'Óticas Único - Campolim', 'Av. Antônio Carlos Comitre', 'Parque Campolim', '510', '18047-620', '15996002419', 'https://maps.app.goo.gl/NQTzz4Qha7ynJajNA', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 13h', 1),
(25, 'Petland Campolim Sorocaba', 'Avenida Antônio Carlos Cômitre', 'Parque Campolim', '1230', '18047-620', '15996126700', 'https://maps.app.goo.gl/KtFMyvfvmfoiPrgt7', 'Seg. à Sábado das 8h às 18h', 1),
(26, 'Feet Confort - Podologia', 'R. Antônio Perez Hernandez', 'Parque Campolim', '125', '18048-115', '15981120811', 'https://maps.app.goo.gl/quvJHudvQz6JYX9X6', 'Seg. à Quinta das 9h30 às 19h | Sexta das 9h30 às 18h', 1),
(27, 'ACUMED - Centro Clinico Veterinario Acumed', 'Rua Amador Bueno', 'Jardim Vergueiro', '116', '18030-105', '15991202212', 'https://maps.app.goo.gl/hHJy8cKNWt5ZQquz6', 'Seg. à Sábado das 8h às 20h', 1),
(28, 'Pet Shop Pan e Cia', 'R. Polônia', 'Jardim Europa', '139', '18045-010', '15981000633', 'https://maps.app.goo.gl/ERYnLPM8DHujxpHD6', 'Terça a Sábado das 8h às 17h', 1),
(29, 'Dpet Estética Animal - Banho e Tosa', 'R. Inglaterra', 'Jardim Europa', '645', '18045-070', '15996131222', 'https://maps.app.goo.gl/4ctJjuHJhdgK864y5', 'Seg. à Sexta das 8h às 17h | Sábado das 8h às 13h', 1),
(30, 'Studio Amanda Elias', 'R. Prof. Ovídio de Campos', 'Jardim Faculdade', '216', '18030-170', '15997182170', 'https://maps.app.goo.gl/RZ64hjTYWGNXKoSU9', 'Terça à Sábado das 10h às 18h', 1),
(31, 'Autelie', 'R. Paulo Antônio do Nascimento', 'Jardim Portal da Colina', '30', '18047-400', '15996888897', 'https://maps.app.goo.gl/teE2TemajGib9V3m9', 'Seg. à Sábado das 9h às 20h', 1),
(32, 'Instituto de Oncologia de Sorocaba', 'Av. Comendador Pereira Inácio', 'Jardim Vergueiro', '950', '18030-005', '1533343434', 'https://maps.app.goo.gl/pNNjFCbhGY18zPhp8', 'Seg. à Quinta das 8h às 19h | Sexta das 8h às 18h', 1),
(33, 'Conjunto Hospitalar de Sorocaba (CHS)', 'R. Claudio Manoel da Costa', 'Jardim Vergueiro', '271', '18030-083', '1533329100', 'https://maps.app.goo.gl/PdcvJPHx8CypVBUq5', 'Agendar Entrega', 1),
(34, 'PetShop Ibiti', 'Av. Victor Andrews', 'Zona Industrial', '700', '18086-390', '15991380880', 'https://maps.app.goo.gl/JarofiLuCovMk3RN9', 'Terça à Sexta das 9h às 18h', 1),
(35, 'Nutrimed - Ipanema', 'Av. Ipanema', 'Jardim Novo Horizonte', '4788', '18071-801', '15996814537', 'https://maps.app.goo.gl/upJQYkfidwQTrzBPA', 'Seg. a Sábado das 8h às 20h | Domingos das 8h às 13h', 1),
(36, 'Agropecuária Sampaio', 'Av. Independência', 'Éden', '5032', '18103-000', '15974042186', 'https://maps.app.goo.gl/wdn4KsjkQxxEL8kDA', 'Seg. à sexta das 8h às 18h | Sábado das 8h às 16h', 1),
(37, 'Grupo Escoteiro Terra Rasgada - 425/SP', 'Rua Bonifácio de Oliveira Cassú', 'Éden', 's/nº', '18103-100', '15974042186', 'https://maps.app.goo.gl/GjU8iLPkno58xBbs8', 'Sábado das 8h30 às 12h30h', 1),
(38, 'Diferencial Imóveis', 'R. Fernandes Camacho', 'Jardim Alvorada', '6', '18080-430', '1533427031', 'https://maps.app.goo.gl/6zQS7yCLLujydkmPA', 'Atendimento: Seg. à Sexta das 9h às 16h | Sábado: 8h às 12h', 1),
(39, 'Studio de Pilates Mariana Amorim', 'R. Bartolomeu Bueno', 'Jardim Ana Maria', '286 ', '18065-255', '15988078987', 'https://maps.app.goo.gl/5zZuauAWeveRGTKo9', 'Seg. à Sexta das 7h às 21h | Sábado das 8h às 12h', 1),
(40, 'Lilicão Moda Pet', 'Rua Benedito Mariano dos Santos', 'Éden', '999', '18103-210', '15991966021', 'https://maps.app.goo.gl/krY4kzHB9XxdMGB2A', 'Seg. à Sexta das 9h às 18h30 | Sábado das 9h às 18h', 1),
(41, 'Cerveja Los Gatos - Toca Los Gatos', 'R. Diadema', 'Jardim Leocadia', '500', '18085-330', '15996392427', 'https://maps.app.goo.gl/zqDhiJaGYPpjEday5', 'Seg. à Sexta das 14h às 23h | Sábado: Das 11h às 23h', 1),
(42, 'Cantinho Do Animal', 'R. Dr. Bezerra de Menezes', 'Jardim Maria do Carmo', '46', '18081-080', '1532112210', 'https://maps.app.goo.gl/wjbN7yVHgSwpHe5v6', 'Seg. à Sexta das 8h às 17h | Sábado das 8h às 11h', 1),
(43, 'Dom Pet Shop', 'Av. Dom Aguirre', 'Vila Progresso', '4555', '18081-101', '15998502996', 'https://maps.app.goo.gl/HpH7QM3ujmmnvXJf9', 'Seg. à Sexta das 8h30 às 19h | Sábado das 8h30 às 18h', 1),
(44, 'EM Tereza Ciambelli Gianini', 'Av. Rio Claro', 'Vila Nova Sorocaba', '278', ' 18070-790', '1532236386', 'https://maps.app.goo.gl/uYKNn9P2JXNjQHrt8', 'Seg. à Sexta das 7h às 18h', 1),
(45, 'Conibase Pisos- Sorocaba', 'Av. Ipanema', 'Jardim Novo Horizonte', '4398', '18071-801', '11974580939', 'https://maps.app.goo.gl/XakKk59gETAiQAW28', 'Seg. à Sábado das 8h às 18h', 1),
(46, 'Animavet', 'Av. Itavuvu', 'Jardim Santa Cecilia', '1558', '18075-330', '15991442762', 'https://maps.app.goo.gl/DUcMGXXN56nBpbBA6', 'Seg. à Sexta das 9h às 19h30 | Sábado das 9h às 15h', 1),
(47, 'Pet Shop Feliz Cão', 'Rua Benedicto de Paula', 'Jardim Santo Amaro', '120 ', '18074-684', '15997517271', 'https://maps.app.goo.gl/quwyPeAvYE4MDHv27', 'Seg. à Sexta das 9h às 17h', 1),
(48, 'Bazar Anjos de Patas', 'R. Raymundo Frutuoso da Silva', 'Jardim São Conrado', '860', '18076-280', '15996710757', 'https://maps.app.goo.gl/eH4hTvz4o6GU8wKR8', 'Agendar Entrega', 1),
(49, 'Bella Athena Pet\'s', 'R. Antônio Piantore', 'Jardim Sao Guilherme', '144', '18074-638', '15997266709', 'https://maps.app.goo.gl/fmUvY6rSFbhSqeaQ9', 'Seg. à Sexta das 9h às 19h | Sábado das 9h às 18h', 1),
(50, 'Pet Store Sorocaba Banho e Tosa', 'Av. Edward Fru Fru Marciano da Silva', 'Jardim Sao Guilherme', '880', '18074-621', '15997315119', 'https://maps.app.goo.gl/88DLgfch3ioJGhys8', 'Seg. à Sexta das 9h às 18h| Sábado das 8h às 16h', 1),
(51, 'Pet Shop Amo Bicho', 'Av. Edward Fru Fru Marciano da Silva', 'Jardim Sao Guilherme', '361', '18074-621', '15991561333', 'https://maps.app.goo.gl/1s4BdwqpYUhKSMWJ9', 'Seg. à Sexta das 8h às 18h30 | Sábado das 8h às 17h | Domingo das 9h às 12h', 1),
(52, 'Studio Consciência do Corpo', 'R. Profa. Regina Maria Prestes Momesso', 'Jardim Siriema', '192', '18075-771', '1515991189790', 'https://maps.app.goo.gl/a7K3HYzmcoVkzDoy5', 'Seg. à Sexta das 7h às 12h | 14h às 19h', 1),
(53, 'Avicultura Família Nunes', 'R. Alcino Oliveira Rosa', 'Parque São Bento', '167', '18072-660', '15996429082', 'https://maps.app.goo.gl/u8G6KJJ29uidQ43m9', 'Seg. à Sexta das 9h às 18h | Sábado das 8h às 12h', 1),
(54, 'Casa de Ração Família Nunes', 'R. Salvador Falla', 'Parque São Bento', '23', '18072-392', '15991235743', 'https://maps.app.goo.gl/MUM1SDUiWdNY1f2PA', ' Seg. à Sexta das 9h às 18h | Sábado das 8h às 12h', 1),
(55, 'Amor em patinhas', 'R. Izidro Roque da Silva Telo', 'Parque São Bento', 's/nº', '18072-037', '15991920394', 'https://maps.app.goo.gl/a3H5R28HxX3YQ6Xs6', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 16h', 1),
(56, 'Comercial Multiuso', 'R. Olávo Bilac', 'Vila Santana', '161', '18080-691', '1532342268', 'https://maps.app.goo.gl/mL7yZzbfJy8v4L349', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 16h', 1),
(57, 'Banhacão', 'R. São Vicente', 'Vila Santa Rita', '265', '18080-010', '15998616519', 'https://maps.app.goo.gl/DbeSrYXPtFrWJkLe7', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 15h30 | Fechado para almoço: 11h30 às 13h', 1),
(58, 'Sagrado Pet', 'R. Sérgio Labarca', 'Jardim Santa Rosália', '13', '18095-590', '15996768883', 'https://maps.app.goo.gl/jYt7YvaLR91dG9NH6', 'Seg. à Sexta das 8h às 12h | 14h às 18h', 1),
(59, 'Be Brave Coffee and Tea | Cafeteria', 'R. Aparecida', 'Jardim Santa Rosália', '563', '18095-000', '15​998210579', 'https://maps.app.goo.gl/AaJxKS1sWgwWPWRB8', 'Seg. à Seg. das 8h às 21h', 1),
(60, 'Trujillo Aquatic Center', 'R. Profa. Irene Tienghi Púglia', 'Vila Trujillo', '54', '18060-580', '1532316873', 'https://maps.app.goo.gl/tbVoQnyett6MgAid8', 'Seg. à Sexta das 7h às 12h | 13h às 20h | Sábado das 8h às 14h', 1),
(61, 'Espaço Veterinário', 'Av. Brasil', 'Vila Carvalho', '931', '18060-105', '1532118703', 'https://maps.app.goo.gl/Tg5xCTekRisSrXZT9', 'Seg. à Sexta das 9H às 19h30 | Sábado das 9h às 17h', 1),
(62, 'Ferro Velho Bar', 'Av. Dr. Armando Sales de Oliveira', 'Vila Trujillo', '50', '18060-370', '15015997664906', 'https://maps.app.goo.gl/wbtAfNxouryom3ak9', 'Quarta a domingo das 17h30 às 23h', 1),
(63, 'Animalia Pet Store', 'R. Paes de Linhares', 'Vila Fiori', '123', '18075-630', '1532331347', 'https://maps.app.goo.gl/xeJC7douCRBpziw39', 'Seg. à Sexta das 10h às 18h30 | Sábado das 9h às 15h30', 1),
(64, 'Vida Pet', 'R. Belo Horizonte', 'Vila Helena', '1034', '18071-115', '15992621140', 'https://maps.app.goo.gl/s4xJp5rozYZQm8aC9', 'Seg. à Sexta das 9h às 19h | Sábado das 9h às 18h | Domingo das 9h às 13h', 1),
(65, 'Luau Banho e Tosa', 'R. Castilho Ariberti Fázio', 'Jardim Tupinamba', '24', '18066-315', '15998136720', 'https://maps.app.goo.gl/swApUJvKYUXW17XB7', 'Terça à Sábado das 10h às 18h', 1),
(66, 'Posto Shell - Ipanema', 'Av. Ipanema', 'Vila Carol', '419', '18070-671', 's/ nº', 'https://maps.app.goo.gl/zYgsjTk5WFauRqn26', 'Seg. à Sábado das 8h às 19h', 1),
(67, 'E.E. Sarah Salvestro', 'R. José Martinez Peres', 'Parque Vitoria Regia', '701', '18078-348', '1532261931', 'https://maps.app.goo.gl/CUg5HdEfc1cednfV6', 'Seg. à Sexta das 7h às 20h', 1),
(68, 'Bia Agropet\'s', 'Rua Izaura Lima Bono', 'Parque Vitoria Regia', '145', '18078-380', '15991771937', 'https://maps.app.goo.gl/V1uRVn4DnZbcu6iT8', 'Seg. à Sábado das 9h às 19h | Domingo das 9h às 13h', 1),
(69, 'Orlando Smart', 'Rua Josefa Rúbio Bastida', 'Parque Vitoria Regia', '398', '18078-467', '15​988205456', 'https://maps.app.goo.gl/jj7gyACXDp51aair5', 'Seg. à Sexta das 8h30 às 19h', 1),
(70, 'Biblioteca Campus Sorocaba UFSCar', 'Rodovia João Leme dos Santos', 'Bairro do Itinga', '264', '18052-780', '1532295989', 'https://maps.app.goo.gl/upXEwckpp7CYujmv6', 'Agendar Entrega', 1),
(71, 'Avicultura Divino', 'Rua Dr. Luiz Mendes de Almeida', ' Vila Espirito Santo', '600', '18051-340', '15991181273', 'https://maps.app.goo.gl/ezjakb8ksbQjEcxW6', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 15h', 1),
(72, 'Pet Kiyomi (Pet Verden)', 'R. Dr. Osmar Maciel', 'Central Parque', '421', '18051-000', '15991365677', 'https://maps.app.goo.gl/53xuc12P9oAHbBX99', 'Seg. a Sáb. das 9h às 18h30 | Dom. e Feriados das 9h às 13h', 1),
(73, 'Central Gás e Água', 'R. José Tótora', 'Central Parque', '780', '18051-005', '15996827878', 'https://maps.app.goo.gl/hsKXNq4GwJJ3F3N27', 'Seg. à Sexta das 8h às 19h | Sábado das 8h às 18h', 1),
(74, 'DPet Estética Animal', 'R. Inglaterra', 'Jardim Europa', '654', '18045-070', '15996131222', 'https://maps.app.goo.gl/b8YQYTH3FUSL8t4s7', 'Seg. à Sexta  das 8h às 17h | Sábado das 8h às 13h | Fechado domingos e feriados', 1),
(75, 'Pan&Cia', 'R. Polônia', 'Jardim Europa', '139', '18045-010', '159981000633', 'https://maps.app.goo.gl/9bcfnodYf4D95R347', 'Terça  à Sexta das 8h às 17h | Sábado das 7h às 12h', 1),
(76, 'Agro Pet San Silva', 'R. Januário Caserta', 'Jardim Nova Manchester', '265', '18052-040', '1532021510>', 'https://maps.app.goo.gl/DEyUPRW9qnxP38248', 'Seg. à Sexta das 8h às 18h | Sábado 8h às 15h', 1),
(77, 'Cantina Faculdade Anhanguera - Sorocaba', 'Av. Dr. Armando Pannunzio', 'Jardim Itangua', '1478', '18050-000', '15991445262', 'https://maps.app.goo.gl/gNP4z92FHfGLugbx7', 'Agendar Entrega', 1),
(78, 'Casa Pet', 'R. Profa. Zélia Dulce de Campos Maia', 'Jardim Paulistano', '206', '18030-010', '1534423630', 'https://maps.app.goo.gl/bhESedjuvTGrKy5W8', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 13h', 1),
(79, 'Band FM Sorocaba', 'R. Clodomiro Paschoal', 'Jardim Paulistano', '118', '18040-740', '1532217555', 'https://maps.app.goo.gl/U6Z1RdbbW77Qq5wD6', 'Seg. à Sexta das 8h às 17h', 1),
(80, 'Zoolabor Diagnóstico Veterinário Sorocaba', 'R. Recife', 'Jardim Paulistano', '139', '18040-850', '1532026769', 'https://maps.app.goo.gl/cG8dzRrovvwrXFwu9', 'Seg. à Sexta das 8h20 às 11h50 | 12h50 às 17h50 | Sáb. das 8h às 12h', 1),
(81, 'Dom Brechó', 'R. Nilza Neves Zuliani', 'Jardim Santa Barbara', '26', '18053-367', '15991229497', 'https://maps.app.goo.gl/zu6yEkpRe4AfVf4o8', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 14h', 1),
(82, 'Grasifico Petshop - Banho e Tosa', 'Av. Getúlio Vargas', 'Jardim Sao Paulo', '55', '18051-480', '', 'https://maps.app.goo.gl/M228Wf9hdeYTG7Za6', 'Seg. à Sexta das 8h às 17h | Sábado das 8h às 16h', 1),
(83, 'Fran´s Café Confiança Sorocaba', 'Av. Dr. Armando Pannunzio', 'Jardim Sao Carlos', '1601', '18050-000', '', 'https://maps.app.goo.gl/neFYDYms1N1m4kgY6', 'Todos os dias das 7h30 às 21h', 1),
(84, 'Armazém dos Reis Loja Simus', 'Av. Dr. Américo Figueiredo', 'Jardim Simus', '158', '18055-131', '1534184885', 'https://maps.app.goo.gl/SYewjyJSEb6P18jAA', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 13h', 1),
(85, 'Dog & Cat Casa de Ração São Jorge', 'Av. Dr. Américo Figueiredo', 'Jardim Simus', '427', '18055-132', '15996821104', 'https://maps.app.goo.gl/QCuj3nxjDnhNYjtF8', 'Seg. à Sábado das 9h às 18h', 1),
(86, 'Loja Mayumi', 'R. Dr. Américo Figueiredo', 'Jardim Simus', '453', '18055-127', '1532222650', 'https://maps.app.goo.gl/REAmG16QmxRZe5Yu6', 'Seg. à Sexta das 9h às 19h | Sábado das 9h às 14h', 1),
(87, 'Pet Shop Simus', 'R. Dr. Américo Figueiredo', 'Jardim Simus', '1120', '18055-000', '1532028016', 'https://maps.app.goo.gl/VNXKxDxpk9huuSXp9', 'Seg. à Sexta das 8h às 19h | Sábado das 8h às 13h', 1),
(88, 'Mercearia Tia Angela', 'Alameda dos Miosótis', 'Jardim Simus', '163', '18055-220', '15997460450', 'https://maps.app.goo.gl/vhDRuEe2d3t7gKAW9', 'Agendar Entrega', 1),
(89, 'Togs Agropet', 'Alameda das Catleas', 'Jardim Simus', '175', '18055-177', '15992580477', 'https://maps.app.goo.gl/LGppggWWDZCJEmWz8', 'Seg. à Sexta das 8h às 18h Sábado das 9h às 17h', 1),
(90, 'Agro Binho', 'Av. Santa Cruz', 'Jardim Vera Cruz', '1857 Sala 1', '18050-260', '1534117850', 'https://maps.app.goo.gl/fD8Qz6fiFPpXNiom7', 'Seg. à Sexta das 8h às 19h | Sábado das 8h às 13h', 1),
(91, 'Óticas Occhiali', 'Av. Salvador Milego', 'Jardim Vera Cruz', '106', '18050-010', '15991037383', 'https://maps.app.goo.gl/9BVVcAe4x4cU8gDu8', 'Seg. à Sexta das 9h às 18h | Sábado das 9h ás 13h', 1),
(92, 'Casa de Ração Agro Show', 'Rua José Latorre', 'Jardim Vera Cruz', '17', '18050-210', '15996353781', 'https://maps.app.goo.gl/TM8CLyhgA6CrzVgN9', 'Seg. á Sexta das 9h às 19h | Sábado das 9h às 18h', 1),
(93, 'AgroMaciel', 'Av. Dr. Américo Figueiredo', 'Júlio de Mesquita Filho', '2960', '18053-000', '15996079023', 'https://maps.app.goo.gl/7MYuhYHF7LCSEbjj8', 'Seg. à Sexta das 8h às 19h | Sábado das 8h às 17h', 1),
(94, 'Distribuidora JMF Água Mineral', 'Carmem Miranda', 'Júlio de Mesquita Filho', '291', '18053-071', '15997512608', 'https://maps.app.goo.gl/GEjVndZCY5V24vqC9', 'Seg. à Sexta das 9h às 17h', 1),
(95, 'Daie Papelaria', 'R. Prof. Edemir Antônio Digiampietri', 'Júlio de Mesquita Filho', '21', '18053-130', '15997679879', 'https://maps.app.goo.gl/xvNAjWqVcjMkEukMA', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 14h', 1),
(96, 'Zoom Pet Store', 'R. Áureo Arruda', 'Júlio de Mesquita Filho', '67', '18053-100', '15997480261', 'https://maps.app.goo.gl/t6LVyfjzWYiC93qT8', 'Seg. à Sexta das 8h30 às 18h | Sábado das 9h às 15h', 1),
(97, 'Casa Da Esperanca', 'Rua Antonia Dias Petri', 'Parque Santa Isabel', '130', '18052-210', '15991175467', 'https://maps.app.goo.gl/Sgbw7xwkoSPupueV9', 'Segunda e Terça das 18h30 às 21h30', 1),
(98, 'Avicultura Banho e Tosa Pinheiro', 'R. Délcio Ferreira de Azevedo', 'Jardim Piazza Di Roma', '580 - Salao 04', '18053-813', '1530352175', 'https://maps.app.goo.gl/hDBwgGpAytnz8Nrb8', 'Seg. à Sexta das 9h às 19h30 | Sábado das 9h às 18h | Domingo das 9h às 13h', 1),
(99, 'Casa de Ração Barão', 'Av. Percito de Sousa Queiroz', 'Vila Barao', '873', '18061-240', '15998181299', 'https://maps.app.goo.gl/SEtKfGjuyicp9QGb7', 'Seg. à Sexta das 8h às 19h | Sábado das 8h às 15h', 1),
(100, 'Judô na Faixa JNF', 'Av. Percito de Sousa Queiroz', 'Vila Barao', '205', '18061-230', '15996735190', 'https://maps.app.goo.gl/t8zKVKN3L6KhETM36', 'Seg. e Quar. das 9h às 11h, das 16h às 21h| Terças e Quintas das 9h às 11h, das 16h às 21h | Sexta das 17h às 21h', 1),
(101, 'Dr. Coruja Pet Shop e Clínica Veterinária 24h', 'Rua Dr. Luiz Mendes de Almeida', 'Jardim Sao Paulo', '1783', '18051-290', '1532028498', 'https://maps.app.goo.gl/beGgvkYgBdQ7bABo7', 'Seg. à Sexta das 8h às 19h | Sábado das 8h às 17h', 1),
(102, 'Studio Biopilates', 'Rua Dr. Luiz Mendes de Almeida', 'Vila Espirito Santo', '587', '18051-340', '15998271125', 'https://maps.app.goo.gl/3CLnTMEfSgM3u6YA9', 'Agendar Entrega', 1),
(103, 'Instituto de Hemodiálise Sorocaba', 'R. Imperatriz Leopoldina', 'Vila Jardini', '57', '18044-010', '1532298790', 'https://maps.app.goo.gl/2JuyBXBrrVY9EJ9j9', 'Seg. à Sexta das 8h às 17h', 1),
(104, 'Brechó Segunda Chance', 'R. Visc. de Cairú', 'Vila Independencia', '544', '18040-335', '15997387859', 'https://maps.app.goo.gl/EydMKK3husoG1jba9', 'Seg. à Sexta das 10h às 18h | Sábado das 10h às 14h', 1),
(105, 'Andrea\'s Hair', 'R. Francisco Ângelo', 'Vila Jardini', '223', '18044-300', '15997153329', 'https://maps.app.goo.gl/XbFApPeDtrHhhefh9', 'Terça à Sexta das 9h às 18h | Sábado das 8h às 16h', 1),
(106, 'CatDog Pet Store', 'R. Visc. do Rio Branco', 'Vila Jardini', '842', '18044-000', '15974033385', 'https://maps.app.goo.gl/KB7Dy2zh129pZzfh7', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 14h', 1),
(107, 'Edson Lanches Sorocaba', 'R. Visc. do Rio Branco', 'Vila Jardini', '1014', '18044-000', '15991425719', 'https://maps.app.goo.gl/paLtDC8YLS2GMxtg7', 'Terça à Sábado das 17h às 00h | Sábado das 17h às 23h', 1),
(108, 'Casa da Voluntária Rosana', 'Rua Garcia Redondo', 'Vila Independencia', '120', '18044-280', '', 'https://maps.app.goo.gl/XM9kBetRx28guvYq6', 'Agendar Entrega', 1),
(109, 'Loja Del San', 'R. Visc. do Rio Branco', 'Vila Jardini', '689', '18044-000', '1533180810', 'https://maps.app.goo.gl/LigVGAi7aVjFVCpHA', 'Seg. à Sexta das 10h às 18h | Sábado das 10h às 14h', 1),
(110, 'Salão Piramide\'s', 'R. Barão de Cotegipe', 'Vila Leao', '601', '18040-420', '1532332760', 'https://maps.app.goo.gl/KhqDsXV4taWG5JPu5', 'Sexta e Sábado das 10h às 16h', 1),
(111, 'Duo Bem Saúde', 'R. Aníbal da Costa Dias', 'Vila Lucy', '122', '18043-020', '1535000533', 'https://maps.app.goo.gl/ajhLWcZGLgGQiy3Y8', 'Seg. à Sexta das 8h às 17h', 1),
(112, 'Luck Chic Boutique', 'Av. Paulo Emanuel de Almeida', 'Wanel Ville', '108', '18053-505', '1533269349', 'https://maps.app.goo.gl/erTwGeho9wTYmiZq9', 'Seg. à Sexta das 10h às 18h | Sábado das 9h às 14h', 1),
(113, 'Agro Maciel', 'Av. Elias Maluf', 'Wanel Ville', '2316', '18055-215', '15996079023', 'https://maps.app.goo.gl/v82kpUsj5LzRBVMt9', 'Seg. à Sexta das 8h às 19h | Sábado das 8h às 17h', 1),
(114, 'Zeko\'s Beer', 'Av. Elias Maluf', 'Wanel Ville', '2050', '18055-215', '15998171865', 'https://maps.app.goo.gl/XUGrmrGAs9vhwguz7', 'Terça a sexta das 14h às 22h | Sábado das 10h às 22h', 1),
(115, 'Viva Vida Residencial', ' Otília Wey Pereira', 'Boa Vista', '250', '18085-842', '', 'https://maps.app.goo.gl/AVhA7dE6prrRpBZPA', 'Responsável: Ana Cláudia', 1),
(116, 'Condomínio Residencial São Judas 1', 'R. Giuseppina Cagliero', 'Central Parque Sorocaba', '71', '18051-020', '', 'https://maps.app.goo.gl/Zj2P2wpgqwrhebnX6', 'Responsável: Sergio', 1),
(117, 'Condomínio luzes do Campolim', 'R. Antônio Perez Hernandez', 'Parque Campolim', '705', ' 18048-115', '', 'https://maps.app.goo.gl/kPcFBhiC3xi6wZ8BA', '  Responsável: Erika', 1),
(118, 'Condomínio Portal da Raposo', ' Rod. Raposo Tavares', 'Recanto Ipanema do Meio', '108', '', '', 'https://maps.app.goo.gl/djmXeShhoi1be6oQ9', ' Responsável: Maria Antônia', 1),
(119, 'Condomínio Villa Di Treviso', 'Av. Gen. Carneiro', ' Jardim Americano', ' 2276', ' 18043-004', '', 'https://maps.app.goo.gl/cCQ3x3VDB3x5NCKH7', '  Responsável: Elisa', 1),
(120, 'Residencial Villa Bella', 'R. Lituânia', 'Jardim Europa', ' 560', ' 18045-520', '', 'https://maps.app.goo.gl/ktgzfQUMziPSFdw27', ' Responsável: Ariadne', 1),
(121, 'Residencial Giverny', 'Profa. Yolanda Berti Justi', 'Residencial Giverny', '260', '18048-254', '', 'https://maps.app.goo.gl/tT8XuVhpWvN4UQNY7', 'Responsável: Rafael & Vinicius', 1),
(122, 'Residencial Parque Sinfonia', 'R. Frederico Harder', 'Jardim Novo Mundo', '160', '18119-291', '', 'https://maps.app.goo.gl/9ceFtpdMS3nqNndo8', 'Responsável: Everton', 1),
(123, 'Condomínio Residencial Easy Life', 'R. Demercindo Alves da Silva', 'Jardim Piratininga', ' 42', '18016-085', '', 'https://maps.app.goo.gl/uNGzydgpPG5UTnCh7', 'Responsável: Andreia', 1),
(124, 'Condomínio Villagio di Lucca', '. Prof. Antônio Rodrigues Claro Sobrinho', ' Jardim Sao Carlos', '201', '18046-340', '', 'https://maps.app.goo.gl/hBEhu5Z3CP57H4yW8', 'Responsável:  Aline', 1),
(125, 'Residencial Villaggio Di Veneto', 'Av. Dr. Armando Pannunzio', 'Jardim Vera Cruz', '1700', ' 18050-000', '', 'https://maps.app.goo.gl/tP9GLgqZSwNwPhVb7', ' Responsável: Renata', 1),
(126, 'Pet Shop Armazém Nakasone - Mercado Municipal de Sorocaba', 'Praça Comendador Nicolau Scarpa', 'Centro', 's/ nº', '18035-011', '1532243845', 'https://maps.app.goo.gl/wZJdyx97VRp9G2Ls8', 'Atendimento: Seg. à Sexta das 8h às 18h30 | Sábado das 8h às 14h', 1),
(127, 'Óticas Precisão', 'R. da Penha', 'Centro', '693', '18010-002', '1532317781', 'https://maps.app.goo.gl/fTwiTsczTS6SziQE9', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 13h', 1),
(128, 'Sr Bicho Pet Shop', 'R. Santa Cruz', 'Centro', '72', '18035-630', '15996448601', 'https://maps.app.goo.gl/MSSwJvKVv5EBTUR9A', 'Terça a Sexta das 13h às 18h | Sábado 9h às 15h', 1),
(129, 'JF Lub Troca de Óleo', 'R. Comendador Hermelino Matarazzo', 'Vila Santa Rita', '287', '18080-971', '1533265283', 'https://maps.app.goo.gl/68Wx6nFQdKdSsZFv7', 'Seg. à Sexta das  8h às 18h | Sábado das  8h às 12h', 1),
(130, 'Sebo Sancel', 'R. Dom Antonio Alvarenga', 'Centro', '123', '18080-001', '15997704496', 'https://maps.app.goo.gl/z1PEHC7nkPnRBRiv9', 'Seg. das 8h às 18h | Sábado das 8h às 13h', 1),
(131, 'Vegan Heart', 'R. Dr. Ubaldino do Amaral', 'Centro', '249', '18010-040', '15997107187', 'https://maps.app.goo.gl/MiK4wLXYs6XrSmtz9', 'Terça a Domingo das 18h às 22h30', 1),
(132, 'Dudu e Edu Pet Store', 'R. Goiás', 'Centro', '106', '18035-550', '15991340074', 'https://maps.app.goo.gl/49gMVUxrZ9xsteGW6', 'Seg. das 12h30 às 18h30 | Terça à Sexta das 9h às 18h30 | Sábado das 8h às 17h30', 1),
(133, 'Majstra Formulações Veterinárias', 'R. Saldanha da Gama', 'Centro', '268', '18035-040', '1532333793', 'https://maps.app.goo.gl/jGXatFU9viM7PWD88', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 13h', 1),
(134, 'DPVAT  Regional Sorocaba', 'R. Claudio Manoel da Costa', 'Jardim Vergueiro', '386', '18030-083', '15991588276', 'https://maps.app.goo.gl/F4yvk5JgZpvnB4Fi7', 'Seg. à Quinta das 7h às 17h | Sexta das 7h às 17h', 1),
(135, 'ACUMED - Centro Clinico Veterinario Acumed', 'Rua Amador Bueno', 'Jardim Vergueiro', '116', '18030-105', '15991202212', 'https://maps.app.goo.gl/eoxK9XWVQZ177y836', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 12h', 1),
(136, 'CASA 382', 'R. Mato Grosso', ' Vila Santa Terezinha', '382', '18040-020', '', 'https://maps.app.goo.gl/G1UK8PgCP4aTSjLQ7', 'Seg. à Sexta das 8h às 17h', 1),
(137, 'Life Pet Shop Sorocaba', 'R. Antônio de Oliveira', 'Centro', '161', '18040-120', '15998102900', 'https://maps.app.goo.gl/WER56EMf3FsW68WH6', 'Terça a Sexta das 9h às 17h | Sábado das 9h às 14h', 1),
(138, 'Cartório de Votorantim Tabelião de Notas e de Protesto', 'R. Antônio Fernandes', 'Centro', '97', '18110-170', '1532432788', 'https://maps.app.goo.gl/EMafZBv6zjoMXE1H6', 'Seg. à Sexta das 9h às 17h', 2),
(139, 'Pet Shop Focinho Gelado em Votorantim', 'R. Antônio Walter', 'Centro', '63', '18110-025', '15996005761', 'https://maps.app.goo.gl/3Ait5kcSb9kuNUMZ6', 'Seg. à Sexta das 9h às 17h | Sábado das 9h às 13h', 2),
(140, 'Mundo Encantado Bebê Votorantim', 'Av. 31 de Março', 'Centro', '677', '18110-005', '15998155725', 'https://maps.app.goo.gl/ARtjfsHy1QPjDqm36', 'Seg. à Sexta das 9h às 17h30 | Sábado das 9h às 14h', 2),
(141, 'Anjos de Bigode - Creche para Cachorro Votorantim', 'R. Monte Alegre', 'Centro', '518', '18110-065', '15991547442', 'https://maps.app.goo.gl/hLnfUdWsqx1HeYXa8', 'Terça a quinta das 8h às 18h | Sexta das 8h às 17h | Sábado das 9h às 14h', 2),
(142, 'Auto Center Votorantim', 'R. Levante Santucci', 'Vila Santo Antonio', '318', '18115-650', '1530198973', 'https://maps.app.goo.gl/7uZV3U8dkRsTZFya8', 'Seg. à Sexta das 8h às 12h | 13h às 19h', 2),
(143, 'CEAVO - LTDA Atacadista Hortifruti Grangeiro Votorantim', 'Estrada Municipal', 'Jardim Tatiana', '150', '18119-210', '1533431227', 'https://maps.app.goo.gl/fpUrBmGMkmd4VwhJ6', 'Terça, Quinta e Sábado das 13h às 16h', 2),
(144, 'Encanta Pet Votorantim', 'Av. Matheus Conegero', 'Parque Bela Vista', '160', '18110-570', '15997143371', 'https://maps.app.goo.gl/Ep2pt2pxXzoFQdN18', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 13h', 2),
(145, 'Pet Amigo Votorantim', 'Av. Matheus Conegero', 'Parque Bela Vista', '408', '18110-570', '1532471393', 'https://maps.app.goo.gl/z3JBeYHmF4C5hn3NA', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 13h', 2),
(146, 'Pró Ovos Distribuidora de Alimentos Votorantim', 'Rua Américo Maschetto', 'Pró-Morar', '207', '18113-660', '15998578515', 'https://maps.app.goo.gl/FHrHBQd3vFxYQ9dN6', 'Seg. à Sábado das 8h30 às 18h', 2),
(147, 'Agro Silva', 'R. Santa Filomena,', 'Rio Acima, Votorantim', '600', '18111-325', '15991829090', 'https://maps.app.goo.gl/yRsXcani1gr1yGAV8', 'Seg. à Sexta das 9h às 19h | Sábado das 9h às 14h', 2),
(148, 'Agropet alvorada', 'Av. Octávio Augusto Rangel,', 'Jardim Toledo, Votorantim ', '869', '18112-055', '1532434183', 'https://maps.app.goo.gl/x5SpHYVhhNqW3NPX8', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 13h', 2),
(149, 'Tropa Q Late', 'R. Antônio Campos Filho', 'Vila Dominguinho, Votorantim', ',235', '18114-160', '15998259480', 'https://maps.app.goo.gl/CYYbnzq4yh9BtMnP7', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 14h', 2),
(150, 'Condomínio Alpha Club', 'Av. Gisele Constantino', 'Parque Bela Vista', ' 430', ' 18110-650', '', 'https://maps.app.goo.gl/PBLad8YvPrjeDxfp8', ' Responsável: Portaria', 2),
(151, 'Condomínio Residencial Parque Esplanada', 'R. João Batista Correia Oliveira', 'Vossoroca,', '105', ' 18110-702', '', 'https://maps.app.goo.gl/JPYYGP9CAu16ronm6', ' Responsável: Paula', 2),
(152, 'Villa Flora Residencial', ' Rod. João Leme dos Santos', 'Villa Flora ', '443', ', 18119-001', '', 'https://maps.app.goo.gl/nP5Hv1PdFwUMR5AVA', 'Responsável:  Rafael & Vinicius', 2),
(153, 'Condomínio Residencial Aquarius', 'Araçoiaba da Serra', 'Residencial Aquarius', '', ' 18190-000', '', 'https://maps.app.goo.gl/xkBDk4uYf5ftyYdz6', ' Responsável: CHRIS', 3),
(154, 'Jessica Rolim Nail Designer Esmalteria', 'R. 21 de Abril', 'Centro, Araçoiaba da Serra', '155', ' 18190-000', '11947130299', 'https://maps.app.goo.gl/8P44RNf6x38CKwU37', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 14h', 3),
(155, 'Mel Pet Estética Animal', 'Avenida Ministro Antônio Vieira', 'Jardim Nossa Sra. Salete, Araçoiaba da Serra', '366', '18190-000', '15996776713', 'https://maps.app.goo.gl/AZ73pBmucVSo51Zo9', 'Seg. à Sexta das 8h30 às 17h | Sábado das 8h às 14h', 3),
(156, 'Adega do Wilsinho', 'Av. Manoel Machado de Oliveira', 'Jd M da Glória, Araçoiaba da Serra', '560', ' 18190-000', '15996260050', 'https://maps.app.goo.gl/R7PeY8j7xumiPXkDA', 'Seg. à Sexta das 10h às 17h | Sábado das 10h às 13h', 3),
(157, 'Agropecuária BoituRaça', 'R. José Vitiello', 'Centro, Boituva', '191', ' 18550-000', '15997124321', 'https://maps.app.goo.gl/wQNpkxHoPFWcECcs6', 'Seg. à Sexta das 10h às 18h | Sábado das 8h às 17h', 4),
(158, 'Pet Mania de Bicho', 'Vila Ginasial', 'Boituva - SP', '114', '18550-000', '1532634184', 'https://maps.app.goo.gl/FMBNocYEPiFtVMQg8', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 16h', 4),
(159, 'Agro terra', 'Rua Manoel dos Santos Freire', ' Centro, Boituva', '338', ' 18550-000', '1532687069', 'https://maps.app.goo.gl/nih182esyeXf2qk67', 'Seg. à Sexta das 8h às 18h30 | Sábado das 8h às 13h | Domingo das 7h às 12h', 4),
(160, 'Centro de Treinamento Primatas', 'R. dos Lavradores', 'Centro, Boituva ', '42', '18550-000', '15998716186>', 'https://maps.app.goo.gl/TBctyPTQSDg855dS6', 'Seg. à Sexta das 6h às 20h', 4),
(161, 'Gelat Sorvetes', 'R. Expedicionário Boituvense', ' AA, Boituva', '73', '18550-000', '15996301530', 'https://maps.app.goo.gl/jU63AjZQoE2NTphX6', 'Dom. à Dom das 10h às 20h', 4),
(162, 'Agropecuária Bueno', 'R. Profa. Célia Lourdes Vercelino', 'Jardim Santa Cruz, Boituva', '420', ' 18550-000', '1532633434', 'https://maps.app.goo.gl/WePtX8r3JfohKcH47', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 16h', 4),
(163, 'Agro Portal - Agropecuária', 'Rua Zélia de Lima Rosa', 'CA3 Portal dos Passaros 2, Boituva', '1010', '18552-320', '15981799798', 'https://maps.app.goo.gl/KgwfjYKSW2awr2qx5', 'Seg. à Sexta das 8h30 às 19h | Sábado das 8h30 às 17h | Domingo das 8h30 às 13h', 4),
(164, 'AGROPESCA FORT', 'R. Scandar Eid', 'Jd Maria Paulina, Boituva', '20', '18550-000', '15996870315', 'https://maps.app.goo.gl/m3Y56rcpkihZtzYU7', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 16h', 4),
(165, 'AGRO PET da JU - agropecuária e petshop', 'Av. Brasil', 'Residencial Esplanada, Boituva', '711', ' 18557-646', '15991460157', 'https://maps.app.goo.gl/xGmooUK7RQcFWqww8', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 12h', 4),
(166, 'Casa de Rações 2 Irmãos', 'R. Profa. Célia Lourdes Vercelino', 'Jardim Santa Cruz, Boituva', '685', ' 18557-020', '15996816355', 'https://maps.app.goo.gl/4WequDmVFYGPAX8P7', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 14h', 4),
(167, 'Agropecuária Júnior', 'R. Cel. Eugênio Motta', 'Vila Ferrielo', '789', ',18550-000', '1532632672 ', 'https://maps.app.goo.gl/b5xhtMe1wESeS8Qr9', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 14h', 4),
(168, 'Opt Óculos', 'R. Cel. Eugênio Motta', 'Vila Ferriello, Boituva', '402', '18550-000', '15991573079', 'https://maps.app.goo.gl/QjWDdFPwd8uHV4H3A', 'Agendar Entrega', 4),
(169, 'Casa da Voluntária Simone', 'R. Ben Hur Camacho Júnior', 'Portal do Éden', '107', '13308-510', '', 'https://maps.app.goo.gl/gqMEyMQNqbFTXpMCA', 'Agendar Entrega', 5),
(170, 'Clinica Veterinaria Malucão', 'R. Demétrio Ligote Blackman', 'Jardim do Estadio', '45', '13309-301', '1140250212', 'https://maps.app.goo.gl/CewU8wZhEwLjKSj57', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 12h', 5),
(171, 'Academia Open Trainer', 'R. Padre Palma', 'Centro', '109', '18170-000', '', 'https://maps.app.goo.gl/T5K7i6hinP3kja9s7', 'Seg. à Sexta das 14h30 às 20h30', 6),
(172, 'Pesqueiro do Marcelo', 'Estrada dos lavradores Gurgel', '', '', '18170-000', '15997415222', 'https://maps.app.goo.gl/KNGZYXXjSRPGhfZv9', 'Agendar Entrega', 6),
(173, 'Chácara Roseira Piedade', 'Rod. José de Carvalho', 'Roseira', '', '18170-000', '15991236122', 'https://maps.app.goo.gl/9ih5g5Vno54yBjzY7', 'Agendar Entrega', 6),
(174, 'Escola Clementino Vieira Cordeiro', '', 'Jurupara', '', '18170-000', '1533446142', 'https://maps.app.goo.gl/gsAn8pYyAKpa2R2t8', 'Agendar Entrega', 6),
(175, 'Agropecuária São José', 'R. Saladino de Araújo Leite', 'Vila Olinda', '620', '18170-000', '15998470004', 'https://maps.app.goo.gl/fX3SGswMY2eAssZM7', 'Seg. à Sábado das 8h às 18h', 6),
(176, 'AgroVet', 'R. Honório de Almeida Barros', 'Terras de São João', '585', '18160-000', '1532921542', 'https://maps.app.goo.gl/KScShrFsLnetU2WU7', 'Seg. à Sábado das 8h às 18h', 7),
(177, 'Atacadão de Sorvetes Urla Urla', 'Av. Carlos Chagas', 'Jardim Primavera', '162', '18160-000', '15981031072', 'https://maps.app.goo.gl/DucDgJEqePQ6XPBE9', 'Agendar Entrega', 7),
(178, 'Padaria JukasPan II', 'Rua João Leme dos Santos', 'Jardim Primavera', '273', '18162-080', '15997064997', 'https://maps.app.goo.gl/JfnAJbyBLb68nS2KA', 'Dom. à Dom. das 6h30 às 20h', 7),
(179, 'Elizete Modas e Acessórios', 'R. Silvio Pissinato', 'Jardim Silva Barros', '159', '18160-000', '', 'https://maps.app.goo.gl/jVebxaFZcZjJA2is7', '', 7),
(180, 'Quitanda Paulo e Néia', 'R. Virgílio Cerione', 'Jardim Silva Barros', '379', '18160-000', '', 'https://maps.app.goo.gl/sm3FV6vtkkRbP6bF9', '', 7),
(181, 'Mariana Presentes e Acessórios', 'Rua Benedito Shuermam de Barros', 'Jardim América', '376', '18160-000', '', 'https://maps.app.goo.gl/SPsU27GgtpCHnjZA6', 'Agendar Entrega', 7),
(182, 'Rosângela Manicure', 'Rua Salvador Leme dos Santos', 'Jardim Maria Clara', '269', '18160-000', '', 'https://maps.app.goo.gl/9kkhZutPm5tnoYpz9', 'Agendar Entrega', 7),
(183, 'Mercado Esperança', 'Rua Paulo dos Santos Guilherme', 'Jardim Maria Clara', '256', '18160-000', '', 'https://maps.app.goo.gl/cLZAM822XKFZJ5vB6', 'Agendar Entrega', 7),
(184, 'Aqui Tem Mais Almodovar', 'Rua Eugênio dos Santos Seabra', 'Jardim Paulistano', '121', '18160-000', '1532923936', 'https://maps.app.goo.gl/JkN9ZS75Vb6fMeMMA', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 16h', 7),
(185, 'AgroPet Mundo Animal', 'Rua Gonçalo Correa', 'Jardim Paulistano', '335', '18160-000', '15996578326', 'https://maps.app.goo.gl/RzCe9eTJ9H6Laudq7', 'Agendar Entrega', 7),
(186, 'Tikos Pastel', 'Rua Waldomiro de Almeida Barros', 'Jardim Silva Barros', '62', '18160-000', '1599630071', 'https://maps.app.goo.gl/siQyNTE5JPQsrxxg9', 'Ter. à Domingo das 18h às 23h30', 7),
(187, 'Sorveteria Baby Mel fascinatto', 'Rua Pedro Pire', 'Campo Largo', '729', '18160-000', '15996551007', 'https://maps.app.goo.gl/6ADa49kGNFR9w4nL7', 'Dom. à Domingo das 11h às 22h', 7),
(188, 'Armarinhos Colcha de Retalhos', 'Av. Pedro Pires de Melo', 'Campo Largo', '46', '18160-000', '15997103697', 'https://maps.app.goo.gl/R9hPBYkonyQbEqQa7', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 14h', 7),
(189, 'AgroCampos', 'Praça João Guimarães', 'Campo Largo', '81', '18160-000', '15997755711', 'https://maps.app.goo.gl/CPWDMPuN6BdMkqjy5', 'Seg. à Sábado das 8h às 18h', 7),
(190, 'Salão Rei do Corte', 'Rua Ovídio Leme dos Santos', 'Vila Santa Isabel', '45', '18160-000', '1515997385327', 'https://maps.app.goo.gl/AgwaWHh1GnupokQf6', 'Agendar Entrega', 7),
(191, 'Mercearia da Cleide', 'Rua Oito', 'Piraporinha', '35', '13323-360', '15997353048', 'https://maps.app.goo.gl/QPH7DJ5cNw4mv6t58', 'Agendar Entrega', 7),
(192, 'Agro Arcanjo', 'Av. Vicente Leme dos Santos Sobrado', 'Ana Guilherme', '593', '18160-000', '15997763001', 'https://maps.app.goo.gl/HrHh8saKPRzQG9hHA', 'Seg. à Sábado das 8h às 18h', 7),
(193, 'PetHouse Casa de Ração', 'Rua Tomás Antonio Gonzaga', 'Paisagem Colonial', '62', '18136-700', '11978639191', 'https://maps.app.goo.gl/3GR3a86MZCBie1vt9', 'Seg. à Sexta das 8h às 19h | Sábado das 8h às 18h', 8),
(194, 'Clínica Veterinária ESPECIVETA', 'Rua Carlos Orsi Filho', 'Jardim Santa Rita', '299', '18274-290', '15996702626', 'https://maps.app.goo.gl/ZKBztUKZuFi84P1D7', 'Seg. Terça e Sexta das 9h às 22h | Quarta das 9h às 19h | Quinta das 9h às 17h', 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `niveis`
--

CREATE TABLE `niveis` (
  `id_nivel` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `niveis`
--

INSERT INTO `niveis` (`id_nivel`, `nome`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `id_nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id_user`, `nome`, `senha`, `id_nivel`) VALUES
(1, 'admin', 'admin', 1),
(2, 'user', 'user', 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id_cidade`);

--
-- Índices de tabela `coletas`
--
ALTER TABLE `coletas`
  ADD PRIMARY KEY (`id_coleta`),
  ADD KEY `id_local` (`id_local`),
  ADD KEY `id_user` (`id_user`);

--
-- Índices de tabela `locais`
--
ALTER TABLE `locais`
  ADD PRIMARY KEY (`id_local`),
  ADD KEY `id_cidade` (`id_cidade`);

--
-- Índices de tabela `niveis`
--
ALTER TABLE `niveis`
  ADD PRIMARY KEY (`id_nivel`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_nivel` (`id_nivel`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id_cidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `coletas`
--
ALTER TABLE `coletas`
  MODIFY `id_coleta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT de tabela `locais`
--
ALTER TABLE `locais`
  MODIFY `id_local` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT de tabela `niveis`
--
ALTER TABLE `niveis`
  MODIFY `id_nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `coletas`
--
ALTER TABLE `coletas`
  ADD CONSTRAINT `coletas_ibfk_1` FOREIGN KEY (`id_local`) REFERENCES `locais` (`id_local`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `coletas_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `locais`
--
ALTER TABLE `locais`
  ADD CONSTRAINT `locais_ibfk_1` FOREIGN KEY (`id_cidade`) REFERENCES `cidades` (`id_cidade`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_nivel`) REFERENCES `niveis` (`id_nivel`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
