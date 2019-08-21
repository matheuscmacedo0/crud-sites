-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Ago-2019 às 02:13
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `crud`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `sites`
--

CREATE TABLE `sites` (
  `id` int(3) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `url_site` varchar(255) NOT NULL,
  `url_admin` varchar(255) NOT NULL,
  `user_admin` varchar(255) NOT NULL,
  `pass_admin` varchar(255) NOT NULL,
  `url_ftp` varchar(255) NOT NULL,
  `user_ftp` varchar(255) NOT NULL,
  `pass_ftp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sites`
--

INSERT INTO `sites` (`id`, `nome`, `url_site`, `url_admin`, `user_admin`, `pass_admin`, `url_ftp`, `user_ftp`, `pass_ftp`) VALUES
(1, 'aaaa', 'aaaaaaaa', 'aaaaaaaaa', 'aaaaaaaaa', 'aaaaaaaaa', 'aaaaaaaaaaaa', 'aaaaaaaaa', 'aaaaaaaaaa');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
