CREATE DATABASE  IF NOT EXISTS `sigat` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sigat`;

--
-- Table structure for table `pmocorrencia`
--

DROP TABLE IF EXISTS `pmocorrencia`;

CREATE TABLE `pmocorrencia` (
  `idOcorrencia` int(11) NOT NULL,
  `idPessoa` int(11) NOT NULL,
  PRIMARY KEY  (`idOcorrencia`,`idPessoa`),
  KEY `fk_Ocorrencia_has_Pessoa_Pessoa2` (`idPessoa`),
  KEY `fk_Ocorrencia_has_Pessoa_Ocorrencia2` (`idOcorrencia`),
  CONSTRAINT `fk_Ocorrencia_has_Pessoa_Ocorrencia2` FOREIGN KEY (`idOcorrencia`) REFERENCES `ocorrencia` (`idOcorrencia`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Ocorrencia_has_Pessoa_Pessoa2` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`idPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `condicaotempo`
--

DROP TABLE IF EXISTS `condicaotempo`;
CREATE TABLE `condicaotempo` (
  `idCondicaoTempo` int(11) NOT NULL auto_increment,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY  (`idCondicaoTempo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `condicaotempo`
--

LOCK TABLES `condicaotempo` WRITE;
/*!40000 ALTER TABLE `condicaotempo` DISABLE KEYS */;
/*!40000 ALTER TABLE `condicaotempo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoocorrencia`
--

DROP TABLE IF EXISTS `tipoocorrencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoocorrencia` (
  `idTipoOcorrencia` int(11) NOT NULL auto_increment,
  `descricao` varchar(45) default NULL,
  PRIMARY KEY  (`idTipoOcorrencia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoocorrencia`
--

LOCK TABLES `tipoocorrencia` WRITE;
/*!40000 ALTER TABLE `tipoocorrencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipoocorrencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sinalizacaovia`
--

DROP TABLE IF EXISTS `sinalizacaovia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sinalizacaovia` (
  `idSinalizacaoVia` int(11) NOT NULL auto_increment,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY  (`idSinalizacaoVia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinalizacaovia`
--

LOCK TABLES `sinalizacaovia` WRITE;
/*!40000 ALTER TABLE `sinalizacaovia` DISABLE KEYS */;
/*!40000 ALTER TABLE `sinalizacaovia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL auto_increment,
  `logradouro` varchar(45) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `cep` varchar(9) default NULL,
  `idCidade` int(11) NOT NULL,
  PRIMARY KEY  (`idEndereco`),
  KEY `FK_Cidade` (`idCidade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'Praça da Matriz, 59','Centro','49530-000',3),(3,'Rua Percilio Andrade, 2100','Centro','49500-000',1),(4,'Povoado Cajaiba','zona rural','49500-000',1),(5,'Rua Jose Ramos','Centro','49570-000',5),(43,'Avenida A','Centro','56565',76),(44,'Avenida I','centro','49555-000',77),(51,'Rua Santa Cruz','Centro','49500-000',88),(63,'Povoado Mangueira','zona Rural','49500-000',0),(64,'teste','teste','49500000',0),(65,'teste','teste','49500000',0),(66,'Avenida Treze de Junho','centro','49500-000',1),(67,'Rua D','olaria','43256-009',4),(68,'rua J','olaria','43256-009',99),(71,'teste','teste','49500000',0),(72,'teste','teste','49500000',0),(73,'teste','teste','49500000',0),(74,'teste','teste','49500000',0),(78,'rua D','conjunto veneza','43256-009',4),(79,'rua da pessoa 01','teste','49500000',1),(80,'Povoado Mangueira','zona Rural','49500000',1),(81,'teste','teste','49500000',1),(82,'teste','teste','49500000',1),(83,'teste','teste','49500000',1),(84,'teste','teste','49500000',1);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veiculo` (
  `idVeiculo` int(11) NOT NULL auto_increment,
  `renavan` int(11) NOT NULL,
  `placa` char(7) NOT NULL,
  `marca` char(20) default NULL,
  `modelo` char(30) default NULL,
  `anoFabricacao` int(11) default NULL,
  `tipo` char(20) default NULL,
  `idProprietario` int(11) NOT NULL,
  PRIMARY KEY  (`idVeiculo`),
  KEY `FK_ProprietarioVeiculo` (`idProprietario`),
  CONSTRAINT `FK_ProprietarioVeiculo` FOREIGN KEY (`idProprietario`) REFERENCES `pessoa` (`idPessoa`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo`
--

LOCK TABLES `veiculo` WRITE;
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
INSERT INTO `veiculo` VALUES (1,123,'hzv0001','chevrolet','corsa',2012,'1',1),(2,111,'HZW6800','Fiat','Uno Mille',1995,'Automóvel',1),(3,233542453,'aaa1234','honda','biz',2012,'moto',1),(4,65465,'iag6686','fiat','siena',2012,'carro',1),(5,12476,'aaa4444','21','biz',2012,'moto',2);
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envolvido`
--

DROP TABLE IF EXISTS `envolvido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `envolvido` (
  `idOcorrencia` int(11) NOT NULL,
  `idPessoa` int(11) NOT NULL,
  PRIMARY KEY  (`idOcorrencia`,`idPessoa`),
  KEY `fk_Ocorrencia_has_Pessoa_Pessoa1` (`idPessoa`),
  KEY `fk_Ocorrencia_has_Pessoa_Ocorrencia1` (`idOcorrencia`),
  CONSTRAINT `fk_Ocorrencia_has_Pessoa_Ocorrencia1` FOREIGN KEY (`idOcorrencia`) REFERENCES `ocorrencia` (`idOcorrencia`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Ocorrencia_has_Pessoa_Pessoa1` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`idPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envolvido`
--

LOCK TABLES `envolvido` WRITE;
/*!40000 ALTER TABLE `envolvido` DISABLE KEYS */;
/*!40000 ALTER TABLE `envolvido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condicaovia`
--

DROP TABLE IF EXISTS `condicaovia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condicaovia` (
  `idCondicaoVia` int(11) NOT NULL auto_increment,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY  (`idCondicaoVia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condicaovia`
--

LOCK TABLES `condicaovia` WRITE;
/*!40000 ALTER TABLE `condicaovia` DISABLE KEYS */;
/*!40000 ALTER TABLE `condicaovia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculoocorrencia`
--

DROP TABLE IF EXISTS `veiculoocorrencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veiculoocorrencia` (
  `idOcorrencia` int(11) NOT NULL,
  `idVeiculo` int(11) NOT NULL,
  PRIMARY KEY  (`idOcorrencia`,`idVeiculo`),
  KEY `fk_Ocorrencia_has_Veiculo_Veiculo1` (`idVeiculo`),
  KEY `fk_Ocorrencia_has_Veiculo_Ocorrencia1` (`idOcorrencia`),
  CONSTRAINT `fk_Ocorrencia_has_Veiculo_Ocorrencia1` FOREIGN KEY (`idOcorrencia`) REFERENCES `ocorrencia` (`idOcorrencia`),
  CONSTRAINT `fk_Ocorrencia_has_Veiculo_Veiculo1` FOREIGN KEY (`idVeiculo`) REFERENCES `veiculo` (`idVeiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculoocorrencia`
--

LOCK TABLES `veiculoocorrencia` WRITE;
/*!40000 ALTER TABLE `veiculoocorrencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `veiculoocorrencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmtrote`
--

DROP TABLE IF EXISTS `pmtrote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmtrote` (
  `idPessoa` int(11) NOT NULL,
  `idTrote` int(11) NOT NULL,
  PRIMARY KEY  (`idPessoa`,`idTrote`),
  KEY `fk_Pessoa_has_Trote_Trote1` (`idTrote`),
  KEY `fk_Pessoa_has_Trote_Pessoa1` (`idPessoa`),
  CONSTRAINT `fk_Pessoa_has_Trote_Pessoa1` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`idPessoa`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Pessoa_has_Trote_Trote1` FOREIGN KEY (`idTrote`) REFERENCES `trote` (`idTrote`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmtrote`
--

LOCK TABLES `pmtrote` WRITE;
/*!40000 ALTER TABLE `pmtrote` DISABLE KEYS */;
/*!40000 ALTER TABLE `pmtrote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `idEstado` int(11) NOT NULL auto_increment,
  `nome` varchar(45) default NULL,
  `uf` varchar(2),
  PRIMARY KEY  (`idEstado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `idCidade` int(11) NOT NULL auto_increment,
  `idEstado` int(11) default NULL,
  `nome` varchar(45) default NULL,
  PRIMARY KEY  (`idCidade`),
  KEY `FK_Estado` (`idEstado`),
  CONSTRAINT `FK_Estado` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`idEstado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `trote`
--

DROP TABLE IF EXISTS `trote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trote` (
  `idTrote` int(11) NOT NULL auto_increment,
  `data` datetime NOT NULL,
  `telfoneRequisitante` varchar(45) NOT NULL,
  `deslocouViatura` tinyint(1) NOT NULL,
  `idEndereco` int(11) default NULL,
  PRIMARY KEY  (`idTrote`),
  KEY `fk_Trote_Endereco1` (`idEndereco`),
  CONSTRAINT `fk_Trote_Endereco1` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trote`
--

LOCK TABLES `trote` WRITE;
/*!40000 ALTER TABLE `trote` DISABLE KEYS */;
INSERT INTO `trote` VALUES (1,'2012-01-20 00:00:00','7999878899',1,1),(2,'2012-01-20 00:00:00','7999878899',1,5);
/*!40000 ALTER TABLE `trote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefone` (
  `idTelefone` int(11) NOT NULL auto_increment,
  `idPessoa` int(11) NOT NULL,
  `ddd` int(11) default NULL,
  `numero` int(11) default NULL,
  PRIMARY KEY  (`idTelefone`),
  KEY `fk_Telefone_Pessoa1` (`idPessoa`),
  CONSTRAINT `fk_Telefone_Pessoa1` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`idPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (1,1,79,99444242),(2,1,79,34491472),(3,2,79,99080909),(4,2,77,99998789);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa` (
  `idPessoa` int(11) NOT NULL auto_increment,
  `cnh` int(11) NOT NULL,
  `cpf` int(11) NOT NULL,
  `nome` char(200) NOT NULL,
  `email` varchar(450) default NULL,
  `dataNascimento` datetime NOT NULL,
  `idEndereco` int(11) NOT NULL,
  `isPM` tinyint(1) default NULL,
  PRIMARY KEY  (`idPessoa`),
  KEY `FK_EnderecoPessoa` (`idEndereco`),
  CONSTRAINT `FK_EnderecoPessoa` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,123,1234,'Fágner Nascimento Cunha','fagnernc@gmail.com','1989-05-31 00:00:00',1,0),(2,111,33,'Jessica da Silva Santos','jessica.ufs@hotmail.com','1991-07-29 00:00:00',1,0),(3,124332,3309,'Willams da Paixão Cunha','mshark2236@hotmail.com','1990-01-20 00:00:00',5,0),(4,122434,339090304,'Jessica Santos','sika_agenial@hotmail.com','1900-10-10 00:00:00',63,1),(8,122434,339090304,'francisco','francisco@email.com','1900-10-10 00:00:00',71,0),(12,12345,12345,'Pedro Murilo','murilo@email.com','2008-10-27 00:00:00',68,0),(13,987897,87970,'José de Alencar','teste@teste.com','1900-10-10 00:00:00',1,0),(18,9090909,990900,'TESTE','teste@teste.com','1900-10-10 00:00:00',83,0),(19,122434,339090304,'TESTE00','sika_agenial@hotmail.com','1900-10-10 00:00:00',84,0);
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocorrencia`
--

DROP TABLE IF EXISTS `ocorrencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ocorrencia` (
  `idOcorrencia` int(11) NOT NULL auto_increment,
  `data` datetime default NULL,
  `gravidade` varchar(45) default NULL,
  `possuiVitimas` tinyint(1) default NULL COMMENT '0 = Não há Vítimas; 1 = Há Vítimas',
  `idEndereco` int(11) default NULL,
  `idCondicaoTempo` int(11) NOT NULL,
  `idCondicaoVia` int(11) NOT NULL,
  `idSinalizacaoVia` int(11) NOT NULL,
  `idTipoOcorrencia` int(11) NOT NULL,
  PRIMARY KEY  (`idOcorrencia`),
  KEY `FK_Endereco` (`idEndereco`),
  KEY `fk_Ocorrencia_condicaoTempo1` (`idCondicaoTempo`),
  KEY `fk_Ocorrencia_condicaoVia1` (`idCondicaoVia`),
  KEY `fk_Ocorrencia_sinalizacaoVia1` (`idSinalizacaoVia`),
  KEY `fk_Ocorrencia_TipoOcorrencia1` (`idTipoOcorrencia`),
  CONSTRAINT `FK_Endereco` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Ocorrencia_condicaoTempo1` FOREIGN KEY (`idCondicaoTempo`) REFERENCES `condicaotempo` (`idCondicaoTempo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ocorrencia_condicaoVia1` FOREIGN KEY (`idCondicaoVia`) REFERENCES `condicaovia` (`idCondicaoVia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ocorrencia_sinalizacaoVia1` FOREIGN KEY (`idSinalizacaoVia`) REFERENCES `sinalizacaovia` (`idSinalizacaoVia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ocorrencia_TipoOcorrencia1` FOREIGN KEY (`idTipoOcorrencia`) REFERENCES `tipoocorrencia` (`idTipoOcorrencia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocorrencia`
--

LOCK TABLES `ocorrencia` WRITE;
/*!40000 ALTER TABLE `ocorrencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ocorrencia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-09-17 12:17:26
