-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 20-Out-2022 às 18:13
-- Versão do servidor: 8.0.27
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `copa`
--
CREATE DATABASE IF NOT EXISTS `copa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `copa`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `senha` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `nome`, `email`, `senha`) VALUES
(2, 'teste', 'user@example.com', 'teste');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Telefone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fasecopa`
--

DROP TABLE IF EXISTS `fasecopa`;
CREATE TABLE IF NOT EXISTS `fasecopa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `fasecopa`
--

INSERT INTO `fasecopa` (`id`, `nome`) VALUES
(1, 'grupos'),
(2, 'oitavas'),
(3, 'quartas'),
(4, 'semi'),
(5, 'final');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogos`
--

DROP TABLE IF EXISTS `jogos`;
CREATE TABLE IF NOT EXISTS `jogos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `SelecaoAId` int NOT NULL,
  `SelecaoBId` int NOT NULL,
  `GolSelecaoA` int NOT NULL,
  `GolSelecaoB` int NOT NULL,
  `FaseCopaId` int NOT NULL,
  `InicioJogo` datetime(6) NOT NULL,
  `FimJogo` datetime(6) NOT NULL,
  `TempoAtual` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_jogos_FaseCopaId` (`FaseCopaId`),
  KEY `IX_jogos_SelecaoAId` (`SelecaoAId`),
  KEY `IX_jogos_SelecaoBId` (`SelecaoBId`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `jogos`
--

INSERT INTO `jogos` (`id`, `SelecaoAId`, `SelecaoBId`, `GolSelecaoA`, `GolSelecaoB`, `FaseCopaId`, `InicioJogo`, `FimJogo`, `TempoAtual`) VALUES
(1, 1, 2, 1, 1, 1, '2022-10-19 23:18:46.504000', '2022-10-19 23:18:46.504000', '2022-10-19 23:18:46.504000'),
(2, 5, 6, 2, 0, 1, '2022-10-20 17:34:56.626000', '2022-10-20 17:34:56.626000', '2022-10-20 17:34:56.626000'),
(3, 3, 7, 2, 2, 1, '2022-10-20 17:34:56.626000', '2022-10-20 17:34:56.626000', '2022-10-20 17:34:56.626000'),
(4, 8, 10, 3, 2, 1, '2022-10-20 17:34:56.626000', '2022-10-20 17:34:56.626000', '2022-10-20 17:34:56.626000'),
(5, 11, 12, 1, 2, 1, '2022-10-20 17:34:56.626000', '2022-10-20 17:34:56.626000', '2022-10-20 17:34:56.626000'),
(6, 11, 12, 1, 2, 2, '2022-10-20 17:34:56.626000', '2022-10-20 17:34:56.626000', '2022-10-20 17:34:56.626000'),
(7, 1, 12, 3, 2, 2, '2022-10-20 17:34:56.626000', '2022-10-20 17:34:56.626000', '2022-10-20 17:34:56.626000'),
(8, 1, 4, 3, 3, 3, '2022-10-20 17:34:56.626000', '2022-10-20 17:34:56.626000', '2022-10-20 17:34:56.626000'),
(9, 2, 4, 3, 3, 3, '2022-10-20 17:34:56.626000', '2022-10-20 17:34:56.626000', '2022-10-20 17:34:56.626000'),
(10, 2, 5, 3, 4, 4, '2022-10-20 17:34:56.626000', '2022-10-20 17:34:56.626000', '2022-10-20 17:34:56.626000'),
(11, 2, 5, 7, 4, 5, '2022-10-20 17:34:56.626000', '2022-10-20 17:34:56.626000', '2022-10-20 17:34:56.626000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `selecao`
--

DROP TABLE IF EXISTS `selecao`;
CREATE TABLE IF NOT EXISTS `selecao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descricao` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `bandeira` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `selecao`
--

INSERT INTO `selecao` (`id`, `nome`, `descricao`, `bandeira`) VALUES
(1, 'Brasil', 'seleção america do sul', 'teste'),
(2, 'Argentina', 'seleção america do sul', 'teste'),
(3, 'Paraguai', 'seleção da américa do sul', 'teste'),
(4, 'Uruguai', 'seleção da américa do sul', 'teste'),
(5, 'Alemanha', 'seleção da europa', 'teste'),
(6, 'Italia', 'seleção da europa', 'teste'),
(7, 'Estados Unidos', 'seleção da america do norte', 'teste'),
(8, 'Canada', 'seleção da america do norte', 'teste'),
(9, 'japão', 'seleção da asia', 'teste'),
(10, 'senegal', 'seleção da africa', 'teste'),
(11, 'australia', 'seleção da australia', 'teste'),
(12, 'inglaterra', 'seleção da europa', 'teste');

-- --------------------------------------------------------

--
-- Estrutura da tabela `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
CREATE TABLE IF NOT EXISTS `__efmigrationshistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20221019064117_clientes', '5.0.17'),
('20221019151240_FaseCopa', '5.0.17'),
('20221019151301_Selecao', '5.0.17'),
('20221019151314_Admin', '5.0.17'),
('20221019151351_Jogo', '5.0.17');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
