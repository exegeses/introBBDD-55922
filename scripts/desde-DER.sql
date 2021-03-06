-- MySQL Script generated by MySQL Workbench
-- Mon Dec 27 15:56:54 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema prueba
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema prueba
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `prueba` DEFAULT CHARACTER SET utf8 ;
USE `prueba` ;

-- -----------------------------------------------------
-- Table `prueba`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prueba`.`categorias` (
  `idCategoria` TINYINT(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catNombre` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `prueba`.`marcas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prueba`.`marcas` (
  `idMarca` TINYINT(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mkNombre` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idMarca`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `prueba`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prueba`.`productos` (
  `idProducto` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `prdNombre` VARCHAR(78) NOT NULL,
  `prdPrecio` DOUBLE(8,2) UNSIGNED NOT NULL,
  `idMarca` TINYINT(255) NOT NULL,
  `idCategoria` TINYINT(255) UNSIGNED NOT NULL,
  `prdDescripcion` TEXT(550) NOT NULL,
  `prdImagen` VARCHAR(45) NOT NULL,
  `prdActivo` TINYINT(1) NOT NULL,
  `categorias_idCategoria` TINYINT(255) UNSIGNED NOT NULL,
  `marcas_idMarca` TINYINT(255) UNSIGNED NOT NULL,
  PRIMARY KEY (`idProducto`, `categorias_idCategoria`, `marcas_idMarca`),
  INDEX `fk_productos_categorias_idx` (`categorias_idCategoria` ASC) VISIBLE,
  INDEX `fk_productos_marcas1_idx` (`marcas_idMarca` ASC) VISIBLE,
  CONSTRAINT `fk_productos_categorias`
    FOREIGN KEY (`categorias_idCategoria`)
    REFERENCES `prueba`.`categorias` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_productos_marcas1`
    FOREIGN KEY (`marcas_idMarca`)
    REFERENCES `prueba`.`marcas` (`idMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
