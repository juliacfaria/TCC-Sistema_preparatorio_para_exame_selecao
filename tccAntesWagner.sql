-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12-Nov-2019 às 23:41
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
-- Estrutura da tabela `questionario1`
--

CREATE TABLE `questionario1` (
  `avaliacao_site` varchar(20) NOT NULL,
  `nivel_prova` varchar(20) NOT NULL,
  `aprovacao` varchar(20) NOT NULL,
  `frequencia` varchar(20) NOT NULL,
  `utilidade` varchar(20) NOT NULL,
  `indicacao` varchar(20) NOT NULL,
  `sugestoes` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `questionario1`
--

INSERT INTO `questionario1` (`avaliacao_site`, `nivel_prova`, `aprovacao`, `frequencia`, `utilidade`, `indicacao`, `sugestoes`) VALUES
('sim', 'facil', 'sim', 'sempre', 'sim', 'sim', ''),
('nao', 'medio', 'nao', 'quase', 'nao', 'nao', 'Muito bom o site!'),
('sim', 'dificil', 'sim', 'sempre', 'sim', 'sim', 'Adorei!'),
('sim', 'facil', 'sim', 'sempre', 'sim', 'sim', ''),
('sim', 'facil', 'sim', 'sempre', 'sim', 'sim', ''),
('sim', 'facil', 'sim', 'sempre', 'sim', 'sim', ''),
('sim', 'facil', 'sim', 'sempre', 'sim', 'sim', ''),
('sim', 'facil', 'sim', 'sempre', 'sim', 'sim', ''),
('sim', 'facil', 'sim', 'sempre', 'sim', 'sim', ''),
('sim', 'facil', 'sim', 'sempre', 'sim', 'sim', 'esse site Ã© pessimo. CREDO!!!!'),
('sim', 'facil', 'sim', 'sempre', 'sim', 'sim', ''),
('sim', 'facil', 'sim', 'sempre', 'sim', 'sim', 'sugiro que o wagner suma desse site');

-- --------------------------------------------------------

--
-- Estrutura da tabela `questionario2`
--

CREATE TABLE `questionario2` (
  `frequencia` varchar(20) NOT NULL,
  `utilidade` varchar(20) NOT NULL,
  `indicacao` varchar(20) NOT NULL,
  `sugestoes` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `questionario2`
--

INSERT INTO `questionario2` (`frequencia`, `utilidade`, `indicacao`, `sugestoes`) VALUES
('sempre', 'sim', 'sim', 'nao gostei desse site'),
('quase', 'nao', 'nao', 'hjhjh'),
('sempre', 'sim', 'sim', 'sugiro tirar o wagner do grupo\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `questoes`
--

CREATE TABLE `questoes` (
  `id` int(11) NOT NULL,
  `enunciado` varchar(450) NOT NULL,
  `a` varchar(45) NOT NULL,
  `b` varchar(45) NOT NULL,
  `c` varchar(45) NOT NULL,
  `d` varchar(45) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `enunciado2` varchar(400) NOT NULL,
  `pedidoQuestao` varchar(100) NOT NULL,
  `correta` varchar(1) NOT NULL,
  `materia` varchar(20) NOT NULL,
  `ano` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `questoes`
--

INSERT INTO `questoes` (`id`, `enunciado`, `a`, `b`, `c`, `d`, `imagem`, `enunciado2`, `pedidoQuestao`, `correta`, `materia`, `ano`) VALUES
(1, 'Um garoto comprou 300 melancias em um dia', 'ele gosta de melancia', 'ele nao gosta de melancia', 'ele prefere banana', 'melancia é uma fruta muito boa', '', 'De acordo com o enunciado acima:', 'Informe a resposta correta', 'm', 'Biologia', '2015'),
(2, 'Um garoto comprou 300 bananas em um dia', 'ele gosta de melancia', 'ele nao gosta de melancia', 'ele prefere banana', 'banana é uma fruta muito boa', '', 'De acordo com o enunciado acima:', 'Informe a resposta correta', 'b', 'Biologia', '2015'),
(3, 'certo dia, jao comprou 30 kg de presunto', '3', 'não é possível', 'acredito', 'falso', '', '', 'selecione a alternativa que você acha melhor', 'f', 'Biologia', '2015'),
(4, 'ANa julia sempre come pão pelas manhãs, certo dia ela analisou que o pão estava verde', 'ana julia está louca', 'ana julia gosta de pão', 'anajulia estava alucinando', 'isso ocorre devido a ação de fungos', '', '', 'A resposta correta é', 'i', 'Biologia', '2015'),
(5, 'Um especialista em queijos viaja à Tailândia, desde então ele refinou seu gosto em queijos', 'queijo parmesão', 'queijo canastra', 'queijo cheddar', 'queijo azedo', 'queijo.jpg', '', 'qual queijo mudou o paladar dele?', 'd', 'Geografia', '2017'),
(23, 'Joao Vitor de mateus come 5 pizzas por hora', 'dieta', 'ir ao medico', 'regime', 'academia', 'foto.jpeg', 'considerando que ele tenha um bom estomago', 'O que ele deve fazer?', 'b', 'Biologia', '2014'),
(32, 'Joao Vitor de mateus come 5 pizzas por hora', '5', '10', '2,5', '7,5', '2485.jpg', 'essas pizzas sao de calabresa, queijo e chocolare', 'quantas ele comeu em 1:30hr', 'd', 'FÃ­sica', '2012'),
(33, 'um teste de dna', 'Ã§', 'Ã§', 'Ã§', 'Ã§', '', 'considerando que ele tenha um bom estomago', 'a afirmaÃ§Ã£o estÃ¡ correta?', 'a', 'FÃ­sica', '2012'),
(34, 'k', 'Ã§', 'k', 'k', 'k', '', 'k', 'k', 'a', 'FÃ­sica', '2012'),
(35, 'um DIA choveu', 'l', 'l', 'l', 'l', '1183.png', 'l', 'l', 'a', 'FÃ­sica', '2012'),
(36, 'Ã§', 'Ã§', 'Ã§', 'Ã§', 'Ã§', '', 'Ã§', 'Ã§', 'a', 'FÃ­sica', '2012'),
(37, 'um teste de dna', 'K', 'K', 'K', 'K', '5013.jpg', 'kk', 'K', 'a', 'PortuguÃªs', '2012'),
(38, 'Ã‡', 'Ã‡', 'Ã‡Ã‡', 'Ã‡', 'Ã‡', '2646.png', 'Ã‡', 'Ã‡', 'a', 'PortuguÃªs', '2012'),
(39, 'Ã‡', 'Ã‡', 'L', 'Ã‡Ã‡', 'Ã‡', '', 'Ã‡', 'Ã‡', 'a', 'PortuguÃªs', '2012'),
(40, 'Ã‡', 'Ã‡', 'Ã‡', 'Ã‡', 'Ã‡', '4235.png', 'Ã‡', 'Ã‡', 'a', 'PortuguÃªs', '2012'),
(41, '1', '1', '1', '1', '1', '9936.jpg', '1', '1', 'a', 'FÃ­sica', '2012'),
(42, 'Joao Vitor de mateus come 5 pizzas por hora', 'dieta', 'to nao', 'academia', 'regime', '', 'considerando que ele tenha um bom estomago', 'O que ele deve fazer?', 'a', 'FÃ­sica', '2012'),
(43, 'questao', 'bini', 'vini', 'bibi', 'vivi', '6911.jpg', 'do', 'vininho', 'a', 'MatemÃ¡tica', '2012'),
(45, 'isabela Ã© maluca com o neymar', 'sim', '1', '100%', 'zero', '3378.jpg', 'se ela invadir o campo', 'qual a chance de o neymar gostar', 'a', 'QuÃ­mica', '2012');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(265) NOT NULL,
  `cpf` varchar(25) NOT NULL,
  `cidade` varchar(70) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `curso` varchar(30) NOT NULL,
  `genero` varchar(1) NOT NULL,
  `data` varchar(11) NOT NULL,
  `pontuacao` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `cpf`, `cidade`, `estado`, `telefone`, `curso`, `genero`, `data`, `pontuacao`) VALUES
(82, 'vanderlei', 'v@hotmail.com', '$2y$10$DTMMYBfRZ7ivc27tofGwrugZD0uuoaMoIBRmYiAViX.5S6rnE7OPe', '3443434', 'juatuba', 'ES', '43434343', 'agropecuaria', 'M', '1998-15-20', 330),
(86, 'Vinicius Gabriel de jesus almeida', 'vini@gmail.com', '$2y$10$kWYoR2raH9rUqVZmH62Wyer3BDztHnsCmxycYYR/DgkdbO74beuAK', '37998122280', 'ParÃ¡ de Minas', 'MG', '37998122280', 'alimentos', 'M', '1998-09-17', 0),
(88, 'Gabriel Pereira da Costa Santos', 'gg@gmail.com', '$2y$10$OSqe54PerXUGKMhs/I12bedWRyr1mJnfTH.LHfDUnD2mp/GZ80s7i', '12315455', 'Guarapari', 'ES', '316464666464', 'alimentos', 'M', '2000-12-18', 0),
(94, 'naju', 'naju@hotmail.com', '$2y$10$AKkXsW.GNPOmVLLdcUmjHePtFRflJ8BiZ2wXsjPQadI7q0epTK4wa', '1948934948\'394839\'', 'para de miams', 'MG', '3934984394', 'informatica', 'F', '2001-11-05', 0),
(95, 'josefina', 'josefina@homtail.com', '$2y$10$YxqikaazUiOgscCIT.sxsuNXL3UeDWu/jvmhUCUXXVr5noy2CjP.S', '11111111111111', 'azurita', 'ES', '11111111111111', 'informatica', 'F', '1111-11-11', 0),
(96, 'jaja', 'jaja@gmail.com', '$2y$10$TYXlyPYdp5wWQFopBl3oSejXp2.Q5ZuxSKtHVdPTgvCjQLro8oNXu', 'ajaj', 'jaja', 'MG', 'jaja', 'eletronica', 'F', '0444-04-04', 0),
(97, 'fedorentinho', 'fed@gmail.com', '$2y$10$8bc2yICI4/ElQMZWhb6Vou2BNkyh0qAy3Uu2FnVAuOgrg0XnYLoBC', '666', 'salzedo', 'RJ', '319985859', 'hospedagem', 'F', '2001-10-18', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questoes`
--
ALTER TABLE `questoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questoes`
--
ALTER TABLE `questoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
