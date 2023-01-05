-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Nov-2022 às 20:09
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
-- Banco de dados: `studentmsdb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 984178840, 'admin@gmail.com', '4aa606997465fd6fc4e825ff8695fcdf', '2019-10-11 04:36:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblclass`
--

CREATE TABLE `tblclass` (
  `ID` int(5) NOT NULL,
  `ClassName` varchar(50) DEFAULT NULL,
  `Section` varchar(20) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblclass`
--

INSERT INTO `tblclass` (`ID`, `ClassName`, `Section`, `CreationDate`) VALUES
(21, 'Engenharia da Computação', 'A', '2022-11-10 23:45:09'),
(22, 'Engenharia da Computação', 'B', '2022-11-10 23:45:31'),
(23, 'Engenharia da Computação', 'C', '2022-11-10 23:45:45'),
(24, 'Redes de Computador', 'A', '2022-11-10 23:47:29'),
(25, 'Redes de Computador', 'B', '2022-11-10 23:47:35'),
(26, 'Redes de Computador', 'C', '2022-11-10 23:47:40'),
(27, 'Sistemas de Informações', 'A', '2022-11-10 23:49:21'),
(28, 'Sistemas de Informações', 'B', '2022-11-10 23:49:25'),
(29, 'Sistemas de Informações', 'C', '2022-11-10 23:49:31'),
(30, 'Desenvolvimento de Sistemas', 'A', '2022-11-10 23:50:31'),
(31, 'Desenvolvimento de Sistemas', 'B', '2022-11-10 23:50:35'),
(32, 'Desenvolvimento de Sistemas', 'C', '2022-11-10 23:50:43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblnotice`
--

CREATE TABLE `tblnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` mediumtext DEFAULT NULL,
  `ClassId` int(10) DEFAULT NULL,
  `NoticeMsg` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblnotice`
--

INSERT INTO `tblnotice` (`ID`, `NoticeTitle`, `ClassId`, `NoticeMsg`, `CreationDate`) VALUES
(6, 'Prova Primeiro Bimestre', 12, 'Façam neste link: cpbprova.com.br', '2022-10-26 03:22:03'),
(7, 'Levem Lanche no Dia 03/11', 12, 'Faremos um lanche no dia mencionado acima!!!', '2022-10-26 03:24:26'),
(8, 'Tarefa para dia 19/10', 21, 'Tarefa de Engenharia - Monte seu próprio computador com apenas dois reais!!!', '2022-11-10 23:57:02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'Sobre Nós:', '<div style=\"text-align: center;\"><font color=\"#7b8898\"><span style=\"font-size: 26px;\">Aqui no FUTURE MAKER, através das aulas e dos conteúdos abordados, você terá uma base teórica sólida para colocar em práticas seus conhecimentos através das atividades extracurriculares, oficinas, laboratórios e projetos acadêmicos.Tanto no mercado de trabalho quanto na vida pessoal, é importante desenvolver valores, relacionamento interpessoal, inteligência emocional e outras qualidades que não são aprendidas apenas nos livros. Aqui buscamos formar nossos alunos de maneira integral, motivando-os a aprimorar a mente e caráter.</span></font><br></div>', NULL, NULL, NULL),
(2, 'contactus', 'Contato', 'Rua Roma, Jardim Residencial Firenze, Casa 196 Hortolândia-SP', 'friendmaker@hotmail.com', 984178840, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblpublicnotice`
--

CREATE TABLE `tblpublicnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` varchar(200) DEFAULT NULL,
  `NoticeMessage` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblpublicnotice`
--

INSERT INTO `tblpublicnotice` (`ID`, `NoticeTitle`, `NoticeMessage`, `CreationDate`) VALUES
(4, 'Feriado dia 14 à dia 15 de novembro', 'Não teremos aulas nos dias acima por conta do feriado no dia 15!!!', '2022-11-10 23:58:20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblstudent`
--

CREATE TABLE `tblstudent` (
  `ID` int(10) NOT NULL,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentEmail` varchar(200) DEFAULT NULL,
  `StudentClass` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `StuID` varchar(200) DEFAULT NULL,
  `FatherName` mediumtext DEFAULT NULL,
  `MotherName` mediumtext DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `AltenateNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `DateofAdmission` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblstudent`
--

INSERT INTO `tblstudent` (`ID`, `StudentName`, `StudentEmail`, `StudentClass`, `Gender`, `DOB`, `StuID`, `FatherName`, `MotherName`, `ContactNumber`, `AltenateNumber`, `Address`, `UserName`, `Password`, `Image`, `DateofAdmission`) VALUES
(7, 'Carlos Eduardo Lopes Machado', 'carlos@gmail.com', '21', 'Male', '2005-02-10', '0001', 'Roberto', 'Cristiane', 9815487165, 9821543521, 'Baixada Fluminense casa 1', 'carlos', '202cb962ac59075b964b07152d234b70', '9933b92b60a26e8b983f036c17172ef71668124501.png', '2022-11-10 23:55:01');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
