-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13-Out-2019 às 00:19
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
(24, 'um teste de dna', 'diarreia\'', 'to nao', '3', 'FDKJFDJKF', 'foto.jpeg', 'considerando que ele tenha um bom estomago', 'a afirmaÃ§Ã£o estÃ¡ correta?', 'b', 'HistÃ³ria', '2016'),
(25, 'um teste de dna', 'sim', 'to nao', '3', 'FDKJFDJKF', '5570.jpg', 'esse suco era de uva', 'a afirmaÃ§Ã£o estÃ¡ correta?', 'b', 'Biologia', '2019'),
(26, 'hjfdfhdkfhk', 'fsdjkfjksf', 'fkdfjdfkdh', 'fkdfkdfh', 'fdjkfdjkf', '6306.jpeg', 'fkjdsjfhjdkfhk', 'fdkjfhsjkfk', 'a', 'FÃ­sica', '2012'),
(29, 'kmkcmbM', 'VKDVMDMKV', 'VMVM', 'VMVM', 'V', '1760.png', 'MKFKMV', 'MDMVDVM', 'b', 'FÃ­sica', '2012'),
(30, 'K', 'K', 'K', 'KK', 'K', '785.png', 'K', 'K', 'a', 'FÃ­sica', '2012'),
(31, 'J', 'J', 'J', 'J', 'J', '9325.png', 'J', 'J', 'a', 'FÃ­sica', '2012'),
(32, 'Joao Vitor de mateus come 5 pizzas por hora', '5', '10', '2,5', '7,5', '2485.jpg', 'essas pizzas sao de calabresa, queijo e chocolare', 'quantas ele comeu em 1:30hr', 'd', 'FÃ­sica', '2012');

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
  `pontuacao` float NOT NULL,
  `fotoPerfil` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `cpf`, `cidade`, `estado`, `telefone`, `curso`, `genero`, `data`, `pontuacao`, `fotoPerfil`) VALUES
(62, 'JÃºlia Costa de Faria', 'juliacostafaria1810@gmail.com', '$2y$10$27QP9jllVWFMd8CP9C0Q.uipIoGeaj3EpnziWJD1v/C4PnjAZR.x.', '37998122280', 'ParÃ¡ de Minas', 'MG', '37998122280', 'informatica', 'F', '1998-15-20', 100, 'tetris.jpg'),
(63, 'iuiu', 'iuri@gmail.com', '$2y$10$8vcJyg9fsUaRTUihdm9M.ekw/LcNeu2txxCyD0J7fCmxnfzhF3gqy', 'fdfd', 'sdsd', 'MG', 'fdfsdf', 'informatica', 'F', '1998-15-20', 100, 'tetris.jpg'),
(64, 'jalia', 'juliacostafaria1810@gmail.com', '$2y$10$VLzn3qXSdCiBdR/LdrE35.FJLk6TDs5Pmg7h.58GgRLVsppMTI3Gy', '37998122280', 'ParÃ¡ de Minas', 'MG', '37998122280', 'informatica', 'F', '1998-15-20', 100, 'tetris.jpg'),
(67, 'wagner', 'w@gmail.com', '$2y$10$EVGXqoYHK36hGrbb4xDwq.NrzK6PkNm6c2hYx.635xLGsIMKotOde', '2131312', 'azurita', 'MG', 'rere\'\'', 'hospedagem', 'M', '1998-15-20', 100, 'tetris.jpg'),
(68, 'naju', 'naju@hotmail.com', '$2y$10$PVQoRiPEA5FnBiTEyVmcruZqoXOI9KeCfWVQf3kossyj2JYUy7pve', '133123\'', 'pitangui', 'ES', '237237837\'', 'agropecuaria', 'F', '1998-15-20', 100, 'tetris.jpg'),
(69, 'naju', 'naju@hotmail.com', '$2y$10$JPFlO.1K5V106zCm8HGU8OsmRzcF1N2vECpNEb80JP8v2n0KwlTeu', '133123\'', 'pitangui', 'ES', '237237837\'', 'agropecuaria', 'F', '1998-15-20', 100, 'tetris.jpg'),
(70, 'Jessica Costa de Faria', 'juliacostafaria1810@gmail.com', '$2y$10$A3ttwlBX0dG/q7DhFul9K.atXVRUIe/ayfTEh/WdXR8jtkC8rdZ.C', '123123', 'londres', 'SP', '23131', 'hospedagem', 'F', '1998-15-20', 100, 'tetris.jpg'),
(71, 'Jessica Costa de Faria', 'juliacostafaria1810@gmail.com', '$2y$10$N0IZ23LYz5HA9tu4vBpXHOzSHbK0RJcpMEnNNhjiSKMIlDvJC8zHS', '123123', 'londres', 'SP', '23131', 'hospedagem', 'F', '1998-15-20', 100, 'tetris.jpg'),
(72, 'JÃºlia Costa de Faria', 'juliacostafaria1810@gmail.com', '$2y$10$wy9fjiMiDV6IFNxRJST8j.k.0RYQSOZH7I3hUx20ju1Vi063b7OVW', '37998122280', 'ParÃ¡ de Minas', 'MG', '37998122280', 'informatica', 'F', '1998-15-20', 100, 'tetris.jpg'),
(73, 'JÃºlia Costa de Faria', 'juliacostafaria1810@gmail.com', '$2y$10$KLqCa62qXYfa0ZSiwSqiS.wGsNl/EW8nM8s8V/mH9kMKwuRUxY8ku', '37998122280', 'ParÃ¡ de Minas', 'MG', '37998122280', 'informatica', 'F', '1998-15-20', 100, 'tetris.jpg'),
(74, 'giscard', 'ggfffffffffffff@gmail.com', '$2y$10$wsb/mrW1Ujp8D7zcCDQ6qemnzaiQ0xf1xr19CnPjjSxvWaPMV5k9W', 'e3er3r3r', 'paraguai', 'MG', 'efjfdkjdfjkfjk', 'agropecuaria', 'M', '1998-15-20', 100, 'tetris.jpg'),
(75, 'giscard', 'ggfffffffffffff@gmail.com', '$2y$10$VxP1nkygOaAz8gtxjhR2CuxiPeNmVsP9ZpCdhk7WlRtfCF3aWHo7S', 'e3er3r3r', 'paraguai', 'MG', 'efjfdkjdfjkfjk', 'agropecuaria', 'M', '1998-15-20', 100, 'tetris.jpg'),
(76, 'JÃºlia Costa de Faria', 'juliacostafaria1810@gmail.com', '$2y$10$UJeMtS0rMeQoIVuS4RN5LudPmzdCXkxBrUzlq7CxfsVlobBvbJSoq', '37998122280', 'ParÃ¡ de Minas', 'MG', '37998122280', 'agropecuaria', 'F', '1998-15-20', 100, 'tetris.jpg'),
(77, 'JÃºlia Costa de Faria', 'juliacostafaria1810@gmail.com', '$2y$10$26OxN34zelcsDHVC/29S5OTfUHX1LL8kEUhwVdc63VBZdfS8uGzMi', 'd', 'ParÃ¡ de Minas', 'MG', 'sd', 'informatica', 'F', '1998-15-20', 100, 'tetris.jpg'),
(78, 'JÃºlia Costa de Faria', 'juliacostafaria1810@gmail.com', '$2y$10$z.0zFtnyR2tZ215kyPdv6OlRSe8Hxc4LUbQQqN4s66/X06rC4HKGu', 'd', 'ParÃ¡ de Minas', 'MG', 'sd', 'informatica', 'F', '1998-15-20', 100, 'tetris.jpg'),
(79, 'JÃºlia Costa de Faria', 'juliacostafaria1810@gmail.com', '$2y$10$VI7qwWuJ6j/IxGZ/p0XYweIzGTc9liphF2h3gqpmrKDQ8Ro0aNhvm', '37998122280', 'ParÃ¡ de Minas', 'MG', '37998122280', 'informatica', 'F', '1998-15-20', 100, 'tetris.jpg'),
(80, 'JÃºlia Costa de Faria', 'juliacostafaria1810@gmail.com', '$2y$10$3M8vLXsotBnCV85lOSixP.9rxK0elN5bcTkcMa81RTF3kInoEdCP6', 're', 'ParÃ¡ de Minas', 'MG', 'dfdf', 'informatica', 'F', '1998-15-20', 100, 'tetris.jpg'),
(81, 'vanderlei', 'v@hotmail.com', '$2y$10$jZugP8iz.Xc1kO8Onl795ugLmWTLq0PNkJFIG5wF6oNRr.ipfwqDK', '3443434', 'juatuba', 'ES', '43434343', 'agropecuaria', 'M', '1998-15-20', 330, 'tetris.jpg'),
(82, 'vanderlei', 'v@hotmail.com', '$2y$10$DTMMYBfRZ7ivc27tofGwrugZD0uuoaMoIBRmYiAViX.5S6rnE7OPe', '3443434', 'juatuba', 'ES', '43434343', 'agropecuaria', 'M', '1998-15-20', 330, 'tetris.jpg'),
(83, 'vanderlei', 'v@hotmail.com', '$2y$10$vT8G0phsgFefi4fhVwzpAOeelSsfYgDqGD9IhaLzRnhFgOXDQhDae', '3443434', 'juatuba', 'ES', '43434343', 'agropecuaria', 'M', '1998-15-20', 330, 'tetris.jpg'),
(84, 'kelly', 'kk@gmail.com', '$2y$10$K6z1YUUR6Vxi71YWPVhXG.QnwGWdyKQM0V10d3tBkJOFOBtPb1EI2', '4378284737429', 'pitangui', 'SP', '353594589487', 'agropecuaria', 'F', '1998-15-20', 0, 'tetris.jpg'),
(85, 'Frederico Lopes da Costa Silva', 'f@gmail.com', '$2y$10$qzDeHXn6nNmTOArjcYRWhep0hD2816LFwelEkK4n/wOfrEDN0l1/O', '145,458,57-68', 'Guarulhos', 'ES', '31987845457', 'hospedagem', 'M', '1998-15-20', 0, 'tetris.jpg'),
(86, 'Vinicius gabriel de jesus almeida', 'vini@gmail.com', '$2y$10$kWYoR2raH9rUqVZmH62Wyer3BDztHnsCmxycYYR/DgkdbO74beuAK', '37998122280', 'ParÃ¡ de Minas', 'MG', '37998122280', 'alimentos', 'M', '1998-09-17', 0, 'tetris.jpg'),
(87, 'jorge', 'jorge@gmail.com', '$2y$10$iU.SR68U2RT6RdruLo6iF.Jxxj9P5.56GAlSIN5eTryQLD8.rc/7K', '37998122280', 'franca', 'SP', '37998122280', 'eletrotecnica', 'M', '2005-08-08', 0, 'tetris.jpg'),
(88, 'Gabriel Pereira da Costa Santos', 'gg@gmail.com', '$2y$10$OSqe54PerXUGKMhs/I12bedWRyr1mJnfTH.LHfDUnD2mp/GZ80s7i', '12315455', 'Guarapari', 'ES', '316464666464', 'alimentos', 'M', '2000-12-18', 0, 'tetris.jpg'),
(89, 'JÃ©ssica Costa de Faria3', 'jcostadefaria@gmail.com', '$2y$10$1dTAHuoGUKDsyX/gN4JQ0e.8lvLNxFCKbhfSwqne2RVQbRbJHgU7O', '37998122280', 'ParÃ¡ de Minas', 'MG', '37949464949', 'eletronica', 'F', '1994-04-07', 0, 'tetris.jpg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
