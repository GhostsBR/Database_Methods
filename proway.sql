-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Abr-2021 às 22:01
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `proway`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `birth` varchar(100) DEFAULT NULL,
  `cpf` varchar(15) NOT NULL,
  `height` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `fullname`, `birth`, `cpf`, `height`) VALUES
(3, 'Carlos', '10/10/2020', '111.111.111-11', 1.7),
(4, 'Thiago', '11/11/2021', '222.222.222-22', 1.74),
(6, 'Antonio Cesar', '10/05/2020', '222.222.222-11', 1.1),
(8, 'Antonio Cesar', '10/05/2020', '773.354.851-93', 1.1),
(12, 'Antonio Cesar', '10/05/2020', '929.699.971-50', 1.1),
(13, 'Antonio Cesar', '10/05/2020', '568.224.198-37', 1.1),
(14, 'Antonio Cesar', '10/05/2020', '562.700.533-58', 1.1),
(15, 'Antonio Cesar', '10/05/2020', '740.898.497-64', 1.1),
(16, 'Antonio Cesar', '10/05/2020', '612.850.947-94', 1.1),
(17, 'Antonio Cesar', '10/05/2020', '432.016.275-77', 1.1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_un` (`cpf`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
