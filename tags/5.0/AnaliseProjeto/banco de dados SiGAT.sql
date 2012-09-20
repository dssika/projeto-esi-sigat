SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `SiGAT` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `SiGAT` ;

-- -----------------------------------------------------
-- Table `SiGAT`.`Estado`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `SiGAT`.`Estado` (
  `idEstado` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(45) NULL ,
  PRIMARY KEY (`idEstado`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SiGAT`.`Cidade`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `SiGAT`.`Cidade` (
  `idCidade` INT NOT NULL AUTO_INCREMENT ,
  `idEstado` INT NULL ,
  `nome` VARCHAR(45) NULL ,
  PRIMARY KEY (`idCidade`) ,
  INDEX `FK_Estado` (`idEstado` ASC) ,
  CONSTRAINT `FK_Estado`
    FOREIGN KEY (`idEstado` )
    REFERENCES `SiGAT`.`Estado` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SiGAT`.`Endereco`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `SiGAT`.`Endereco` (
  `idEndereco` INT NOT NULL ,
  `logradouro` VARCHAR(45) NOT NULL ,
  `bairro` VARCHAR(45) NOT NULL ,
  `cep` VARCHAR(9) NULL ,
  `idCidade` INT NOT NULL ,
  PRIMARY KEY (`idEndereco`) ,
  INDEX `FK_Cidade` (`idCidade` ASC) ,
  CONSTRAINT `FK_Cidade`
    FOREIGN KEY (`idCidade` )
    REFERENCES `SiGAT`.`Cidade` (`idCidade` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SiGAT`.`Pessoa`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `SiGAT`.`Pessoa` (
  `idPessoa` INT NOT NULL AUTO_INCREMENT ,
  `cnh` INT NOT NULL ,
  `cpf` INT(11) NOT NULL ,
  `nome` CHAR(200) NOT NULL ,
  `email` VARCHAR(450) NULL ,
  `dataNascimento` DATETIME NOT NULL ,
  `idEndereco` INT NOT NULL ,
  `isPM` TINYINT(1)  NULL ,
  PRIMARY KEY (`idPessoa`) ,
  INDEX `FK_EnderecoPessoa` (`idEndereco` ASC) ,
  CONSTRAINT `FK_EnderecoPessoa`
    FOREIGN KEY (`idEndereco` )
    REFERENCES `SiGAT`.`Endereco` (`idEndereco` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SiGAT`.`Veiculo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `SiGAT`.`Veiculo` (
  `idVeiculo` INT NOT NULL AUTO_INCREMENT ,
  `renavan` INT NOT NULL ,
  `placa` CHAR(7) NOT NULL ,
  `marca` CHAR(20) NULL ,
  `modelo` CHAR(30) NULL ,
  `anoFabricacao` DATE NULL ,
  `tipo` CHAR(20) NULL ,
  `idProprietario` INT NOT NULL ,
  PRIMARY KEY (`idVeiculo`) ,
  INDEX `FK_ProprietarioVeiculo` (`idProprietario` ASC) ,
  CONSTRAINT `FK_ProprietarioVeiculo`
    FOREIGN KEY (`idProprietario` )
    REFERENCES `SiGAT`.`Pessoa` (`idPessoa` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SiGAT`.`Telefone`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `SiGAT`.`Telefone` (
  `idTelefone` INT NOT NULL AUTO_INCREMENT ,
  `ddd` INT NULL ,
  `numero` INT NULL ,
  PRIMARY KEY (`idTelefone`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SiGAT`.`PessoaTelefone`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `SiGAT`.`PessoaTelefone` (
  `idPessoa` INT NOT NULL ,
  `idTelefone` INT NOT NULL ,
  PRIMARY KEY (`idPessoa`, `idTelefone`) ,
  INDEX `fk_Pessoa_has_Telefone_Telefone1` (`idTelefone` ASC) ,
  INDEX `fk_Pessoa_has_Telefone_Pessoa1` (`idPessoa` ASC) ,
  CONSTRAINT `fk_Pessoa_has_Telefone_Pessoa1`
    FOREIGN KEY (`idPessoa` )
    REFERENCES `SiGAT`.`Pessoa` (`idPessoa` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Pessoa_has_Telefone_Telefone1`
    FOREIGN KEY (`idTelefone` )
    REFERENCES `SiGAT`.`Telefone` (`idTelefone` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SiGAT`.`Ocorrencia`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `SiGAT`.`Ocorrencia` (
  `idOcorrencia` INT NOT NULL AUTO_INCREMENT ,
  `tipo` VARCHAR(45) NULL ,
  `data` DATETIME NULL ,
  `gravidade` VARCHAR(45) NULL ,
  `possuiVitimas` TINYINT(1)  NULL COMMENT '0 = Não há Vítimas; 1 = Há Vítimas' ,
  `idEndereco` INT NULL ,
  `condicoesTempo` VARCHAR(45) NULL ,
  `condicoesVia` VARCHAR(45) NULL ,
  `sinalizacaoVia` VARCHAR(45) NULL ,
  PRIMARY KEY (`idOcorrencia`) ,
  INDEX `FK_Endereco` (`idEndereco` ASC) ,
  CONSTRAINT `FK_Endereco`
    FOREIGN KEY (`idEndereco` )
    REFERENCES `SiGAT`.`Endereco` (`idEndereco` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SiGAT`.`Envolvido`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `SiGAT`.`Envolvido` (
  `idOcorrencia` INT NOT NULL ,
  `idPessoa` INT NOT NULL ,
  PRIMARY KEY (`idOcorrencia`, `idPessoa`) ,
  INDEX `fk_Ocorrencia_has_Pessoa_Pessoa1` (`idPessoa` ASC) ,
  INDEX `fk_Ocorrencia_has_Pessoa_Ocorrencia1` (`idOcorrencia` ASC) ,
  CONSTRAINT `fk_Ocorrencia_has_Pessoa_Ocorrencia1`
    FOREIGN KEY (`idOcorrencia` )
    REFERENCES `SiGAT`.`Ocorrencia` (`idOcorrencia` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Ocorrencia_has_Pessoa_Pessoa1`
    FOREIGN KEY (`idPessoa` )
    REFERENCES `SiGAT`.`Pessoa` (`idPessoa` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SiGAT`.`Trote`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `SiGAT`.`Trote` (
  `idTrote` INT NOT NULL AUTO_INCREMENT ,
  `data` DATETIME NOT NULL ,
  `telfoneRequisitante` VARCHAR(45) NOT NULL ,
  `deslocouViatura` TINYINT(1)  NOT NULL ,
  `Endereco_idendereco` INT NULL ,
  PRIMARY KEY (`idTrote`) ,
  INDEX `fk_Trote_Endereco1` (`Endereco_idendereco` ASC) ,
  CONSTRAINT `fk_Trote_Endereco1`
    FOREIGN KEY (`Endereco_idendereco` )
    REFERENCES `SiGAT`.`Endereco` (`idEndereco` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SiGAT`.`VeiculoOcorrencia`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `SiGAT`.`VeiculoOcorrencia` (
  `idOcorrencia` INT NOT NULL ,
  `idVeiculo` INT NOT NULL ,
  PRIMARY KEY (`idOcorrencia`, `idVeiculo`) ,
  INDEX `fk_Ocorrencia_has_Veiculo_Veiculo1` (`idVeiculo` ASC) ,
  INDEX `fk_Ocorrencia_has_Veiculo_Ocorrencia1` (`idOcorrencia` ASC) ,
  CONSTRAINT `fk_Ocorrencia_has_Veiculo_Ocorrencia1`
    FOREIGN KEY (`idOcorrencia` )
    REFERENCES `SiGAT`.`Ocorrencia` (`idOcorrencia` )
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_Ocorrencia_has_Veiculo_Veiculo1`
    FOREIGN KEY (`idVeiculo` )
    REFERENCES `SiGAT`.`Veiculo` (`idVeiculo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SiGAT`.`PmOcorrencia`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `SiGAT`.`PmOcorrencia` (
  `idOcorrencia` INT NOT NULL ,
  `idPessoa` INT NOT NULL ,
  PRIMARY KEY (`idOcorrencia`, `idPessoa`) ,
  INDEX `fk_Ocorrencia_has_Pessoa_Pessoa2` (`idPessoa` ASC) ,
  INDEX `fk_Ocorrencia_has_Pessoa_Ocorrencia2` (`idOcorrencia` ASC) ,
  CONSTRAINT `fk_Ocorrencia_has_Pessoa_Ocorrencia2`
    FOREIGN KEY (`idOcorrencia` )
    REFERENCES `SiGAT`.`Ocorrencia` (`idOcorrencia` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Ocorrencia_has_Pessoa_Pessoa2`
    FOREIGN KEY (`idPessoa` )
    REFERENCES `SiGAT`.`Pessoa` (`idPessoa` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SiGAT`.`PmTrote`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `SiGAT`.`PmTrote` (
  `idPessoa` INT NOT NULL ,
  `idTrote` INT NOT NULL ,
  PRIMARY KEY (`idPessoa`, `idTrote`) ,
  INDEX `fk_Pessoa_has_Trote_Trote1` (`idTrote` ASC) ,
  INDEX `fk_Pessoa_has_Trote_Pessoa1` (`idPessoa` ASC) ,
  CONSTRAINT `fk_Pessoa_has_Trote_Pessoa1`
    FOREIGN KEY (`idPessoa` )
    REFERENCES `SiGAT`.`Pessoa` (`idPessoa` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Pessoa_has_Trote_Trote1`
    FOREIGN KEY (`idTrote` )
    REFERENCES `SiGAT`.`Trote` (`idTrote` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
