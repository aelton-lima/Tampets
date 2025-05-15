-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
-- Host: 127.0.0.1
-- Tempo de geração: 05/05/2025 às 15:59
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

CREATE DATABASE IF NOT EXISTS db_tampets;
USE db_tampets;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


CREATE TABLE `niveis` (
  `id_nivel` INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `users` (
  `id_user` INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `id_nivel` int(11) NOT NULL,
  FOREIGN KEY (`id_nivel`) REFERENCES `niveis` (`id_nivel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `cidades` (
  `id_cidade` INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `locais` (
  `id_local` INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `rua` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `cep` varchar(11) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `link_maps` text DEFAULT NULL,
  `atendimento` text DEFAULT NULL,
  `id_cidade` int(11) NOT NULL,
  FOREIGN KEY (`id_cidade`) REFERENCES `cidades` (`id_cidade`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `coletas` (
  `id_coleta` INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL DEFAULT current_timestamp(),
  `quantidade` int(11) NOT NULL,
  `id_local` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  FOREIGN KEY (`id_local`) REFERENCES `locais` (`id_local`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- ---------------------------------------------------------------------------------
START TRANSACTION;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------
-- Despejando dados para as tabelas

INSERT INTO `niveis` (`nome`) VALUES
('admin'),
('user');

INSERT INTO `users` (`nome`, `senha`, `id_nivel`) VALUES
('admin', 'admin', 1),
('user', 'user', 2);

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

INSERT INTO `locais` (`id_cidade`, `nome`, `rua`, `bairro`, `numero`, `cep`, `telefone`, `atendimento`, `link_maps`) VALUES
('1', 'Agropecuária Aparecidinha', 'R. Juvenal Machado', 'Aparecidinha', '134', '18087-270', '15998584277', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 16h', 'https://maps.app.goo.gl/Wy3anQmjU6r6jRwS9'),
('1', 'Agropet Vila Amatto', 'R. Vital de Mello, sala 1 ', 'Aparecidinha', '82', '18087-631', '15997947167', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 16h', 'https://maps.app.goo.gl/AmTu1sJiRF95iHyf6'),
('1', 'Óticas Único - Coop (Árvore Grande)', 'R. Padre Madureira', 'Vila Arruda', '255', '18013-210', '15998545912', 'Atendimento: Seg. à Sábado das 9h às 21h', 'https://maps.app.goo.gl/xZVKCifBk365Bg2w7'),
('1', 'Voluntária Rosângela', 'R. Ovídio Correa', 'Brigadeiro Tobias', '65', '18108-300', '', 'Agendar Entrega', 'https://maps.app.goo.gl/GVnxfijrCWgHjjC98'),
('1', 'Bazar Astúrias', 'R. Joaquim Roque de Oliveira', 'Brigadeiro Tobias', '273', '18108-360', '', 'Seg. à Sexta das 9h às 17h', 'https://maps.app.goo.gl/X6UQjT4eZoh3bJBFA'),
('1', 'Óticas Precisão Sorocaba - Shopping Granja Olga', 'Av. São Paulo', 'Granja Olga', '', '18013-004', '1532272447', 'Seg. à Sábado das 9h às 20h', 'https://maps.app.goo.gl/7m5sAjmwvEnQzMRx9'),
('1', 'Jô Banho e Tosa', 'R. Artur Tarsitani', 'Jardim Goncalves', '112', '18016-620', '15997313569', 'Terça à Sexta das 9h às 18h | Sábado das 9h às 15h', 'https://maps.app.goo.gl/UaTDTpjSBB2oH4TA8'),
('1', 'Espaço Terapêutico Saúde a Vida', 'R. Doraci de Barros', 'Jardim Goncalves', '223', '18016-400', '15988030163', 'Agendar Entrega', 'https://maps.app.goo.gl/hPmS14A6Ktj2YYPG6'),
('1', 'Colégio Expande', 'R. Antônio Rodrigues Sanches', 'Jardim Ipê', '147', '18017-005', '1532272667', 'Agendar Entrega', 'https://maps.app.goo.gl/r1a1SjUF6M3sh9vN9'),
('1', 'Escola Infantil Aconchego dos Anjos', 'Rua Antônio Rodrigues Sanches', 'Jardim Ipê', '147', '18017-005', '15991393410', 'Agendar Entrega', 'ttps://maps.app.goo.gl/vW6sfnoxNQpDmomB6'),
('1', 'Banho e Tosa Cão Contente', 'R. Belmira Loureiro de Almeida', 'Jardim Piratininga', '302', '18016-081', '15991953619', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 15h', 'https://maps.app.goo.gl/C9ixpFHXZ2MDVV61A'),
('1', 'Vó Coruja Pet Shop Sorocaba', 'R. Bolívia', 'Vila Barcelona', '160', '18025-720', '15991630261', 'Seg. à Sábado das 8h às 18h', 'https://maps.app.goo.gl/6zD6tiqGuuG2SR186'),
('1', 'Academia Duplo Impacto', 'R. Cervantes', 'Vila Assis', '208', '18025-174', '15991143988', 'Seg. à Sexta das 7h às 12h | das 15h às 21h30 | Sábado das 11h às 14h', 'https://maps.app.goo.gl/yZ7ki6M5T9nYcwVe6'),
('1', 'Be Power - Beauty House', 'R. Augusto de Assis', 'Vila Assis', '97', '18025-172', '15981212002', 'Agendar Entrega', 'https://maps.app.goo.gl/jWGV3bsg7XBSX2WH9'),
('1', 'Escola Infantil Aconchego dos Anjos Unidade II', 'R. Pedro José Senger', 'Vila Haro', '123', '18015-000', '1532277977', 'Agendar Entrega', 'https://maps.app.goo.gl/n8iFhdQaNbesXcMC6'),
('1', "Studio de Beleza Diva's", 'R. Martins de Oliveira', 'Vila Haro', '420', '18015-245', '15997305080', 'Agendar Entrega', 'https://maps.app.goo.gl/74cZf73tRdfNkUtY7'),
('1', 'Casa de Ração Agro Show - Loja 1', 'Praça Cel. Joaquim Estanislau de Arruda', 'Vila Haro', '202', '18013-130', '15988285143', 'Seg. à Sexta das 9h às 19h | Sábado das 9h às 18h', 'https://maps.app.goo.gl/82viJkZMrF9p5v896'),
('1', 'Raquel Tattoo', 'R. Ramon Haro Martini', 'Vila Haro', '659', '18015-140', '15997455986', 'Terça, Quinta e Sexta: 9h às 12h - 13h30 às 18h | Quarta: 9h às 12h - 13h30 às 20h | Sábado: 9h às 14h', 'https://maps.app.goo.gl/qAUWEipBeGoLgB2e7'),
('1', 'Mecânica Wilson Salao A', 'Av. Coronel Nogueira Padilha', 'Vila Hortência', '2399', '18020-263', '1532272728', 'Seg. à Sexta das 8h às 12h | 14h às 18h', 'https://maps.app.goo.gl/G9wx6N9MRtNa3BAs9'),
('1', 'Com.artsorocaba', 'R. Quinzinho de Barros', 'Vila Hortência', '361', '18020-266', '15988224153', 'Seg. à Sexta das 10h às 18h | Sábado das 10h às 14h', 'https://maps.app.goo.gl/6d3PaEsYCPHDeG7p8'),
('1', 'Centro Automotivo Fábio Bellini', 'Av. Eng. Carlos Reinaldo Mendes', 'Além Ponte', '441', '18013-280', '1532278837', 'Seg. à Sexta das 8h às 17h', 'https://maps.app.goo.gl/Sbj1KeEnvTc15GW26'),
('1', 'Caldo de Cana da Ana', 'Rua Felisbina Roque da Rosa', 'Jardim Pelegrino', '99', '18013-460', '', 'Agendar Entrega', 'https://maps.app.goo.gl/yRPaeSk8atoJzPh86A'),
('1', 'Urban Fight Sorocaba', 'R. Antonio Aidar', 'Parque Três Meninos', '111 1° Andar', '18016-280', '15991580520', 'Seg. à Sexta das 9h às 20h | Sábado das 9h às 13', 'https://maps.app.goo.gl/ZM7kkb6PVWhxzw1f8'),
('1', 'Óticas Único - Campolim', 'Av. Antônio Carlos Comitre', 'Parque Campolim', '510', '18047-620', '15996002419', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 13h', 'https://maps.app.goo.gl/NQTzz4Qha7ynJajNA'),
('1', 'Petland Campolim Sorocaba', 'Avenida Antônio Carlos Cômitre', 'Parque Campolim', '1230', '18047-620', '15996126700', 'Seg. à Sábado das 8h às 18h', 'https://maps.app.goo.gl/KtFMyvfvmfoiPrgt7'),
('1', 'Feet Confort - Podologia', 'R. Antônio Perez Hernandez', 'Parque Campolim', '125', '18048-115', '15981120811', 'Seg. à Quinta das 9h30 às 19h | Sexta das 9h30 às 18h', 'https://maps.app.goo.gl/quvJHudvQz6JYX9X6'),
('1', 'ACUMED - Centro Clinico Veterinario Acumed', 'Rua Amador Bueno', 'Jardim Vergueiro', '116', '18030-105', '15991202212', 'Seg. à Sábado das 8h às 20h', 'https://maps.app.goo.gl/hHJy8cKNWt5ZQquz6'),
('1', 'Pet Shop Pan e Cia', 'R. Polônia', 'Jardim Europa', '139', '18045-010', '15981000633', 'Terça a Sábado das 8h às 17h', 'https://maps.app.goo.gl/ERYnLPM8DHujxpHD6'),
('1', 'Dpet Estética Animal - Banho e Tosa', 'R. Inglaterra', 'Jardim Europa', '645', '18045-070', '15996131222', 'Seg. à Sexta das 8h às 17h | Sábado das 8h às 13h', 'https://maps.app.goo.gl/4ctJjuHJhdgK864y5'),
('1', 'Studio Amanda Elias', 'R. Prof. Ovídio de Campos', 'Jardim Faculdade', '216', '18030-170', '15997182170', 'Terça à Sábado das 10h às 18h', 'https://maps.app.goo.gl/RZ64hjTYWGNXKoSU9'),
('1', 'Autelie', 'R. Paulo Antônio do Nascimento', 'Jardim Portal da Colina', '30', '18047-400', '15996888897', 'Seg. à Sábado das 9h às 20h', 'https://maps.app.goo.gl/teE2TemajGib9V3m9'),
('1', 'Instituto de Oncologia de Sorocaba', 'Av. Comendador Pereira Inácio', 'Jardim Vergueiro', '950', '18030-005', '1533343434', 'Seg. à Quinta das 8h às 19h | Sexta das 8h às 18h', 'https://maps.app.goo.gl/pNNjFCbhGY18zPhp8'),
('1', 'Conjunto Hospitalar de Sorocaba (CHS)', 'R. Claudio Manoel da Costa', 'Jardim Vergueiro', '271', '18030-083', '1533329100', 'Agendar Entrega', 'https://maps.app.goo.gl/PdcvJPHx8CypVBUq5'),
('1', 'PetShop Ibiti', 'Av. Victor Andrews', 'Zona Industrial', '700', '18086-390', '15991380880', 'Terça à Sexta das 9h às 18h', 'https://maps.app.goo.gl/JarofiLuCovMk3RN9'),
('1', 'Nutrimed - Ipanema', 'Av. Ipanema', 'Jardim Novo Horizonte', '4788', '18071-801', '15996814537', 'Seg. a Sábado das 8h às 20h | Domingos das 8h às 13h', 'https://maps.app.goo.gl/upJQYkfidwQTrzBPA'),
('1', 'Agropecuária Sampaio', 'Av. Independência', 'Éden', '5032', '18103-000', '15974042186', 'Seg. à sexta das 8h às 18h | Sábado das 8h às 16h', 'https://maps.app.goo.gl/wdn4KsjkQxxEL8kDA'),
('1', 'Grupo Escoteiro Terra Rasgada - 425/SP', 'Rua Bonifácio de Oliveira Cassú', 'Éden', 's/nº', '18103-100', '15974042186', 'Sábado das 8h30 às 12h30h', 'https://maps.app.goo.gl/GjU8iLPkno58xBbs8'),
('1', 'Diferencial Imóveis', 'R. Fernandes Camacho', 'Jardim Alvorada', '6', '18080-430', '1533427031', 'Atendimento: Seg. à Sexta das 9h às 16h | Sábado: 8h às 12h', 'https://maps.app.goo.gl/6zQS7yCLLujydkmPA'),
('1', 'Studio de Pilates Mariana Amorim', 'R. Bartolomeu Bueno', 'Jardim Ana Maria', '286 ', '18065-255', '15988078987', 'Seg. à Sexta das 7h às 21h | Sábado das 8h às 12h', 'https://maps.app.goo.gl/5zZuauAWeveRGTKo9'),
('1', 'Lilicão Moda Pet', 'Rua Benedito Mariano dos Santos', 'Éden', '999', '18103-210', '15991966021', 'Seg. à Sexta das 9h às 18h30 | Sábado das 9h às 18h', 'https://maps.app.goo.gl/krY4kzHB9XxdMGB2A'),
('1', 'Cerveja Los Gatos - Toca Los Gatos', 'R. Diadema', 'Jardim Leocadia', '500', '18085-330', '15996392427', 'Seg. à Sexta das 14h às 23h | Sábado: Das 11h às 23h', 'https://maps.app.goo.gl/zqDhiJaGYPpjEday5'),
('1', 'Cantinho Do Animal', 'R. Dr. Bezerra de Menezes', 'Jardim Maria do Carmo', '46', '18081-080', '1532112210', 'Seg. à Sexta das 8h às 17h | Sábado das 8h às 11h', 'https://maps.app.goo.gl/wjbN7yVHgSwpHe5v6'),
('1', 'Dom Pet Shop', 'Av. Dom Aguirre', 'Vila Progresso', '4555', '18081-101', '15998502996', 'Seg. à Sexta das 8h30 às 19h | Sábado das 8h30 às 18h', 'https://maps.app.goo.gl/HpH7QM3ujmmnvXJf9'),
('1', 'EM Tereza Ciambelli Gianini', 'Av. Rio Claro', 'Vila Nova Sorocaba', '278', ' 18070-790', '1532236386', 'Seg. à Sexta das 7h às 18h', 'https://maps.app.goo.gl/uYKNn9P2JXNjQHrt8'),
('1', 'Conibase Pisos- Sorocaba', 'Av. Ipanema', 'Jardim Novo Horizonte', '4398', '18071-801', '11974580939', 'Seg. à Sábado das 8h às 18h', 'https://maps.app.goo.gl/XakKk59gETAiQAW28'),
('1', 'Animavet', 'Av. Itavuvu', 'Jardim Santa Cecilia', '1558', '18075-330', '15991442762', 'Seg. à Sexta das 9h às 19h30 | Sábado das 9h às 15h', 'https://maps.app.goo.gl/DUcMGXXN56nBpbBA6'),
('1', 'Pet Shop Feliz Cão', 'Rua Benedicto de Paula', 'Jardim Santo Amaro', '120 ', '18074-684', '15997517271', 'Seg. à Sexta das 9h às 17h', 'https://maps.app.goo.gl/quwyPeAvYE4MDHv27'),
('1', 'Bazar Anjos de Patas', 'R. Raymundo Frutuoso da Silva', 'Jardim São Conrado', '860', '18076-280', '15996710757', 'Agendar Entrega', 'https://maps.app.goo.gl/eH4hTvz4o6GU8wKR8'),
('1', "Bella Athena Pet's", 'R. Antônio Piantore', 'Jardim Sao Guilherme', '144', '18074-638', '15997266709','Seg. à Sexta das 9h às 19h | Sábado das 9h às 18h', 'https://maps.app.goo.gl/fmUvY6rSFbhSqeaQ9'),
('1', 'Pet Store Sorocaba Banho e Tosa', 'Av. Edward Fru Fru Marciano da Silva', 'Jardim Sao Guilherme', '880', '18074-621', '15997315119', 'Seg. à Sexta das 9h às 18h| Sábado das 8h às 16h', 'https://maps.app.goo.gl/88DLgfch3ioJGhys8'),
('1', 'Pet Shop Amo Bicho', 'Av. Edward Fru Fru Marciano da Silva', 'Jardim Sao Guilherme', '361', '18074-621', '15991561333', 'Seg. à Sexta das 8h às 18h30 | Sábado das 8h às 17h | Domingo das 9h às 12h', 'https://maps.app.goo.gl/1s4BdwqpYUhKSMWJ9'),
('1', 'Studio Consciência do Corpo', 'R. Profa. Regina Maria Prestes Momesso', 'Jardim Siriema', '192', '18075-771', '1515991189790', 'Seg. à Sexta das 7h às 12h | 14h às 19h', 'https://maps.app.goo.gl/a7K3HYzmcoVkzDoy5'),
('1', 'Avicultura Família Nunes', 'R. Alcino Oliveira Rosa', 'Parque São Bento', '167', '18072-660', '15996429082', 'Seg. à Sexta das 9h às 18h | Sábado das 8h às 12h', 'https://maps.app.goo.gl/u8G6KJJ29uidQ43m9'),
('1', 'Casa de Ração Família Nunes', 'R. Salvador Falla', 'Parque São Bento', '23', '18072-392', '15991235743', ' Seg. à Sexta das 9h às 18h | Sábado das 8h às 12h', 'https://maps.app.goo.gl/MUM1SDUiWdNY1f2PA'),
('1', 'Amor em patinhas', 'R. Izidro Roque da Silva Telo', 'Parque São Bento', 's/nº', '18072-037', '15991920394', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 16h', 'https://maps.app.goo.gl/a3H5R28HxX3YQ6Xs6'),
('1', 'Comercial Multiuso', 'R. Olávo Bilac', 'Vila Santana', '161', '18080-691', '1532342268', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 16h', 'https://maps.app.goo.gl/mL7yZzbfJy8v4L349'),
('1', 'Banhacão', 'R. São Vicente', 'Vila Santa Rita', '265', '18080-010', '15998616519', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 15h30 | Fechado para almoço: 11h30 às 13h', 'https://maps.app.goo.gl/DbeSrYXPtFrWJkLe7'),
('1', 'Sagrado Pet', 'R. Sérgio Labarca', 'Jardim Santa Rosália', '13', '18095-590', '15996768883', 'Seg. à Sexta das 8h às 12h | 14h às 18h', 'https://maps.app.goo.gl/jYt7YvaLR91dG9NH6'),
('1', 'Be Brave Coffee and Tea | Cafeteria', 'R. Aparecida', 'Jardim Santa Rosália', '563', '18095-000', '15​998210579', 'Seg. à Seg. das 8h às 21h', 'https://maps.app.goo.gl/AaJxKS1sWgwWPWRB8'),
('1', 'Trujillo Aquatic Center', 'R. Profa. Irene Tienghi Púglia', 'Vila Trujillo', '54', '18060-580', '1532316873', 'Seg. à Sexta das 7h às 12h | 13h às 20h | Sábado das 8h às 14h', 'https://maps.app.goo.gl/tbVoQnyett6MgAid8'),
('1', 'Espaço Veterinário', 'Av. Brasil', 'Vila Carvalho', '931', '18060-105', '1532118703', 'Seg. à Sexta das 9H às 19h30 | Sábado das 9h às 17h', 'https://maps.app.goo.gl/Tg5xCTekRisSrXZT9'),
('1', 'Ferro Velho Bar', 'Av. Dr. Armando Sales de Oliveira', 'Vila Trujillo', '50', '18060-370', '15015997664906', 'Quarta a domingo das 17h30 às 23h', 'https://maps.app.goo.gl/wbtAfNxouryom3ak9'),
('1', 'Animalia Pet Store', 'R. Paes de Linhares', 'Vila Fiori', '123', '18075-630', '1532331347', 'Seg. à Sexta das 10h às 18h30 | Sábado das 9h às 15h30', 'https://maps.app.goo.gl/xeJC7douCRBpziw39'),
('1', 'Vida Pet', 'R. Belo Horizonte', 'Vila Helena', '1034', '18071-115', '15992621140', 'Seg. à Sexta das 9h às 19h | Sábado das 9h às 18h | Domingo das 9h às 13h', 'https://maps.app.goo.gl/s4xJp5rozYZQm8aC9'),
('1', 'Luau Banho e Tosa', 'R. Castilho Ariberti Fázio', 'Jardim Tupinamba', '24', '18066-315', '15998136720', 'Terça à Sábado das 10h às 18h', 'https://maps.app.goo.gl/swApUJvKYUXW17XB7'),
('1', 'Posto Shell - Ipanema', 'Av. Ipanema', 'Vila Carol', '419', '18070-671', 's/ nº', 'Seg. à Sábado das 8h às 19h', 'https://maps.app.goo.gl/zYgsjTk5WFauRqn26'),
('1', 'E.E. Sarah Salvestro', 'R. José Martinez Peres', 'Parque Vitoria Regia', '701', '18078-348', '1532261931', 'Seg. à Sexta das 7h às 20h', 'https://maps.app.goo.gl/CUg5HdEfc1cednfV6'),
('1', "Bia Agropet's", 'Rua Izaura Lima Bono', 'Parque Vitoria Regia', '145', '18078-380', '15991771937', 'Seg. à Sábado das 9h às 19h | Domingo das 9h às 13h', 'https://maps.app.goo.gl/V1uRVn4DnZbcu6iT8'),
('1', 'Orlando Smart', 'Rua Josefa Rúbio Bastida', 'Parque Vitoria Regia', '398', '18078-467', '15​988205456', 'Seg. à Sexta das 8h30 às 19h', 'https://maps.app.goo.gl/jj7gyACXDp51aair5'),
('1', 'Biblioteca Campus Sorocaba UFSCar', 'Rodovia João Leme dos Santos', 'Bairro do Itinga','264','18052-780', '1532295989', 'Agendar Entrega', 'https://maps.app.goo.gl/upXEwckpp7CYujmv6'),
('1', 'Avicultura Divino', 'Rua Dr. Luiz Mendes de Almeida', ' Vila Espirito Santo', '600', '18051-340', '15991181273', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 15h', 'https://maps.app.goo.gl/ezjakb8ksbQjEcxW6'),
('1', 'Pet Kiyomi (Pet Verden)', 'R. Dr. Osmar Maciel', 'Central Parque', '421', '18051-000', '15991365677', 'Seg. a Sáb. das 9h às 18h30 | Dom. e Feriados das 9h às 13h', 'https://maps.app.goo.gl/53xuc12P9oAHbBX99'),
('1', 'Central Gás e Água', 'R. José Tótora', 'Central Parque', '780', '18051-005', '15996827878', 'Seg. à Sexta das 8h às 19h | Sábado das 8h às 18h', 'https://maps.app.goo.gl/hsKXNq4GwJJ3F3N27'),
('1', 'DPet Estética Animal', 'R. Inglaterra', 'Jardim Europa', '654', '18045-070', '15996131222', 'Seg. à Sexta  das 8h às 17h | Sábado das 8h às 13h | Fechado domingos e feriados', 'https://maps.app.goo.gl/b8YQYTH3FUSL8t4s7'),
('1', 'Pan&Cia', 'R. Polônia', 'Jardim Europa', '139', '18045-010', '159981000633', 'Terça  à Sexta das 8h às 17h | Sábado das 7h às 12h', 'https://maps.app.goo.gl/9bcfnodYf4D95R347'),
('1', 'Agro Pet San Silva', 'R. Januário Caserta', 'Jardim Nova Manchester', '265', '18052-040', '1532021510>', 'Seg. à Sexta das 8h às 18h | Sábado 8h às 15h', 'https://maps.app.goo.gl/DEyUPRW9qnxP38248'),
('1', 'Cantina Faculdade Anhanguera - Sorocaba', 'Av. Dr. Armando Pannunzio', 'Jardim Itangua', '1478', '18050-000', '15991445262', 'Agendar Entrega', 'https://maps.app.goo.gl/gNP4z92FHfGLugbx7'),
('1', 'Casa Pet', 'R. Profa. Zélia Dulce de Campos Maia', 'Jardim Paulistano', '206', '18030-010', '1534423630', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 13h', 'https://maps.app.goo.gl/bhESedjuvTGrKy5W8'),
('1', 'Band FM Sorocaba', 'R. Clodomiro Paschoal', 'Jardim Paulistano', '118', '18040-740', '1532217555', 'Seg. à Sexta das 8h às 17h', 'https://maps.app.goo.gl/U6Z1RdbbW77Qq5wD6'),
('1', 'Zoolabor Diagnóstico Veterinário Sorocaba', 'R. Recife', 'Jardim Paulistano', '139', '18040-850', '1532026769', 'Seg. à Sexta das 8h20 às 11h50 | 12h50 às 17h50 | Sáb. das 8h às 12h', 'https://maps.app.goo.gl/cG8dzRrovvwrXFwu9'),
('1', 'Dom Brechó', 'R. Nilza Neves Zuliani', 'Jardim Santa Barbara', '26', '18053-367', '15991229497', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 14h', 'https://maps.app.goo.gl/zu6yEkpRe4AfVf4o8'),
('1', 'Grasifico Petshop - Banho e Tosa', 'Av. Getúlio Vargas', 'Jardim Sao Paulo', '55', '18051-480', '', 'Seg. à Sexta das 8h às 17h | Sábado das 8h às 16h', 'https://maps.app.goo.gl/M228Wf9hdeYTG7Za6'),
('1', 'Fran´s Café Confiança Sorocaba', 'Av. Dr. Armando Pannunzio', 'Jardim Sao Carlos', '1601', '18050-000', '', 'Todos os dias das 7h30 às 21h', 'https://maps.app.goo.gl/neFYDYms1N1m4kgY6'),
('1', 'Armazém dos Reis Loja Simus', 'Av. Dr. Américo Figueiredo', 'Jardim Simus', '158', '18055-131', '1534184885','Seg. à Sexta das 9h às 18h | Sábado das 9h às 13h', 'https://maps.app.goo.gl/SYewjyJSEb6P18jAA'),
('1', 'Dog & Cat Casa de Ração São Jorge', 'Av. Dr. Américo Figueiredo', 'Jardim Simus', '427', '18055-132', '15996821104', 'Seg. à Sábado das 9h às 18h', 'https://maps.app.goo.gl/QCuj3nxjDnhNYjtF8'),
('1', 'Loja Mayumi', 'R. Dr. Américo Figueiredo', 'Jardim Simus', '453', '18055-127', '1532222650', 'Seg. à Sexta das 9h às 19h | Sábado das 9h às 14h', 'https://maps.app.goo.gl/REAmG16QmxRZe5Yu6'),
('1', 'Pet Shop Simus', 'R. Dr. Américo Figueiredo', 'Jardim Simus', '1120', '18055-000', '1532028016', 'Seg. à Sexta das 8h às 19h | Sábado das 8h às 13h', 'https://maps.app.goo.gl/VNXKxDxpk9huuSXp9'),
('1', 'Mercearia Tia Angela', 'Alameda dos Miosótis', 'Jardim Simus', '163', '18055-220', '15997460450', 'Agendar Entrega', 'https://maps.app.goo.gl/vhDRuEe2d3t7gKAW9'),
('1', 'Togs Agropet', 'Alameda das Catleas', 'Jardim Simus', '175', '18055-177', '15992580477', 'Seg. à Sexta das 8h às 18h Sábado das 9h às 17h', 'https://maps.app.goo.gl/LGppggWWDZCJEmWz8'),
('1', 'Agro Binho', 'Av. Santa Cruz', 'Jardim Vera Cruz', '1857 Sala 1', '18050-260', '1534117850', 'Seg. à Sexta das 8h às 19h | Sábado das 8h às 13h', 'https://maps.app.goo.gl/fD8Qz6fiFPpXNiom7'),
('1', 'Óticas Occhiali', 'Av. Salvador Milego', 'Jardim Vera Cruz', '106', '18050-010', '15991037383', 'Seg. à Sexta das 9h às 18h | Sábado das 9h ás 13h', 'https://maps.app.goo.gl/9BVVcAe4x4cU8gDu8'),
('1', 'Casa de Ração Agro Show', 'Rua José Latorre', 'Jardim Vera Cruz', '17', '18050-210', '15996353781', 'Seg. á Sexta das 9h às 19h | Sábado das 9h às 18h', 'https://maps.app.goo.gl/TM8CLyhgA6CrzVgN9'),
('1', 'AgroMaciel', 'Av. Dr. Américo Figueiredo', 'Júlio de Mesquita Filho', '2960', '18053-000', '15996079023', 'Seg. à Sexta das 8h às 19h | Sábado das 8h às 17h', 'https://maps.app.goo.gl/7MYuhYHF7LCSEbjj8'),
('1', 'Distribuidora JMF Água Mineral', 'Carmem Miranda', 'Júlio de Mesquita Filho', '291', '18053-071', '15997512608', 'Seg. à Sexta das 9h às 17h', 'https://maps.app.goo.gl/GEjVndZCY5V24vqC9'),
('1', 'Daie Papelaria', 'R. Prof. Edemir Antônio Digiampietri', 'Júlio de Mesquita Filho', '21', '18053-130', '15997679879', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 14h', 'https://maps.app.goo.gl/xvNAjWqVcjMkEukMA'),
('1', 'Zoom Pet Store', 'R. Áureo Arruda', 'Júlio de Mesquita Filho', '67', '18053-100', '15997480261', 'Seg. à Sexta das 8h30 às 18h | Sábado das 9h às 15h', 'https://maps.app.goo.gl/t6LVyfjzWYiC93qT8'),
('1', 'Casa Da Esperanca', 'Rua Antonia Dias Petri', 'Parque Santa Isabel', '130', '18052-210', '15991175467', 'Segunda e Terça das 18h30 às 21h30', 'https://maps.app.goo.gl/Sgbw7xwkoSPupueV9'),
('1', 'Avicultura Banho e Tosa Pinheiro', 'R. Délcio Ferreira de Azevedo', 'Jardim Piazza Di Roma', '580 - Salao 04', '18053-813', '1530352175', 'Seg. à Sexta das 9h às 19h30 | Sábado das 9h às 18h | Domingo das 9h às 13h', 'https://maps.app.goo.gl/hDBwgGpAytnz8Nrb8'),
('1', 'Casa de Ração Barão', 'Av. Percito de Sousa Queiroz', 'Vila Barao', '873', '18061-240', '15998181299', 'Seg. à Sexta das 8h às 19h | Sábado das 8h às 15h', 'https://maps.app.goo.gl/SEtKfGjuyicp9QGb7'),
('1', 'Judô na Faixa JNF', 'Av. Percito de Sousa Queiroz', 'Vila Barao', '205', '18061-230', '15996735190', 'Seg. e Quar. das 9h às 11h, das 16h às 21h| Terças e Quintas das 9h às 11h, das 16h às 21h | Sexta das 17h às 21h', 'https://maps.app.goo.gl/t8zKVKN3L6KhETM36'),
('1', 'Dr. Coruja Pet Shop e Clínica Veterinária 24h', 'Rua Dr. Luiz Mendes de Almeida', 'Jardim Sao Paulo', '1783', '18051-290', '1532028498', 'Seg. à Sexta das 8h às 19h | Sábado das 8h às 17h', 'https://maps.app.goo.gl/beGgvkYgBdQ7bABo7'),
('1', 'Studio Biopilates', 'Rua Dr. Luiz Mendes de Almeida', 'Vila Espirito Santo', '587', '18051-340', '15998271125', 'Agendar Entrega', 'https://maps.app.goo.gl/3CLnTMEfSgM3u6YA9'),
('1', 'Instituto de Hemodiálise Sorocaba', 'R. Imperatriz Leopoldina', 'Vila Jardini', '57', '18044-010', '1532298790', 'Seg. à Sexta das 8h às 17h', 'https://maps.app.goo.gl/2JuyBXBrrVY9EJ9j9'),
('1', 'Brechó Segunda Chance', 'R. Visc. de Cairú', 'Vila Independencia', '544', '18040-335', '15997387859', 'Seg. à Sexta das 10h às 18h | Sábado das 10h às 14h', 'https://maps.app.goo.gl/EydMKK3husoG1jba9'),
('1', "Andrea's Hair", 'R. Francisco Ângelo', 'Vila Jardini', '223', '18044-300', '15997153329', 'Terça à Sexta das 9h às 18h | Sábado das 8h às 16h', 'https://maps.app.goo.gl/XbFApPeDtrHhhefh9'),
('1', 'CatDog Pet Store', 'R. Visc. do Rio Branco', 'Vila Jardini', '842', '18044-000', '15974033385', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 14h', 'https://maps.app.goo.gl/KB7Dy2zh129pZzfh7'),
('1', 'Edson Lanches Sorocaba', 'R. Visc. do Rio Branco', 'Vila Jardini', '1014', '18044-000', '15991425719', 'Terça à Sábado das 17h às 00h | Sábado das 17h às 23h', 'https://maps.app.goo.gl/paLtDC8YLS2GMxtg7'),
('1', 'Casa da Voluntária Rosana', 'Rua Garcia Redondo', 'Vila Independencia', '120', '18044-280', '', 'Agendar Entrega', 'https://maps.app.goo.gl/XM9kBetRx28guvYq6'),
('1', 'Loja Del San', 'R. Visc. do Rio Branco', 'Vila Jardini', '689', '18044-000', '1533180810', 'Seg. à Sexta das 10h às 18h | Sábado das 10h às 14h', 'https://maps.app.goo.gl/LigVGAi7aVjFVCpHA'),
('1', "Salão Piramide's", 'R. Barão de Cotegipe', 'Vila Leao', '601', '18040-420', '1532332760', 'Sexta e Sábado das 10h às 16h', 'https://maps.app.goo.gl/KhqDsXV4taWG5JPu5'),
('1', 'Duo Bem Saúde', 'R. Aníbal da Costa Dias', 'Vila Lucy', '122', '18043-020', '1535000533', 'Seg. à Sexta das 8h às 17h', 'https://maps.app.goo.gl/ajhLWcZGLgGQiy3Y8'),
('1', 'Luck Chic Boutique', 'Av. Paulo Emanuel de Almeida', 'Wanel Ville', '108', '18053-505', '1533269349', 'Seg. à Sexta das 10h às 18h | Sábado das 9h às 14h', 'https://maps.app.goo.gl/erTwGeho9wTYmiZq9'),
('1', 'Agro Maciel', 'Av. Elias Maluf', 'Wanel Ville', '2316', '18055-215', '15996079023', 'Seg. à Sexta das 8h às 19h | Sábado das 8h às 17h', 'https://maps.app.goo.gl/v82kpUsj5LzRBVMt9'),
('1', "Zeko's Beer", 'Av. Elias Maluf', 'Wanel Ville', '2050', '18055-215', '15998171865', 'Terça a sexta das 14h às 22h | Sábado das 10h às 22h', 'https://maps.app.goo.gl/XUGrmrGAs9vhwguz7'),
('1', 'Viva Vida Residencial', ' Otília Wey Pereira', 'Boa Vista', '250', '18085-842', '', 'Responsável: Ana Cláudia', 'https://maps.app.goo.gl/AVhA7dE6prrRpBZPA'),
('1', 'Condomínio Residencial São Judas 1', 'R. Giuseppina Cagliero', 'Central Parque Sorocaba', '71', '18051-020', '', 'Responsável: Sergio', 'https://maps.app.goo.gl/Zj2P2wpgqwrhebnX6'),
('1', 'Condomínio luzes do Campolim', 'R. Antônio Perez Hernandez', 'Parque Campolim', '705', ' 18048-115', '', '  Responsável: Erika', 'https://maps.app.goo.gl/kPcFBhiC3xi6wZ8BA'),
('1', 'Condomínio Portal da Raposo', ' Rod. Raposo Tavares', 'Recanto Ipanema do Meio', '108', '', '', ' Responsável: Maria Antônia', 'https://maps.app.goo.gl/djmXeShhoi1be6oQ9'),
('1', 'Condomínio Villa Di Treviso', 'Av. Gen. Carneiro', ' Jardim Americano', ' 2276', ' 18043-004', '', '  Responsável: Elisa', 'https://maps.app.goo.gl/cCQ3x3VDB3x5NCKH7'),
('1', 'Residencial Villa Bella', 'R. Lituânia', 'Jardim Europa', ' 560', ' 18045-520', '', ' Responsável: Ariadne', 'https://maps.app.goo.gl/ktgzfQUMziPSFdw27'),
('1', 'Residencial Giverny', 'Profa. Yolanda Berti Justi', 'Residencial Giverny', '260', '18048-254', '', 'Responsável: Rafael & Vinicius', 'https://maps.app.goo.gl/tT8XuVhpWvN4UQNY7'),
('1', 'Residencial Parque Sinfonia', 'R. Frederico Harder', 'Jardim Novo Mundo', '160', '18119-291', '', 'Responsável: Everton', 'https://maps.app.goo.gl/9ceFtpdMS3nqNndo8'),
('1', 'Condomínio Residencial Easy Life', 'R. Demercindo Alves da Silva', 'Jardim Piratininga', ' 42', '18016-085', '', 'Responsável: Andreia', 'https://maps.app.goo.gl/uNGzydgpPG5UTnCh7'),
('1', 'Condomínio Villagio di Lucca', '. Prof. Antônio Rodrigues Claro Sobrinho', ' Jardim Sao Carlos', '201', '18046-340', '', 'Responsável:  Aline', 'https://maps.app.goo.gl/hBEhu5Z3CP57H4yW8'),
('1', 'Residencial Villaggio Di Veneto', 'Av. Dr. Armando Pannunzio', 'Jardim Vera Cruz', '1700', ' 18050-000', '', ' Responsável: Renata', 'https://maps.app.goo.gl/tP9GLgqZSwNwPhVb7'),
('1', 'Pet Shop Armazém Nakasone - Mercado Municipal de Sorocaba', 'Praça Comendador Nicolau Scarpa', 'Centro', 's/ nº', '18035-011', '1532243845', 'Atendimento: Seg. à Sexta das 8h às 18h30 | Sábado das 8h às 14h', 'https://maps.app.goo.gl/wZJdyx97VRp9G2Ls8'),
('1', 'Óticas Precisão', 'R. da Penha', 'Centro', '693', '18010-002', '1532317781', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 13h', 'https://maps.app.goo.gl/fTwiTsczTS6SziQE9'),
('1', 'Sr Bicho Pet Shop', 'R. Santa Cruz', 'Centro', '72', '18035-630', '15996448601', 'Terça a Sexta das 13h às 18h | Sábado 9h às 15h', 'https://maps.app.goo.gl/MSSwJvKVv5EBTUR9A'),
('1', 'JF Lub Troca de Óleo', 'R. Comendador Hermelino Matarazzo', 'Vila Santa Rita', '287', '18080-971', '1533265283', 'Seg. à Sexta das  8h às 18h | Sábado das  8h às 12h', 'https://maps.app.goo.gl/68Wx6nFQdKdSsZFv7'),
('1', 'Sebo Sancel', 'R. Dom Antonio Alvarenga', 'Centro', '123', '18080-001', '15997704496', 'Seg. das 8h às 18h | Sábado das 8h às 13h', 'https://maps.app.goo.gl/z1PEHC7nkPnRBRiv9'),
('1', 'Vegan Heart', 'R. Dr. Ubaldino do Amaral', 'Centro', '249', '18010-040', '15997107187', 'Terça a Domingo das 18h às 22h30', 'https://maps.app.goo.gl/MiK4wLXYs6XrSmtz9'),
('1', 'Dudu e Edu Pet Store', 'R. Goiás', 'Centro', '106', '18035-550', '15991340074', 'Seg. das 12h30 às 18h30 | Terça à Sexta das 9h às 18h30 | Sábado das 8h às 17h30', 'https://maps.app.goo.gl/49gMVUxrZ9xsteGW6'),
('1', 'Majstra Formulações Veterinárias', 'R. Saldanha da Gama', 'Centro', '268', '18035-040', '1532333793', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 13h', 'https://maps.app.goo.gl/jGXatFU9viM7PWD88'),
('1', 'DPVAT  Regional Sorocaba', 'R. Claudio Manoel da Costa', 'Jardim Vergueiro', '386', '18030-083', '15991588276', 'Seg. à Quinta das 7h às 17h | Sexta das 7h às 17h', 'https://maps.app.goo.gl/F4yvk5JgZpvnB4Fi7'),
('1', 'ACUMED - Centro Clinico Veterinario Acumed', 'Rua Amador Bueno', 'Jardim Vergueiro', '116', '18030-105', '15991202212', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 12h', 'https://maps.app.goo.gl/eoxK9XWVQZ177y836'),
('1', 'CASA 382', 'R. Mato Grosso', ' Vila Santa Terezinha', '382', '18040-020', '', 'Seg. à Sexta das 8h às 17h', 'https://maps.app.goo.gl/G1UK8PgCP4aTSjLQ7'),
('1', 'Life Pet Shop Sorocaba', 'R. Antônio de Oliveira', 'Centro', '161', '18040-120', '15998102900', 'Terça a Sexta das 9h às 17h | Sábado das 9h às 14h', 'https://maps.app.goo.gl/WER56EMf3FsW68WH6'),
('2', 'Cartório de Votorantim Tabelião de Notas e de Protesto', 'R. Antônio Fernandes', 'Centro', '97', '18110-170', '1532432788', 'Seg. à Sexta das 9h às 17h', 'https://maps.app.goo.gl/EMafZBv6zjoMXE1H6'),
('2', 'Pet Shop Focinho Gelado em Votorantim', 'R. Antônio Walter', 'Centro', '63', '18110-025', '15996005761', 'Seg. à Sexta das 9h às 17h | Sábado das 9h às 13h', 'https://maps.app.goo.gl/3Ait5kcSb9kuNUMZ6'),
('2', 'Mundo Encantado Bebê Votorantim', 'Av. 31 de Março', 'Centro', '677', '18110-005', '15998155725', 'Seg. à Sexta das 9h às 17h30 | Sábado das 9h às 14h', 'https://maps.app.goo.gl/ARtjfsHy1QPjDqm36'),
('2', 'Anjos de Bigode - Creche para Cachorro Votorantim', 'R. Monte Alegre', 'Centro', '518', '18110-065', '15991547442', 'Terça a quinta das 8h às 18h | Sexta das 8h às 17h | Sábado das 9h às 14h', 'https://maps.app.goo.gl/hLnfUdWsqx1HeYXa8'),
('2', 'Auto Center Votorantim', 'R. Levante Santucci', 'Vila Santo Antonio', '318', '18115-650', '1530198973', 'Seg. à Sexta das 8h às 12h | 13h às 19h', 'https://maps.app.goo.gl/7uZV3U8dkRsTZFya8'),
('2', 'CEAVO - LTDA Atacadista Hortifruti Grangeiro Votorantim', 'Estrada Municipal', 'Jardim Tatiana', '150', '18119-210', '1533431227', 'Terça, Quinta e Sábado das 13h às 16h', 'https://maps.app.goo.gl/fpUrBmGMkmd4VwhJ6'),
('2', 'Encanta Pet Votorantim', 'Av. Matheus Conegero', 'Parque Bela Vista', '160', '18110-570', '15997143371', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 13h', 'https://maps.app.goo.gl/Ep2pt2pxXzoFQdN18'),
('2', 'Pet Amigo Votorantim', 'Av. Matheus Conegero', 'Parque Bela Vista', '408', '18110-570', '1532471393', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 13h', 'https://maps.app.goo.gl/z3JBeYHmF4C5hn3NA'),
('2', 'Pró Ovos Distribuidora de Alimentos Votorantim', 'Rua Américo Maschetto', 'Pró-Morar', '207', '18113-660', '15998578515', 'Seg. à Sábado das 8h30 às 18h', 'https://maps.app.goo.gl/FHrHBQd3vFxYQ9dN6'),
('2', 'Agro Silva', 'R. Santa Filomena,', 'Rio Acima, Votorantim', '600', '18111-325', '15991829090', 'Seg. à Sexta das 9h às 19h | Sábado das 9h às 14h', 'https://maps.app.goo.gl/yRsXcani1gr1yGAV8'),
('2', 'Agropet alvorada', 'Av. Octávio Augusto Rangel,', 'Jardim Toledo, Votorantim ', '869', '18112-055', '1532434183', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 13h', 'https://maps.app.goo.gl/x5SpHYVhhNqW3NPX8'),
('2', 'Tropa Q Late', 'R. Antônio Campos Filho', 'Vila Dominguinho, Votorantim', ',235', '18114-160', '15998259480', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 14h', 'https://maps.app.goo.gl/CYYbnzq4yh9BtMnP7'),
('2', 'Condomínio Alpha Club', 'Av. Gisele Constantino', 'Parque Bela Vista', ' 430', ' 18110-650', '', ' Responsável: Portaria', 'https://maps.app.goo.gl/PBLad8YvPrjeDxfp8'),
('2', 'Condomínio Residencial Parque Esplanada', 'R. João Batista Correia Oliveira', 'Vossoroca,', '105', ' 18110-702', '', ' Responsável: Paula', 'https://maps.app.goo.gl/JPYYGP9CAu16ronm6'),
('2', 'Villa Flora Residencial', ' Rod. João Leme dos Santos', 'Villa Flora ', '443', ', 18119-001', '', 'Responsável:  Rafael & Vinicius', 'https://maps.app.goo.gl/nP5Hv1PdFwUMR5AVA'),
('3', 'Condomínio Residencial Aquarius', 'Araçoiaba da Serra', 'Residencial Aquarius', '', ' 18190-000', '', ' Responsável: CHRIS', 'https://maps.app.goo.gl/xkBDk4uYf5ftyYdz6'),
('3', 'Jessica Rolim Nail Designer Esmalteria', 'R. 21 de Abril', 'Centro, Araçoiaba da Serra', '155', ' 18190-000', '11947130299', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 14h', 'https://maps.app.goo.gl/8P44RNf6x38CKwU37'),
('3', 'Mel Pet Estética Animal', 'Avenida Ministro Antônio Vieira', 'Jardim Nossa Sra. Salete, Araçoiaba da Serra', '366', '18190-000', '15996776713', 'Seg. à Sexta das 8h30 às 17h | Sábado das 8h às 14h', 'https://maps.app.goo.gl/AZ73pBmucVSo51Zo9'),
('3', 'Adega do Wilsinho', 'Av. Manoel Machado de Oliveira', 'Jd M da Glória, Araçoiaba da Serra', '560', ' 18190-000', '15996260050', 'Seg. à Sexta das 10h às 17h | Sábado das 10h às 13h', 'https://maps.app.goo.gl/R7PeY8j7xumiPXkDA'),
('4', 'Agropecuária BoituRaça', 'R. José Vitiello', 'Centro, Boituva', '191', ' 18550-000', '15997124321', 'Seg. à Sexta das 10h às 18h | Sábado das 8h às 17h', 'https://maps.app.goo.gl/wQNpkxHoPFWcECcs6'),
('4', 'Pet Mania de Bicho', 'Vila Ginasial', 'Boituva - SP', '114', '18550-000', '1532634184', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 16h', 'https://maps.app.goo.gl/FMBNocYEPiFtVMQg8'),
('4', 'Agro terra', 'Rua Manoel dos Santos Freire', ' Centro, Boituva', '338', ' 18550-000', '1532687069', 'Seg. à Sexta das 8h às 18h30 | Sábado das 8h às 13h | Domingo das 7h às 12h', 'https://maps.app.goo.gl/nih182esyeXf2qk67'),
('4', 'Centro de Treinamento Primatas', 'R. dos Lavradores', 'Centro, Boituva ', '42', '18550-000', '15998716186>', 'Seg. à Sexta das 6h às 20h', 'https://maps.app.goo.gl/TBctyPTQSDg855dS6'),
('4', 'Gelat Sorvetes', 'R. Expedicionário Boituvense', ' AA, Boituva', '73', '18550-000', '15996301530', 'Dom. à Dom das 10h às 20h', 'https://maps.app.goo.gl/jU63AjZQoE2NTphX6'),
('4', 'Agropecuária Bueno', 'R. Profa. Célia Lourdes Vercelino', 'Jardim Santa Cruz, Boituva', '420', ' 18550-000', '1532633434', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 16h', 'https://maps.app.goo.gl/WePtX8r3JfohKcH47'),
('4', 'Agro Portal - Agropecuária', 'Rua Zélia de Lima Rosa', 'CA3 Portal dos Passaros 2, Boituva', '1010', '18552-320', '15981799798', 'Seg. à Sexta das 8h30 às 19h | Sábado das 8h30 às 17h | Domingo das 8h30 às 13h', 'https://maps.app.goo.gl/KgwfjYKSW2awr2qx5'),
('4', 'AGROPESCA FORT', 'R. Scandar Eid', 'Jd Maria Paulina, Boituva', '20', '18550-000', '15996870315', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 16h', 'https://maps.app.goo.gl/m3Y56rcpkihZtzYU7'),
('4', 'AGRO PET da JU - agropecuária e petshop', 'Av. Brasil', 'Residencial Esplanada, Boituva', '711', ' 18557-646', '15991460157', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 12h', 'https://maps.app.goo.gl/xGmooUK7RQcFWqww8'),
('4', 'Casa de Rações 2 Irmãos', 'R. Profa. Célia Lourdes Vercelino', 'Jardim Santa Cruz, Boituva', '685', ' 18557-020', '15996816355', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 14h', 'https://maps.app.goo.gl/4WequDmVFYGPAX8P7'),
('4', 'Agropecuária Júnior', 'R. Cel. Eugênio Motta', 'Vila Ferrielo', '789', ',18550-000', '1532632672 ', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 14h', 'https://maps.app.goo.gl/b5xhtMe1wESeS8Qr9'),
('4', 'Opt Óculos', 'R. Cel. Eugênio Motta', 'Vila Ferriello, Boituva', '402', '18550-000', '15991573079', 'Agendar Entrega', 'https://maps.app.goo.gl/QjWDdFPwd8uHV4H3A'),
('5', 'Casa da Voluntária Simone', 'R. Ben Hur Camacho Júnior', 'Portal do Éden', '107', '13308-510', '', 'Agendar Entrega', 'https://maps.app.goo.gl/gqMEyMQNqbFTXpMCA'),
('5', 'Clinica Veterinaria Malucão', 'R. Demétrio Ligote Blackman', 'Jardim do Estadio', '45', '13309-301', '1140250212', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 12h', 'https://maps.app.goo.gl/CewU8wZhEwLjKSj57'),
('6', 'Academia Open Trainer', 'R. Padre Palma', 'Centro', '109', '18170-000', '', 'Seg. à Sexta das 14h30 às 20h30', 'https://maps.app.goo.gl/T5K7i6hinP3kja9s7'),
('6', 'Pesqueiro do Marcelo', 'Estrada dos lavradores Gurgel', '', '', '18170-000', '15997415222', 'Agendar Entrega', 'https://maps.app.goo.gl/KNGZYXXjSRPGhfZv9'),
('6', 'Chácara Roseira Piedade', 'Rod. José de Carvalho', 'Roseira', '', '18170-000', '15991236122', 'Agendar Entrega', 'https://maps.app.goo.gl/9ih5g5Vno54yBjzY7'),
('6', 'Escola Clementino Vieira Cordeiro', '', 'Jurupara', '', '18170-000', '1533446142', 'Agendar Entrega', 'https://maps.app.goo.gl/gsAn8pYyAKpa2R2t8'),
('6', 'Agropecuária São José', 'R. Saladino de Araújo Leite', 'Vila Olinda', '620', '18170-000', '15998470004', 'Seg. à Sábado das 8h às 18h', 'https://maps.app.goo.gl/fX3SGswMY2eAssZM7'),
('7', 'AgroVet', 'R. Honório de Almeida Barros', 'Terras de São João', '585', '18160-000', '1532921542', 'Seg. à Sábado das 8h às 18h', 'https://maps.app.goo.gl/KScShrFsLnetU2WU7'),
('7', 'Atacadão de Sorvetes Urla Urla', 'Av. Carlos Chagas', 'Jardim Primavera', '162', '18160-000', '15981031072', 'Agendar Entrega', 'https://maps.app.goo.gl/DucDgJEqePQ6XPBE9'),
('7', 'Padaria JukasPan II', 'Rua João Leme dos Santos', 'Jardim Primavera', '273', '18162-080', '15997064997', 'Dom. à Dom. das 6h30 às 20h', 'https://maps.app.goo.gl/JfnAJbyBLb68nS2KA'),
('7', 'Elizete Modas e Acessórios', 'R. Silvio Pissinato', 'Jardim Silva Barros', '159', '18160-000', '', '', 'https://maps.app.goo.gl/jVebxaFZcZjJA2is7'),
('7', 'Quitanda Paulo e Néia', 'R. Virgílio Cerione', 'Jardim Silva Barros', '379', '18160-000', '', '', 'https://maps.app.goo.gl/sm3FV6vtkkRbP6bF9'),
('7', 'Mariana Presentes e Acessórios', 'Rua Benedito Shuermam de Barros', 'Jardim América', '376', '18160-000', '', 'Agendar Entrega', 'https://maps.app.goo.gl/SPsU27GgtpCHnjZA6'),
('7', 'Rosângela Manicure', 'Rua Salvador Leme dos Santos', 'Jardim Maria Clara', '269', '18160-000', '', 'Agendar Entrega', 'https://maps.app.goo.gl/9kkhZutPm5tnoYpz9'),
('7', 'Mercado Esperança', 'Rua Paulo dos Santos Guilherme', 'Jardim Maria Clara', '256', '18160-000', '', 'Agendar Entrega', 'https://maps.app.goo.gl/cLZAM822XKFZJ5vB6'),
('7', 'Aqui Tem Mais Almodovar', 'Rua Eugênio dos Santos Seabra', 'Jardim Paulistano', '121', '18160-000', '1532923936', 'Seg. à Sexta das 8h às 18h | Sábado das 8h às 16h', 'https://maps.app.goo.gl/JkN9ZS75Vb6fMeMMA'),
('7', 'AgroPet Mundo Animal', 'Rua Gonçalo Correa', 'Jardim Paulistano', '335', '18160-000', '15996578326', 'Agendar Entrega', 'https://maps.app.goo.gl/RzCe9eTJ9H6Laudq7'),
('7', 'Tikos Pastel', 'Rua Waldomiro de Almeida Barros', 'Jardim Silva Barros', '62', '18160-000', '1599630071', 'Ter. à Domingo das 18h às 23h30', 'https://maps.app.goo.gl/siQyNTE5JPQsrxxg9'),
('7', 'Sorveteria Baby Mel fascinatto', 'Rua Pedro Pire', 'Campo Largo', '729', '18160-000', '15996551007', 'Dom. à Domingo das 11h às 22h', 'https://maps.app.goo.gl/6ADa49kGNFR9w4nL7'),
('7', 'Armarinhos Colcha de Retalhos', 'Av. Pedro Pires de Melo', 'Campo Largo', '46', '18160-000', '15997103697', 'Seg. à Sexta das 9h às 18h | Sábado das 9h às 14h', 'https://maps.app.goo.gl/R9hPBYkonyQbEqQa7'),
('7', 'AgroCampos', 'Praça João Guimarães', 'Campo Largo', '81', '18160-000', '15997755711', 'Seg. à Sábado das 8h às 18h', 'https://maps.app.goo.gl/CPWDMPuN6BdMkqjy5'),
('7', 'Salão Rei do Corte', 'Rua Ovídio Leme dos Santos', 'Vila Santa Isabel', '45', '18160-000', '1515997385327', 'Agendar Entrega', 'https://maps.app.goo.gl/AgwaWHh1GnupokQf6'),
('7', 'Mercearia da Cleide', 'Rua Oito', 'Piraporinha', '35', '13323-360', '15997353048', 'Agendar Entrega', 'https://maps.app.goo.gl/QPH7DJ5cNw4mv6t58'),
('7', 'Agro Arcanjo', 'Av. Vicente Leme dos Santos Sobrado', 'Ana Guilherme', '593', '18160-000', '15997763001', 'Seg. à Sábado das 8h às 18h', 'https://maps.app.goo.gl/HrHh8saKPRzQG9hHA'),
('8', 'PetHouse Casa de Ração', 'Rua Tomás Antonio Gonzaga', 'Paisagem Colonial', '62', '18136-700', '11978639191', 'Seg. à Sexta das 8h às 19h | Sábado das 8h às 18h', 'https://maps.app.goo.gl/3GR3a86MZCBie1vt9'),
('9', 'Clínica Veterinária ESPECIVETA', 'Rua Carlos Orsi Filho', 'Jardim Santa Rita', '299', '18274-290', '15996702626', 'Seg. Terça e Sexta das 9h às 22h | Quarta das 9h às 19h | Quinta das 9h às 17h', 'https://maps.app.goo.gl/ZKBztUKZuFi84P1D7');

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;