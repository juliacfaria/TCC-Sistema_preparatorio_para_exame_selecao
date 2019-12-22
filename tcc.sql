-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29-Nov-2019 às 21:10
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

--
-- Extraindo dados da tabela `desempenho`
--

INSERT INTO `desempenho` (`idDesempenho`, `certasTotal`, `erradasTotal`, `certasMat`, `erradasMat`, `certasPort`, `erradasPort`, `certasCien`, `erradasCien`, `certasGeo`, `erradasGeo`, `certasHist`, `erradasHist`, `usuarios_idUsuarios`) VALUES
(0, 10, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 4),
(0, 8, 1, 0, 1, 2, 0, 2, 0, 2, 0, 2, 0, 5),
(0, 1, 10, 0, 2, 0, 2, 1, 2, 0, 2, 0, 2, 6),
(0, 10, 1, 2, 1, 2, 0, 2, 0, 2, 0, 2, 0, 7),
(0, 5, 4, 0, 0, 0, 0, 5, 3, 0, 0, 0, 1, 8),
(0, 2, 1, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 9),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10);

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

--
-- Extraindo dados da tabela `eventos`
--

INSERT INTO `eventos` (`idEventos`, `title`, `color`, `start`, `end`, `usuarios_idUsuarios`) VALUES
(1, 'Estudar fisica', '#FF4500', '2019-11-07 00:00:00', '2019-11-08 00:00:00', 8),
(2, 'Estudar fisica', '#FFD700', '2019-11-07 00:00:00', '2019-11-08 00:00:00', 9);

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
  `a` varchar(200) DEFAULT NULL,
  `b` varchar(200) DEFAULT NULL,
  `c` varchar(200) DEFAULT NULL,
  `d` varchar(200) DEFAULT NULL,
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
(4, 'Assinale a alternativa onde hÃ¡ um ERRO de concordÃ¢ncia:', 'Quando cheguei ao local era meio dia e meia', 'A maioria dos alunos foi aprovada no vestibular.', 'Houve vÃ¡rias manifestaÃ§Ãµes na praÃ§a durante o evento', 'Faltava vinte reais para completar o pagamento da boleta.', NULL, '', '', 'd', 'PortuguÃªs', '2014'),
(5, 'A 4 metros de uma casa encontra-se uma Ã¡rvore de 8 metros de altura que deve ser cortada por motivos de seguranÃ§a. A Ã¡rvore se encontra em um terreno plano e na mesma linha da casa.', '1 metro.', '2 metros.', '3 metros.', '4 metros.', NULL, 'Desconsiderando a largura do tronco, a altura mÃ­nima H do solo que deve ser cortada a Ã¡rvore para nÃ£o atingir a casa Ã©:', '', 'c', 'MatemÃ¡tica', '2014'),
(6, 'O sistema circulatÃ³rio Ã© responsÃ¡vel pela distribuiÃ§Ã£o de substÃ¢ncia bem como pela defesa do nosso organismo. Sobre este sistema foram feitas trÃªs afirmativas:', 'Apenas em I.', 'Apenas em II.', 'Apenas em III.', 'Em I e II.', NULL, 'I. ArtÃ©rias sÃ£o os vasos sanguÃ­neos que conduzem sangue arterial. II. A veia artÃ©ria Ã© o vaso sanguÃ­neo mais grosso de nosso corpo. III. As artÃ©rias levam sangue do coraÃ§Ã£o para outros Ã³rgÃ£os e tecidos.', 'Podemos afirmar que Ã© correto o que se afirma:', 'c', 'Biologia', '2014'),
(7, 'A propagaÃ§Ã£o do calor pode ocorrer por meio de trÃªs processos diferentes: a conduÃ§Ã£o, a convecÃ§Ã£o e a irradiaÃ§Ã£o. Sobre essa informaÃ§Ã£o a Ãºnica alternativa INCORRETA Ã©:', 'O calor de um ferro de passar Ã© transferido para a roupa por conduÃ§Ã£o', 'O resfriamento dos alimentos na geladeira se dÃ¡ principalmente por conduÃ§Ã£o', 'Quando nos aquecemos prÃ³ximos a uma fogueira recebemos o calor principalmente por irradia', 'Um dos motivos para a formaÃ§Ã£o dos ventos e das brisas sÃ£o as correntes de convecÃ§Ã£o', NULL, '', '', 'b', 'FÃ­sica', '2014'),
(8, 'A propagaÃ§Ã£o do calor pode ocorrer por meio de trÃªs processos diferentes: a conduÃ§Ã£o, a convecÃ§Ã£o e a irradiaÃ§Ã£o. Sobre essa informaÃ§Ã£o a Ãºnica alternativa INCORRETA Ã©:', 'O calor de um ferro de passar Ã© transferido para a roupa por conduÃ§Ã£o', 'O resfriamento dos alimentos na geladeira se dÃ¡ principalmente por conduÃ§Ã£o', 'Quando nos aquecemos prÃ³ximos a uma fogueira recebemos o calor principalmente por irradiaÃ§', 'Um dos motivos para a formaÃ§Ã£o dos ventos e das brisas sÃ£o as correntes de convecÃ§Ã£o', NULL, '', '', 'b', 'FÃ­sica', '2014'),
(9, 'Sobre os modelos atÃ´micos de Dalton, Thomson, Rutherford e Bohr Ã© INCORRETO afirmar que:', 'no modelo de Dalton o Ã¡tomo Ã© considerado uma minÃºscula partÃ­cula de carga elÃ©trica neutra, indivisÃ­vel, esfÃ©rica e maciÃ§a como bolinha de gude.', 'no modelo de Thomson o Ã¡tomo Ã© considerado uma esfera carregada positivamente na qual os elÃ©trons estÃ£o incrustados, o que garante a neutralidade elÃ©trica do modelo.', 'no modelo de Rutherford o Ã¡tomo Ã© constituÃ­do de um nÃºcleo central minÃºsculo onde se concentra toda a carga positiva e os elÃ©trons estÃ£o girando em Ã³rbita circulares.', 'no modelo de Bohr os elÃ©trons situam-se em Ã³rbitas ao redor do nÃºcleo e ao saltarem para uma Ã³rbita mais prÃ³xima do nÃºcleo, absorvem energia na forma de fÃ³tons.', NULL, '', '', 'd', 'QuÃ­mica', '2014'),
(10, 'No espaÃ§o da produÃ§Ã£o agrÃ­cola a monocultura Ã© um dos maiores inimigos da MÃ£e Terra. Objetivando o lucro, essa prÃ¡tica visa o cultivo de:', 'Produtos diversificados.', 'Um produto para cada estaÃ§Ã£o', 'Um sÃ³ produto.', 'Florestas naturais.', NULL, '', '', 'c', 'Geografia', '2014'),
(11, 'AntidemocrÃ¡tico, totalitÃ¡rio, militarista, nacionalista, xenÃ³fobo, racista, cultua a violÃªncia e o irracionalismo. Estas sÃ£o algumas das caracterÃ­sticas do:', 'Fascismo', 'Comunismo', 'Socialismo', 'Anarquismo', NULL, '', '', 'a', 'HistÃ³ria', '2014');

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
(4, 'Wagner ', 'wagner@w', '$2y$10$/VtdJxo3Cpgti/Pl.1CNvujL8fCMNYbUJwjADCFan0r1LhurJosTK', '1233578945', 'Azurita', 'MG', '3199698584', 'informatica', 'F', '2019-12-19', 0),
(5, 'Ana Julia', 'ana@a', '$2y$10$NvAiVk25Ir1nYfCzViiF/.L5gxXLYplNCodsEfaJWLATyPBoBoNd6', '1233578945', 'Para', 'MG', '3199698584', 'informatica', 'F', '2019-11-28', 0),
(6, 'Julia', 'julia@j', '$2y$10$V1g6UTTjhc48yItIhubODunDbKGB969SkwqhSfhfqqUzCrI.oCPtG', '1233578945', 'Para', 'MG', '3199698584', 'informatica', 'F', '2019-11-13', 0),
(7, 'Gabriel', 'gabriel@g', '$2y$10$VQBuRiJCLjn.fhviAO1I9..UxfTrEGxNCz95rJrIICFCfVBgxYXwu', '1233578945', 'Para', 'MG', '3199698584', 'informatica', 'F', '2019-11-23', 0),
(8, 'JÃºlia Costa de Fariaaaaa', 'juliacostafaria1810@gmail.com', '$2y$10$mnsMuuHr95D0wVuEA193AOEsu4UV5UvMuxr/KUFQDiPyqMdxYWIwq', '37998122280', 'ParÃ¡ de Minas', 'MG', '37998122280', 'informatica', 'F', '2001-10-18', 0),
(9, 'lucas2', 'l@dsds.com', '$2y$10$0LFbZ78LKpzZhF1McM60M.3dQ81HP/E8iEinhdeaCU.WxFs2oQl/O', '379981222800', 'lll', 'MG', '37998122280', 'eletronica', 'M', '2019-11-09', 0),
(10, 'Ã§', 'juliacostafaria18130@gmail.com', '$2y$10$d5vPMGDyIxJdRAb9cQMJxeVnysk1wRZy3koFD2Borjb/30KobM0WO', 'Ã§', 'Ã§', 'MG', 'Ã§', 'informatica', 'F', '2019-11-20', 0);

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
  MODIFY `idEventos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `idQuestoes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
