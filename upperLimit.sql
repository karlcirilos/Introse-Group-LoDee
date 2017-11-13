-- MySQL Script generated by MySQL Workbench
-- 11/02/17 00:50:32
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema upperLimit
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema upperLimit
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `upperLimit` DEFAULT CHARACTER SET utf8 ;
USE `upperLimit` ;

-- -----------------------------------------------------
-- Table `upperLimit`.`Agent`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `upperLimit`.`Agent` (
  `agentId` INT NOT NULL,
  `Name` VARCHAR(700) NOT NULL,
  `addressLine1` VARCHAR(45) NOT NULL,
  `addressLine2` VARCHAR(45) NULL,
  `phoneNumber1` VARCHAR(45) NOT NULL,
  `phoneNumber2` VARCHAR(45) NULL,
  `email_address` VARCHAR(45) NOT NULL,
  `password` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`agentId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `upperLimit`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `upperLimit`.`Client` (
  `clientId` INT NOT NULL AUTO_INCREMENT,
  `agentId` INT NOT NULL,
  `name` VARCHAR(700) NOT NULL,
  `addressLine1` VARCHAR(45) NOT NULL,
  `addressLine2` VARCHAR(45) NULL,
  `province` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `postalCode` VARCHAR(20) NULL,
  `phoneNumber1` VARCHAR(15) NOT NULL,
  `phoneNumber2` VARCHAR(15) NULL,
  `email_address` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`clientId`),
  INDEX `fk_Client_Agent_idx` (`agentId` ASC),
  CONSTRAINT `fk_Client_Agent`
    FOREIGN KEY (`agentId`)
    REFERENCES `upperLimit`.`Agent` (`agentId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `upperLimit`.`CarInfo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `upperLimit`.`CarInfo` (
  `carId` INT NOT NULL AUTO_INCREMENT,
  `clientId` INT NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `modelYear` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `value` DECIMAL(15,5) NOT NULL,
  PRIMARY KEY (`carId`),
  INDEX `fk_CarInfo_Client1_idx` (`clientId` ASC),
  CONSTRAINT `fk_CarInfo_Client1`
    FOREIGN KEY (`clientId`)
    REFERENCES `upperLimit`.`Client` (`clientId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
