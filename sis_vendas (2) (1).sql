-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Ago-2022 às 23:26
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
-- Banco de dados: `sis_vendas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `CPF` bigint(20) NOT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `limite_credito` int(11) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `complemento` varchar(30) DEFAULT NULL,
  `CEP` bigint(20) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `CPF_vend` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`CPF`, `nome`, `limite_credito`, `sexo`, `rua`, `numero`, `complemento`, `CEP`, `cidade`, `status`, `CPF_vend`) VALUES
(1254832565, 'Luiz Junior Sousa', 4500, 'M', 'Vereador Benedito', 125, 'casa', 58401718, 'Campina Grande', 'bom', 10565397804),
(2135625812, 'Mariza Albuquerque', 5200, 'F', 'Brigadeiro Eduardo Gomes', 520, 'casa', 58321205, 'Campina Grande', 'bom', 26974158525),
(2365496541, 'Maria Lucia Ferreira da Silva', 1200, 'F', 'José Tokkaip', 65, 'casa', 58451124, 'Campina Grande', 'médio', 10565397804),
(8965438145, 'Raquel Simone de Almeida', 7800, 'F', 'Lourival Andrade', 1477, 'casa', 5821474152, 'Campina Grande', 'bom', 15964782003),
(20163232510, 'Joaqui da Silva Santos', 1550, 'M', 'Arthur Correia de Brito', 961, 'casa', 58321021535, 'Campina Grande', 'ruim', 65471230895),
(21035412645, 'Luciano Alves de Lima', 2300, 'M', 'José de Agostinho', 54, 'casa', 5841765212, 'Campina Grande', 'médio', 15963247852),
(32152098732, 'João Alves de Lima Correia', 2000, 'M', 'Adelino Aquino Neto', 123, 'casa', 58145250, 'Campina Grande', 'ruim', 98521473602),
(36258965410, 'Maria Eduarda de Oliveira', 3500, 'F', 'Abdias da Silva Campos', 2541, 'casa', 5865412385, 'Campina Grande', 'médio', 16352478905),
(74565436954, 'José da Silva Andrade', 5600, 'M', 'Juvino Sobreira de Carvalho', 267, 'casa', 5840258498, 'Campina Grande', 'médio', 14758236905),
(74565866620, 'Brennda Coutinho Ferreira', 1200, 'F', 'Maria RIbeiro Machado', 63, 'casa', 5862132158, 'Campina Grande', 'ruim', 14253614253);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente_pedido`
--

CREATE TABLE `cliente_pedido` (
  `CPF_cli` bigint(20) DEFAULT NULL,
  `num_pedido` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente_produto`
--

CREATE TABLE `cliente_produto` (
  `CPF_cli` bigint(20) DEFAULT NULL,
  `cod_prod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente_produto`
--

INSERT INTO `cliente_produto` (`CPF_cli`, `cod_prod`) VALUES
(2365496541, 7236),
(1254832565, 2348),
(21035412645, 9213),
(8965438145, 5326),
(8965438145, 5326),
(74565866620, 1293),
(74565866620, 8127),
(74565866620, 1235),
(74565436954, 9523),
(74565436954, 348),
(36258965410, 9213),
(36258965410, 2348),
(32152098732, 9405),
(32152098732, 8127),
(20163232510, 8127),
(20163232510, 5326),
(20163232510, 2348),
(2135625812, 2348),
(2135625812, 1235),
(2135625812, 8127);

-- --------------------------------------------------------

--
-- Estrutura da tabela `comercial`
--

CREATE TABLE `comercial` (
  `codigo_produto` int(11) DEFAULT NULL,
  `sub_cod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `comercial`
--

INSERT INTO `comercial` (`codigo_produto`, `sub_cod`) VALUES
(348, 75),
(9405, 95),
(2348, 89),
(7236, 45);

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `nome` varchar(30) DEFAULT NULL,
  `codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`nome`, `codigo`) VALUES
('LIMPEZA', 147582),
('FINANÇAS', 154268),
('VENDAS', 254638),
('ESTOQUE', 968531);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dependente`
--

CREATE TABLE `dependente` (
  `nome` varchar(150) DEFAULT NULL,
  `RG` bigint(20) NOT NULL,
  `cpf_vendedor` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dependente`
--

INSERT INTO `dependente` (`nome`, `RG`, `cpf_vendedor`) VALUES
('Joao da Silva Santos', 485232, 26974158525),
('Simone de Almeida', 1765412, 14253614253),
('Larissa Lima', 2032145, 15964782003),
('Madu Magalhaes de Oliveira', 2136520, 98521473602),
('Igor de Lima', 2158720, 65471230895),
('Jose Ferreira', 3258402, 14758236905),
('Murilo Albuquerque', 5978485, 36278145859),
('Jessica Andrade', 8725432, 16352478905),
('Marta da Silva', 12532112, 10565397804),
('Lucas Sousa', 20160120, 15963247852);

-- --------------------------------------------------------

--
-- Estrutura da tabela `email_cliente`
--

CREATE TABLE `email_cliente` (
  `CPF_cliente` bigint(20) DEFAULT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `email_cliente`
--

INSERT INTO `email_cliente` (`CPF_cliente`, `email`) VALUES
(1254832565, '2'),
(1254832565, 'LUIZ.J@GMAIL.COM'),
(2135625812, '10'),
(2135625812, 'MARIZACOMZ@YAHOO.COM'),
(2365496541, '1'),
(2365496541, 'M.LUCIA@YAHOO.COM'),
(8965438145, '4'),
(8965438145, 'RAQUEL@HOTMAIL.COM'),
(20163232510, '9'),
(20163232510, 'JOAQ@YAHOO.COM'),
(21035412645, '3'),
(21035412645, 'LUCIANO.A@GMAIL.COM'),
(32152098732, '8'),
(32152098732, 'JOAOA@HOTMAIL.COM'),
(36258965410, '7'),
(36258965410, 'MADU@GMAIL.COM'),
(74565436954, '6'),
(74565436954, 'JSILVA@GMAIL.COM'),
(74565866620, '5'),
(74565866620, 'BRENNDACOMDOISN@GMAIL.COM');

-- --------------------------------------------------------

--
-- Estrutura da tabela `email_empresa`
--

CREATE TABLE `email_empresa` (
  `CNPJ_empre` bigint(20) DEFAULT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `email_empresa`
--

INSERT INTO `email_empresa` (`CNPJ_empre`, `email`) VALUES
(7854841648, 'MAGALUH@GMAIL.COM');

-- --------------------------------------------------------

--
-- Estrutura da tabela `email_vendedor`
--

CREATE TABLE `email_vendedor` (
  `CPF_cliente` bigint(20) DEFAULT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `CNPJ` bigint(20) NOT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `rua` varchar(30) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `complemento` varchar(20) DEFAULT NULL,
  `CEP` bigint(20) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`CNPJ`, `nome`, `rua`, `numero`, `complemento`, `CEP`, `cidade`) VALUES
(7854841648, 'MAGA LUH', 'SEVERINO TUNÚ DA COSTA', 32, NULL, 56760000, 'ITAPETIM');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa_cliente`
--

CREATE TABLE `empresa_cliente` (
  `CPF_cli` bigint(20) DEFAULT NULL,
  `CNPJ_emp` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `empresa_cliente`
--

INSERT INTO `empresa_cliente` (`CPF_cli`, `CNPJ_emp`) VALUES
(2365496541, 7854841648),
(1254832565, 7854841648),
(21035412645, 7854841648),
(8965438145, 7854841648),
(74565866620, 7854841648),
(74565436954, 7854841648),
(36258965410, 7854841648),
(32152098732, 7854841648),
(20163232510, 7854841648),
(2135625812, 7854841648);

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa_pedido`
--

CREATE TABLE `empresa_pedido` (
  `CNPJ_emp` bigint(20) DEFAULT NULL,
  `num_pedido` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `empresa_pedido`
--

INSERT INTO `empresa_pedido` (`CNPJ_emp`, `num_pedido`) VALUES
(7854841648, 1),
(7854841648, 2),
(7854841648, 3),
(7854841648, 4),
(7854841648, 5),
(7854841648, 6),
(7854841648, 7),
(7854841648, 8),
(7854841648, 9),
(7854841648, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa_produto`
--

CREATE TABLE `empresa_produto` (
  `cod_prod` int(11) DEFAULT NULL,
  `CNPJ_emp` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `empresa_produto`
--

INSERT INTO `empresa_produto` (`cod_prod`, `CNPJ_emp`) VALUES
(7236, 7854841648),
(2348, 7854841648),
(9405, 7854841648),
(348, 7854841648),
(9213, 7854841648),
(9523, 7854841648),
(8127, 7854841648),
(5326, 7854841648),
(1293, 7854841648),
(1235, 7854841648);

-- --------------------------------------------------------

--
-- Estrutura da tabela `hospitalar`
--

CREATE TABLE `hospitalar` (
  `codigo_produto` int(11) DEFAULT NULL,
  `lote` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `hospitalar`
--

INSERT INTO `hospitalar` (`codigo_produto`, `lote`) VALUES
(1235, 2935),
(9213, 1264),
(1293, 5478),
(9523, 4158);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `datas` date DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `cpf_cliente` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`datas`, `total`, `numero`, `cpf_cliente`) VALUES
('2022-08-01', 16, 1, NULL),
('2022-08-01', 10, 2, NULL),
('2022-08-01', 9, 3, NULL),
('2022-08-02', 32, 4, NULL),
('2022-08-02', 90, 5, NULL),
('2022-08-03', 18, 6, NULL),
('2022-08-03', 19, 7, NULL),
('2022-08-03', 13, 8, NULL),
('2022-08-03', 33, 9, NULL),
('2022-08-03', 30, 10, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_produto`
--

CREATE TABLE `pedido_produto` (
  `cod_prod` int(11) DEFAULT NULL,
  `num_pedido` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedido_produto`
--

INSERT INTO `pedido_produto` (`cod_prod`, `num_pedido`) VALUES
(7236, 1),
(2348, 2),
(9213, 3),
(5326, 4),
(5326, 4),
(1293, 5),
(8127, 5),
(1235, 5),
(9523, 6),
(348, 6),
(2348, 7),
(9213, 7),
(9405, 8),
(8127, 8),
(8127, 9),
(5326, 9),
(2348, 9),
(2348, 10),
(1235, 10),
(8127, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `Codigo` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `categoria` varchar(30) DEFAULT NULL,
  `preço` int(11) DEFAULT NULL,
  `cpf_cliente` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`Codigo`, `nome`, `categoria`, `preço`, `cpf_cliente`) VALUES
(348, 'MAIONESE', 'COMERCIAL', 6, NULL),
(1235, 'DIPIRONA', 'HOSPITALAR', 10, NULL),
(1293, 'FRALDA', 'HOSPITALAR', 70, NULL),
(2348, 'FEIJAO', 'COMERCIAL', 10, NULL),
(5326, 'BOLSA REUTILIZAVEL', 'SUSTENTAVEL', 13, NULL),
(7236, 'PAPEL HIGIENICO', 'COMERCIAL', 16, NULL),
(8127, 'CANUDO DE PAPEL', 'SUSTENTAVEL', 10, NULL),
(9213, 'DICLOFENACO', 'HOSPITALAR', 9, NULL),
(9405, 'AGUA', 'COMERCIAL', 3, NULL),
(9523, 'SORO', 'HOSPITALAR', 12, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sustentavel`
--

CREATE TABLE `sustentavel` (
  `codigo_produto` int(11) DEFAULT NULL,
  `sub_certificado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `sustentavel`
--

INSERT INTO `sustentavel` (`codigo_produto`, `sub_certificado`) VALUES
(5326, 444),
(8127, 786);

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone_cliente`
--

CREATE TABLE `telefone_cliente` (
  `CPF_cliente` bigint(20) DEFAULT NULL,
  `telefone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `telefone_cliente`
--

INSERT INTO `telefone_cliente` (`CPF_cliente`, `telefone`) VALUES
(1254832565, 83988451236),
(2135625812, 83965478552),
(2365496541, 83996969512),
(8965438145, 83996621474),
(20163232510, 87996680580),
(21035412645, 83999321458),
(32152098732, 87999849924),
(36258965410, 83874415258),
(74565436954, 83987321454),
(74565866620, 83988251436);

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone_empresa`
--

CREATE TABLE `telefone_empresa` (
  `CNPJ_empre` bigint(20) DEFAULT NULL,
  `telefone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `telefone_empresa`
--

INSERT INTO `telefone_empresa` (`CNPJ_empre`, `telefone`) VALUES
(7854841648, 8333745428);

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone_vendedor`
--

CREATE TABLE `telefone_vendedor` (
  `CPF_cliente` bigint(20) DEFAULT NULL,
  `telefone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `CPF` bigint(20) NOT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `rua` varchar(30) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `complemento` varchar(20) DEFAULT NULL,
  `CEP` bigint(20) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `CNPJ_emp` bigint(20) DEFAULT NULL,
  `cod_depto` int(11) DEFAULT NULL,
  `CPF_chef` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vendedor`
--

INSERT INTO `vendedor` (`CPF`, `nome`, `sexo`, `rua`, `numero`, `complemento`, `CEP`, `cidade`, `CNPJ_emp`, `cod_depto`, `CPF_chef`) VALUES
(10565397804, 'LOURIVAL DA SILVA', 'M', 'BENEDITO MOTTA', 745, 'APARTAMENTO', 52147000, 'JABOATÃO DOS GUARARAPES', 7854841648, 254638, NULL),
(14253614253, 'VALÉRIA ASSUNÇÃO DA SILVA', 'F', 'MARIA DO LIVRAMENTO', 55, 'CASA', 48523108, 'BANANEIRAS', 7854841648, 154268, 10565397804),
(14758236905, 'WANESSA COSTA E SILVA', 'F', 'VEREADOR BENEDITO MOTTA', 96, 'APARTAMENTO', 96354781, 'CUITÉ', 7854841648, 254638, 10565397804),
(15963247852, 'HENRIQUE DURVAL CAMPOS', 'M', 'TRANQUILINO LEMOS', 235, 'CASA', 89164000, 'CAMPINA GRANDE', 7854841648, 147582, 10565397804),
(15964782003, 'JORGE DO AMARAL E SILVA', 'M', 'PEDRO GONDIM', 11, 'CASA', 41574125, 'JOÃO PESSOA', 7854841648, 968531, 10565397804),
(16352478905, 'BRUNA PEREIRA ASSUNÇÃO', 'F', 'FLORIANO PEIXOTO', 555, 'APARTAMENTO', 54556211, 'PICUÍ', 7854841648, 147582, 10565397804),
(26974158525, 'FLAVIO RIBEIRO DA SILVA', 'M', 'FABIO MENEZES', 6, 'CASA', 85412369, 'CAMPINA GRANDE', 7854841648, 968531, 10565397804),
(36278145859, 'VINICIUS COSTA NETO', 'M', 'GENERAL COSTA E SILVA', 80, 'APARTAMENTO', 52652308, 'JOÃO PESSOA', 7854841648, 254638, 10565397804),
(65471230895, 'EVELLYN SHEKIRA DA SILVA', 'F', 'TENENTE GALVÃO PEREIRA', 327, 'CASA', 87454785, 'QUEIMADAS', 7854841648, 968531, 10565397804),
(98521473602, 'SOFIA MONTEIRO BRAGANÇA', 'F', 'GERALDO BEZERRA', 478, 'CASA', 14526875, 'LAGOA SECA', 7854841648, 968531, 10565397804);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor_produto`
--

CREATE TABLE `vendedor_produto` (
  `cod_prod` int(11) DEFAULT NULL,
  `CPF_vend` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vendedor_produto`
--

INSERT INTO `vendedor_produto` (`cod_prod`, `CPF_vend`) VALUES
(7236, 10565397804),
(2348, 15963247852),
(9213, 15964782003),
(5326, 14253614253),
(5326, 14253614253),
(1293, 14758236905),
(8127, 14758236905),
(1235, 14758236905),
(9523, 16352478905),
(348, 16352478905),
(2348, 98521473602),
(9213, 98521473602),
(9405, 65471230895),
(8127, 65471230895),
(8127, 26974158525),
(5326, 26974158525),
(2348, 26974158525),
(2348, 36278145859),
(1235, 36278145859),
(8127, 36278145859);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`CPF`),
  ADD KEY `CPF_vend` (`CPF_vend`);

--
-- Índices para tabela `cliente_pedido`
--
ALTER TABLE `cliente_pedido`
  ADD KEY `CPF_cli` (`CPF_cli`),
  ADD KEY `num_pedido` (`num_pedido`);

--
-- Índices para tabela `cliente_produto`
--
ALTER TABLE `cliente_produto`
  ADD KEY `CPF_cli` (`CPF_cli`),
  ADD KEY `cod_prod` (`cod_prod`);

--
-- Índices para tabela `comercial`
--
ALTER TABLE `comercial`
  ADD KEY `codigo_produto` (`codigo_produto`);

--
-- Índices para tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `dependente`
--
ALTER TABLE `dependente`
  ADD PRIMARY KEY (`RG`),
  ADD KEY `cpf_vendedor` (`cpf_vendedor`);

--
-- Índices para tabela `email_cliente`
--
ALTER TABLE `email_cliente`
  ADD PRIMARY KEY (`email`),
  ADD KEY `CPF_cliente` (`CPF_cliente`);

--
-- Índices para tabela `email_empresa`
--
ALTER TABLE `email_empresa`
  ADD PRIMARY KEY (`email`),
  ADD KEY `CNPJ_empre` (`CNPJ_empre`);

--
-- Índices para tabela `email_vendedor`
--
ALTER TABLE `email_vendedor`
  ADD PRIMARY KEY (`email`),
  ADD KEY `CPF_cliente` (`CPF_cliente`);

--
-- Índices para tabela `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`CNPJ`);

--
-- Índices para tabela `empresa_cliente`
--
ALTER TABLE `empresa_cliente`
  ADD KEY `CPF_cli` (`CPF_cli`),
  ADD KEY `CNPJ_emp` (`CNPJ_emp`);

--
-- Índices para tabela `empresa_pedido`
--
ALTER TABLE `empresa_pedido`
  ADD KEY `CNPJ_emp` (`CNPJ_emp`),
  ADD KEY `num_pedido` (`num_pedido`);

--
-- Índices para tabela `empresa_produto`
--
ALTER TABLE `empresa_produto`
  ADD KEY `cod_prod` (`cod_prod`),
  ADD KEY `CNPJ_emp` (`CNPJ_emp`);

--
-- Índices para tabela `hospitalar`
--
ALTER TABLE `hospitalar`
  ADD KEY `codigo_produto` (`codigo_produto`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`numero`);

--
-- Índices para tabela `pedido_produto`
--
ALTER TABLE `pedido_produto`
  ADD KEY `cod_prod` (`cod_prod`),
  ADD KEY `num_pedido` (`num_pedido`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`Codigo`);

--
-- Índices para tabela `sustentavel`
--
ALTER TABLE `sustentavel`
  ADD KEY `codigo_produto` (`codigo_produto`);

--
-- Índices para tabela `telefone_cliente`
--
ALTER TABLE `telefone_cliente`
  ADD PRIMARY KEY (`telefone`),
  ADD KEY `CPF_cliente` (`CPF_cliente`);

--
-- Índices para tabela `telefone_empresa`
--
ALTER TABLE `telefone_empresa`
  ADD PRIMARY KEY (`telefone`),
  ADD KEY `CNPJ_empre` (`CNPJ_empre`);

--
-- Índices para tabela `telefone_vendedor`
--
ALTER TABLE `telefone_vendedor`
  ADD PRIMARY KEY (`telefone`),
  ADD KEY `CPF_cliente` (`CPF_cliente`);

--
-- Índices para tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`CPF`),
  ADD KEY `fk_cnpj_emp` (`CNPJ_emp`),
  ADD KEY `fk_cod_depto` (`cod_depto`),
  ADD KEY `fk_cpf_chef` (`CPF_chef`);

--
-- Índices para tabela `vendedor_produto`
--
ALTER TABLE `vendedor_produto`
  ADD KEY `cod_prod` (`cod_prod`),
  ADD KEY `CPF_vend` (`CPF_vend`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cliente_pedido`
--
ALTER TABLE `cliente_pedido`
  ADD CONSTRAINT `cliente_pedido_ibfk_1` FOREIGN KEY (`CPF_cli`) REFERENCES `cliente` (`CPF`),
  ADD CONSTRAINT `cliente_pedido_ibfk_2` FOREIGN KEY (`num_pedido`) REFERENCES `pedido` (`numero`);

--
-- Limitadores para a tabela `cliente_produto`
--
ALTER TABLE `cliente_produto`
  ADD CONSTRAINT `cliente_produto_ibfk_1` FOREIGN KEY (`CPF_cli`) REFERENCES `cliente` (`CPF`),
  ADD CONSTRAINT `cliente_produto_ibfk_2` FOREIGN KEY (`cod_prod`) REFERENCES `produto` (`Codigo`);

--
-- Limitadores para a tabela `comercial`
--
ALTER TABLE `comercial`
  ADD CONSTRAINT `comercial_ibfk_1` FOREIGN KEY (`codigo_produto`) REFERENCES `produto` (`Codigo`);

--
-- Limitadores para a tabela `dependente`
--
ALTER TABLE `dependente`
  ADD CONSTRAINT `dependente_ibfk_1` FOREIGN KEY (`cpf_vendedor`) REFERENCES `vendedor` (`CPF`);

--
-- Limitadores para a tabela `email_cliente`
--
ALTER TABLE `email_cliente`
  ADD CONSTRAINT `email_cliente_ibfk_1` FOREIGN KEY (`CPF_cliente`) REFERENCES `cliente` (`CPF`);

--
-- Limitadores para a tabela `email_empresa`
--
ALTER TABLE `email_empresa`
  ADD CONSTRAINT `email_empresa_ibfk_1` FOREIGN KEY (`CNPJ_empre`) REFERENCES `empresa` (`CNPJ`);

--
-- Limitadores para a tabela `email_vendedor`
--
ALTER TABLE `email_vendedor`
  ADD CONSTRAINT `email_vendedor_ibfk_1` FOREIGN KEY (`CPF_cliente`) REFERENCES `cliente` (`CPF`);

--
-- Limitadores para a tabela `empresa_cliente`
--
ALTER TABLE `empresa_cliente`
  ADD CONSTRAINT `empresa_cliente_ibfk_1` FOREIGN KEY (`CPF_cli`) REFERENCES `cliente` (`CPF`),
  ADD CONSTRAINT `empresa_cliente_ibfk_2` FOREIGN KEY (`CNPJ_emp`) REFERENCES `empresa` (`CNPJ`);

--
-- Limitadores para a tabela `empresa_pedido`
--
ALTER TABLE `empresa_pedido`
  ADD CONSTRAINT `empresa_pedido_ibfk_1` FOREIGN KEY (`CNPJ_emp`) REFERENCES `empresa` (`CNPJ`),
  ADD CONSTRAINT `empresa_pedido_ibfk_2` FOREIGN KEY (`num_pedido`) REFERENCES `pedido` (`numero`);

--
-- Limitadores para a tabela `empresa_produto`
--
ALTER TABLE `empresa_produto`
  ADD CONSTRAINT `empresa_produto_ibfk_1` FOREIGN KEY (`cod_prod`) REFERENCES `produto` (`Codigo`),
  ADD CONSTRAINT `empresa_produto_ibfk_2` FOREIGN KEY (`CNPJ_emp`) REFERENCES `empresa` (`CNPJ`);

--
-- Limitadores para a tabela `hospitalar`
--
ALTER TABLE `hospitalar`
  ADD CONSTRAINT `hospitalar_ibfk_1` FOREIGN KEY (`codigo_produto`) REFERENCES `produto` (`Codigo`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`cpf_cliente`) REFERENCES `cliente` (`CPF`);

--
-- Limitadores para a tabela `pedido_produto`
--
ALTER TABLE `pedido_produto`
  ADD CONSTRAINT `pedido_produto_ibfk_1` FOREIGN KEY (`cod_prod`) REFERENCES `produto` (`Codigo`),
  ADD CONSTRAINT `pedido_produto_ibfk_2` FOREIGN KEY (`num_pedido`) REFERENCES `pedido` (`numero`);

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`cpf_cliente`) REFERENCES `cliente` (`CPF`);

--
-- Limitadores para a tabela `sustentavel`
--
ALTER TABLE `sustentavel`
  ADD CONSTRAINT `sustentavel_ibfk_1` FOREIGN KEY (`codigo_produto`) REFERENCES `produto` (`Codigo`);

--
-- Limitadores para a tabela `telefone_cliente`
--
ALTER TABLE `telefone_cliente`
  ADD CONSTRAINT `telefone_cliente_ibfk_1` FOREIGN KEY (`CPF_cliente`) REFERENCES `cliente` (`CPF`);

--
-- Limitadores para a tabela `telefone_empresa`
--
ALTER TABLE `telefone_empresa`
  ADD CONSTRAINT `telefone_empresa_ibfk_1` FOREIGN KEY (`CNPJ_empre`) REFERENCES `empresa` (`CNPJ`);

--
-- Limitadores para a tabela `telefone_vendedor`
--
ALTER TABLE `telefone_vendedor`
  ADD CONSTRAINT `telefone_vendedor_ibfk_1` FOREIGN KEY (`CPF_cliente`) REFERENCES `cliente` (`CPF`);

--
-- Limitadores para a tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD CONSTRAINT `fk_cnpj_emp` FOREIGN KEY (`CNPJ_emp`) REFERENCES `empresa` (`CNPJ`),
  ADD CONSTRAINT `fk_cod_depto` FOREIGN KEY (`cod_depto`) REFERENCES `departamento` (`codigo`),
  ADD CONSTRAINT `fk_cpf_chef` FOREIGN KEY (`CPF_chef`) REFERENCES `vendedor` (`CPF`);

--
-- Limitadores para a tabela `vendedor_produto`
--
ALTER TABLE `vendedor_produto`
  ADD CONSTRAINT `vendedor_produto_ibfk_1` FOREIGN KEY (`cod_prod`) REFERENCES `produto` (`Codigo`),
  ADD CONSTRAINT `vendedor_produto_ibfk_2` FOREIGN KEY (`CPF_vend`) REFERENCES `vendedor` (`CPF`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
