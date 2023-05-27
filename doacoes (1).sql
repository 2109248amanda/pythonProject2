-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/05/2023 às 21:28
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `doacoes`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `nome` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cadastro`
--

INSERT INTO `cadastro` (`nome`, `email`, `telefone`, `id`) VALUES
('amanda', 'millenacamargopires@', 'cjishihfhfr', 1),
('andre', 'millenacamargop@gmai', 'cjishihfhfr', 2),
('andrehhh', 'millenacamargop@gmai', 'cjishihfhfr', 3),
('amanda', 'millenacamargopires@', 'cjishihfhfr', 4),
('amanda camargo', 'amandac.pires@gmail.', '19999999', 5),
('amanda', 'amandac.pires@gmail.', '19999999', 6),
('amanda', 'amandac.pires@gmail.', '19999999', 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `quero_doar`
--

CREATE TABLE `quero_doar` (
  `id` int(11) NOT NULL,
  `roupas_e_calcados_infantil` varchar(20) NOT NULL,
  `roupas_e_calcados_adulto` varchar(20) NOT NULL,
  `alimentos` varchar(20) NOT NULL,
  `moveis_usados` varchar(20) NOT NULL,
  `medicamentos` varchar(20) NOT NULL,
  `produtos_em_geral` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `quero_doar`
--

INSERT INTO `quero_doar` (`id`, `roupas_e_calcados_infantil`, `roupas_e_calcados_adulto`, `alimentos`, `moveis_usados`, `medicamentos`, `produtos_em_geral`) VALUES
(1, 'roupa infantil', 'roupa adulto', 'alimentos', 'moveis', 'medicamentos', 'on'),
(2, '', '', '', 'moveis', '', 'produtos gerias'),
(3, 'roupa infantil', '', '', '', '', ''),
(4, 'roupa infantil', 'roupa adulto', '', 'moveis', '', ''),
(5, '', 'roupa adulto', '', 'moveis', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `quero_receber`
--

CREATE TABLE `quero_receber` (
  `id` int(11) NOT NULL,
  `roupas_e_calcados_infantil` varchar(20) NOT NULL,
  `roupas_e_calcados_adulto` varchar(20) NOT NULL,
  `alimentos` varchar(20) NOT NULL,
  `moveis_usados` varchar(20) NOT NULL,
  `medicamentos` varchar(20) NOT NULL,
  `produtos_em_geral` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `quero_receber`
--

INSERT INTO `quero_receber` (`id`, `roupas_e_calcados_infantil`, `roupas_e_calcados_adulto`, `alimentos`, `moveis_usados`, `medicamentos`, `produtos_em_geral`) VALUES
(1, 'roupa infantil', '', 'alimentos', '', '', ''),
(2, 'roupa infantil', '', 'alimentos', 'medicamentos', '', 'produtos gerais'),
(3, 'roupa infantil', '', 'alimentos', 'medicamentos', '', 'produtos gerais'),
(4, 'roupa infantil', 'roupa adulto', 'alimentos', '', 'medicamentos', 'produtos gerais'),
(5, 'roupa infantil', 'roupa adulto', 'alimentos', 'moveis', 'medicamentos', 'produtos gerais'),
(6, '', '', 'alimentos', '', '', ''),
(7, 'roupa infantil', 'roupa adulto', '', '', '', ''),
(8, '', '', '', '', '', 'produtos gerais'),
(9, 'roupa infantil', 'roupa adulto', '', '', '', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `quero_doar`
--
ALTER TABLE `quero_doar`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `quero_receber`
--
ALTER TABLE `quero_receber`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `quero_doar`
--
ALTER TABLE `quero_doar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `quero_receber`
--
ALTER TABLE `quero_receber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
