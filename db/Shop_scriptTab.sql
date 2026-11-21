-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema shop3cats
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema shop3cats
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `shop3cats` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
-- -----------------------------------------------------
-- Schema shop_yy
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema shop_yy
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `shop_yy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
USE `shop3cats` ;

-- -----------------------------------------------------
-- Table `shop3cats`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop3cats`.`categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `categories` TEXT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `shop3cats`.`manufacturers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop3cats`.`manufacturers` (
  `п»їid` INT NOT NULL AUTO_INCREMENT,
  `manufacturers` TEXT NOT NULL,
  PRIMARY KEY (`п»їid`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `shop3cats`.`orderstatus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop3cats`.`orderstatus` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `orderstatus` TEXT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `shop3cats`.`prodorders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop3cats`.`prodorders` (
  `orders` INT NOT NULL AUTO_INCREMENT,
  `date` TEXT NOT NULL,
  `delivery_date` TEXT NOT NULL,
  `address_pvs` INT NOT NULL,
  `users_id` INT NOT NULL,
  `code` INT NOT NULL,
  `orderstatus_id` INT NOT NULL,
  `proproduct_id` INT NOT NULL,
  PRIMARY KEY (`orders`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `shop3cats`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop3cats`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `product` TEXT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `shop3cats`.`proproduct`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop3cats`.`proproduct` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `article` TEXT NOT NULL,
  `product_name` INT NOT NULL,
  `unit` TEXT NOT NULL,
  `price` INT NOT NULL,
  `suppliers_id` INT NOT NULL,
  `manufacturers_id` INT NOT NULL,
  `categories_id` INT NOT NULL,
  `current_discount` INT NOT NULL,
  `quantity_in_stock` INT NOT NULL,
  `product_description` TEXT NULL DEFAULT NULL,
  `photo` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `product_name_idx` (`product_name` ASC) VISIBLE,
  INDEX `suppliers_id_idx` (`suppliers_id` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 31
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `shop3cats`.`pvs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop3cats`.`pvs` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `city ?_number` INT NOT NULL,
  `city` TEXT NOT NULL,
  `street` TEXT NOT NULL,
  `house_number` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 37
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `shop3cats`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop3cats`.`role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `role_name` TEXT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `shop3cats`.`suppliers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop3cats`.`suppliers` (
  `id` INT NULL DEFAULT NULL,
  `suppliers` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `shop3cats`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop3cats`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `role` INT NOT NULL,
  `first_name` TEXT NOT NULL,
  `name` TEXT NOT NULL,
  `second_name` TEXT NOT NULL,
  `login` TEXT NOT NULL,
  `password` TEXT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `role_idx` (`role` ASC) VISIBLE,
  CONSTRAINT `role`
    FOREIGN KEY (`role`)
    REFERENCES `shop3cats`.`users` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

USE `shop_yy` ;

-- -----------------------------------------------------
-- Table `shop_yy`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop_yy`.`categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `categories` TEXT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `shop_yy`.`manufacturers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop_yy`.`manufacturers` (
  `п»їid` INT NOT NULL AUTO_INCREMENT,
  `manufacturers` TEXT NOT NULL,
  PRIMARY KEY (`п»їid`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `shop_yy`.`orderstatus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop_yy`.`orderstatus` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `orderstatus` TEXT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `shop_yy`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop_yy`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `product` TEXT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `shop_yy`.`suppliers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop_yy`.`suppliers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `suppliers` TEXT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `shop_yy`.`proproduct`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop_yy`.`proproduct` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `article` VARCHAR(200) NOT NULL,
  `product_name` INT NOT NULL,
  `unit` TEXT NOT NULL,
  `price` INT NOT NULL,
  `suppliers_id` INT NOT NULL,
  `manufacturers_id` INT NOT NULL,
  `categories_id` INT NOT NULL,
  `current_discount` INT NOT NULL,
  `quantity_in_stock` INT NOT NULL,
  `product_description` VARCHAR(200) NULL DEFAULT NULL,
  `photo` VARCHAR(200) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `product_name_idx` (`product_name` ASC) VISIBLE,
  INDEX `suppliers_id_idx` (`suppliers_id` ASC) VISIBLE,
  INDEX `manufacturers_id_idx` (`manufacturers_id` ASC) VISIBLE,
  INDEX `categories_id_idx` (`categories_id` ASC) VISIBLE,
  CONSTRAINT `categories_id`
    FOREIGN KEY (`categories_id`)
    REFERENCES `shop_yy`.`categories` (`id`),
  CONSTRAINT `manufacturers_id`
    FOREIGN KEY (`manufacturers_id`)
    REFERENCES `shop_yy`.`manufacturers` (`п»їid`),
  CONSTRAINT `product_name`
    FOREIGN KEY (`product_name`)
    REFERENCES `shop_yy`.`products` (`id`),
  CONSTRAINT `suppliers_id`
    FOREIGN KEY (`suppliers_id`)
    REFERENCES `shop_yy`.`suppliers` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 31
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `shop_yy`.`pvs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop_yy`.`pvs` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `city ?_number` INT NOT NULL,
  `city` TEXT NOT NULL,
  `street` TEXT NOT NULL,
  `house_number` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 37
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `shop_yy`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop_yy`.`role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `role_name` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `shop_yy`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop_yy`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `role` INT NOT NULL,
  `first_name` TEXT NOT NULL,
  `name` TEXT NOT NULL,
  `second_name` TEXT NOT NULL,
  `login` VARCHAR(200) NOT NULL,
  `password` VARBINARY(200) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `role_idx` (`role` ASC) VISIBLE,
  CONSTRAINT `role`
    FOREIGN KEY (`role`)
    REFERENCES `shop_yy`.`role` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `shop_yy`.`prodorders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop_yy`.`prodorders` (
  `orders` INT NOT NULL AUTO_INCREMENT,
  `date` TEXT NOT NULL,
  `delivery_date` TEXT NOT NULL,
  `address_pvs` INT NOT NULL,
  `users_id` INT NOT NULL,
  `code` INT NOT NULL,
  `orderstatus_id` INT NOT NULL,
  `proproduct_id` INT NOT NULL,
  PRIMARY KEY (`orders`),
  INDEX `user_id_idx` (`users_id` ASC) VISIBLE,
  INDEX `orderstatus_id_idx` (`orderstatus_id` ASC) VISIBLE,
  INDEX `proproduct_id_idx` (`proproduct_id` ASC) VISIBLE,
  INDEX `pvz_idx` (`address_pvs` ASC) VISIBLE,
  CONSTRAINT `orderstatus_id`
    FOREIGN KEY (`orderstatus_id`)
    REFERENCES `shop_yy`.`orderstatus` (`id`),
  CONSTRAINT `proproduct_id`
    FOREIGN KEY (`proproduct_id`)
    REFERENCES `shop_yy`.`proproduct` (`id`),
  CONSTRAINT `pvz`
    FOREIGN KEY (`address_pvs`)
    REFERENCES `shop_yy`.`pvs` (`id`),
  CONSTRAINT `user_id`
    FOREIGN KEY (`users_id`)
    REFERENCES `shop_yy`.`users` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
