-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12-Nov-2019 às 23:47
-- Versão do servidor: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `desempenho`
--

CREATE TABLE `desempenho` (
  `idDesempenho` int(11) NOT NULL,
  `certasTotal` int(11) DEFAULT NULL,
  `erradasTotal` int(11) DEFAULT NULL,
  `certasMat` int(11) DEFAULT NULL,
  `erradasMat` int(11) DEFAULT NULL,
  `certasPort` int(11) DEFAULT NULL,
  `erradasPort` int(11) DEFAULT NULL,
  `certasCien` int(11) DEFAULT NULL,
  `erradasCien` int(11) DEFAULT NULL,
  `certasGeo` int(11) DEFAULT NULL,
  `erradasGeo` int(11) DEFAULT NULL,
  `certasHist` int(11) DEFAULT NULL,
  `erradasHist` int(11) DEFAULT NULL,
  `usuarios_idUsuarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

CREATE TABLE `eventos` (
  `idEventos` int(11) NOT NULL,
  `title` varchar(220) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `usuarios_idUsuarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `questionario1`
--

CREATE TABLE `questionario1` (
  `idQuestinario1` int(11) NOT NULL,
  `questionario1col` varchar(20) DEFAULT NULL,
  `avaliacao_site` varchar(20) DEFAULT NULL,
  `nivel_prova` varchar(20) DEFAULT NULL,
  `aprovacao` varchar(20) DEFAULT NULL,
  `frequencia` varchar(20) DEFAULT NULL,
  `utilidade` varchar(20) DEFAULT NULL,
  `indicacao` varchar(20) DEFAULT NULL,
  `sugestoes` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `questionario1`
--

INSERT INTO `questionario1` (`idQuestinario1`, `questionario1col`, `avaliacao_site`, `nivel_prova`, `aprovacao`, `frequencia`, `utilidade`, `indicacao`, `sugestoes`) VALUES
(1, NULL, 'sim', 'facil', 'sim', 'sempre', 'sim', 'sim', 'ss'),
(2, NULL, 'sim', 'facil', 'sim', 'sempre', 'sim', 'sim', ''),
(3, NULL, 'sim', 'facil', 'sim', 'sempre', 'sim', 'sim', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `questionario2`
--

CREATE TABLE `questionario2` (
  `idQuestionario2` int(11) NOT NULL,
  `frequencia` varchar(20) DEFAULT NULL,
  `utilidade` varchar(20) DEFAULT NULL,
  `indicacao` varchar(20) DEFAULT NULL,
  `sugestoes` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `questoes`
--

CREATE TABLE `questoes` (
  `idQuestoes` int(11) NOT NULL,
  `enunciado` varchar(450) DEFAULT NULL,
  `a` varchar(90) DEFAULT NULL,
  `b` varchar(90) DEFAULT NULL,
  `c` varchar(90) DEFAULT NULL,
  `d` varchar(90) DEFAULT NULL,
  `imagem` varchar(200) DEFAULT NULL,
  `enunciado2` varchar(400) DEFAULT NULL,
  `pedidoQuestao` varchar(100) DEFAULT NULL,
  `correta` varchar(1) DEFAULT NULL,
  `materia` varchar(20) DEFAULT NULL,
  `ano` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `questoes`
--

INSERT INTO `questoes` (`idQuestoes`, `enunciado`, `a`, `b`, `c`, `d`, `imagem`, `enunciado2`, `pedidoQuestao`, `correta`, `materia`, `ano`) VALUES
(1, 'Joao Vitor de mateus come 5 pizzas por hora', 'sim', 'to nao', '3', 'sei la', NULL, 'considerando que ele tenha um bom estomago', 'a afirmaÃ§Ã£o estÃ¡ correta?', 'c', 'FÃ­sica', '2012');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(265) DEFAULT NULL,
  `cpf` varchar(25) DEFAULT NULL,
  `cidade` varchar(70) DEFAULT NULL,
  `estado` varchar(4) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `curso` varchar(30) DEFAULT NULL,
  `genero` varchar(1) DEFAULT NULL,
  `data` varchar(11) DEFAULT NULL,
  `moderador` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `nome`, `email`, `senha`, `cpf`, `cidade`, `estado`, `telefone`, `curso`, `genero`, `data`, `moderador`) VALUES
(1, 'w', 'w@w', '$2y$10$X0Iy6HDAjhfoXM5Rovj4vuN0LswGrI8om/CiE1hyuda', '1', 'w', 'MG', '1', 'informatica', 'M', '2019-11-15', 0),
(2, 'w', 'wa@w', '$2y$10$rStFebpc1Ch7JMAFxRGXBuXYTLNehnEZ05iHMvsB2em', '1', 'w', 'MG', '1', 'informatica', 'M', '2019-11-15', 0),
(3, 'wa', 'a@a', '$2y$10$mq09tym2.apAvyxfPCH5ZeEF.NiR6ViUcNefjOKvQUVESY9JJRKQy', '1', 'w', 'MG', '1', 'informatica', 'F', '2019-11-09', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `desempenho`
--
ALTER TABLE `desempenho`
  ADD PRIMARY KEY (`idDesempenho`,`usuarios_idUsuarios`),
  ADD KEY `fk_desempenho_usuarios1_idx` (`usuarios_idUsuarios`);

--
-- Indexes for table `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`idEventos`,`usuarios_idUsuarios`),
  ADD KEY `fk_eventos_usuarios_idx` (`usuarios_idUsuarios`);

--
-- Indexes for table `questionario1`
--
ALTER TABLE `questionario1`
  ADD PRIMARY KEY (`idQuestinario1`);

--
-- Indexes for table `questionario2`
--
ALTER TABLE `questionario2`
  ADD PRIMARY KEY (`idQuestionario2`);

--
-- Indexes for table `questoes`
--
ALTER TABLE `questoes`
  ADD PRIMARY KEY (`idQuestoes`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuarios`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eventos`
--
ALTER TABLE `eventos`
  MODIFY `idEventos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `questionario1`
--
ALTER TABLE `questionario1`
  MODIFY `idQuestinario1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questionario2`
--
ALTER TABLE `questionario2`
  MODIFY `idQuestionario2` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questoes`
--
ALTER TABLE `questoes`
  MODIFY `idQuestoes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `desempenho`
--
ALTER TABLE `desempenho`
  ADD CONSTRAINT `fk_desempenho_usuarios1` FOREIGN KEY (`usuarios_idUsuarios`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `fk_eventos_usuarios` FOREIGN KEY (`usuarios_idUsuarios`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
