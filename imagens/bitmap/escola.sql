-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Ago-2023 às 11:53
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `curso` varchar(50) NOT NULL,
  `endereco` varchar(80) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(60) NOT NULL,
  `uf` char(2) NOT NULL,
  `cep` varchar(12) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `fone` varchar(20) NOT NULL,
  `email` varchar(80) NOT NULL,
  `data_nasc` date NOT NULL,
  `data_cad` date NOT NULL,
  `situacao` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `curso`, `endereco`, `bairro`, `cidade`, `uf`, `cep`, `cpf`, `fone`, `email`, `data_nasc`, `data_cad`, `situacao`) VALUES
(20, 'CARLOS RUBENS PEREIRA', 'ESPANHOL', 'RUA BEIJAMIN', 'SORTUDO', 'NOVA', 'PB', '77777-777', '555.165.166-51', '(48)9 9565-6414', '123@GMAIL.COM', '2000-08-16', '2023-06-23', 'INATIVO'),
(21, 'NICK MARQUES', 'MANDARIN', 'RUA LAJE', 'LAJOTAA', 'LAJES', 'AL', '12151-445', '154.484.546-65', '(48)9 9556-5656', '1234@GMAIL.COM', '2000-05-23', '2023-02-26', 'INATIVO'),
(22, 'DOUGLAS', 'FRÂNCES', 'RUA MIAMI', 'AMORE', 'AMEI', 'PB', '44444-444', '111.111.111-11', '(11)1 1111-1111', 'OI123@GA', '2000-01-05', '2023-08-13', 'INATIVO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `id_cursos` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `carga` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id_cursos`, `nome`, `carga`) VALUES
(13, 'INGLÊS', '30HR'),
(14, 'ESPANHOL', '300HRS'),
(15, 'FRÂNCES', '500HRS'),
(16, 'MANDARIN', '10HRS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turmas`
--

CREATE TABLE `turmas` (
  `id_turmas` int(11) NOT NULL,
  `turma` varchar(3) NOT NULL,
  `curso` varchar(50) NOT NULL,
  `turno` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turmas`
--

INSERT INTO `turmas` (`id_turmas`, `turma`, `curso`, `turno`, `tipo`) VALUES
(1, '351', 'INGLÊS', 'DIURNO', 'EAD'),
(2, '215', 'ESPANHOL', 'DIURNO', 'PRESENCIAL');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `login`, `senha`) VALUES
(1, 'LOBO', 'ADM', '123'),
(6, 'DIOGO', 'ADM', '12');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_cursos`);

--
-- Índices para tabela `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`id_turmas`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_cursos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `turmas`
--
ALTER TABLE `turmas`
  MODIFY `id_turmas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
