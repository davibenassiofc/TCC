-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Nov-2022 às 20:10
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bot`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `queries` varchar(300) DEFAULT NULL,
  `replies` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `chatbot`
--

INSERT INTO `chatbot` (`id`, `queries`, `replies`) VALUES
(1, 'bom dia', 'Bom dia!'),
(2, 'boa tarde', 'Boa tarde!'),
(3, 'ola', 'Olá'),
(4, '1', 'Consulte o site \"http://localhost/FM/user/forgot-password.php\" para recuperar sua senha!'),
(5, 'esqueci minha senha', 'Consulte o site \"http://localhost/FM/user/forgot-password.php\" para recuperar sua senha!'),
(6, '2', 'Entre já em contato com nosso administrador pelo email futuremaker@fmk.org!!!'),
(7, 'meus dados estao errados', 'Entre já em contato com nosso administrador pelo email futuremaker@fmk.org!!!'),
(8, '3', 'Tente conectar novamente mais tarde! Nossa equipe já está trabalhando nisso'),
(9, 'nao consigo conectar', 'Tente conectar novamente mais tarde! Nossa equipe já está trabalhando nisso');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
