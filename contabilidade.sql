# Host: localhost  (Version 5.6.17)
# Date: 2018-11-21 20:00:52
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "bairro"
#

DROP TABLE IF EXISTS `bairro`;
CREATE TABLE `bairro` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `bai_nome` varchar(100) DEFAULT NULL,
  UNIQUE KEY `id` (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

#
# Structure for table "cidade"
#

DROP TABLE IF EXISTS `cidade`;
CREATE TABLE `cidade` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `cid_nome` varchar(100) DEFAULT NULL,
  `cid_uf` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

#
# Structure for table "cliente"
#

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cli_nome` varchar(150) DEFAULT NULL,
  `cli_cpf` varchar(50) DEFAULT NULL,
  `cli_cnpj` varchar(80) DEFAULT NULL,
  `cli_rg` varchar(50) DEFAULT NULL,
  `cli_ie` varchar(80) DEFAULT NULL,
  `cli_tel` varchar(30) DEFAULT NULL,
  `cli_cel` varchar(30) DEFAULT NULL,
  `cli_nasc` varchar(15) DEFAULT NULL,
  `cli_abertura` varchar(15) DEFAULT NULL,
  `cli_bairro` int(11) DEFAULT NULL,
  `cli_cidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cli_bairro` (`cli_bairro`),
  KEY `cli_cidade` (`cli_cidade`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

#
# Structure for table "historico_operacao"
#

DROP TABLE IF EXISTS `historico_operacao`;
CREATE TABLE `historico_operacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hp_mes` varchar(30) DEFAULT NULL,
  `hp_cliente` int(11) DEFAULT NULL,
  `hp_operacao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hp_cliente` (`hp_cliente`),
  KEY `hp_operacao` (`hp_operacao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Structure for table "operacao"
#

DROP TABLE IF EXISTS `operacao`;
CREATE TABLE `operacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `op_tipo` varchar(40) DEFAULT NULL,
  `op_descricao` varchar(100) DEFAULT NULL,
  `op_valor` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
