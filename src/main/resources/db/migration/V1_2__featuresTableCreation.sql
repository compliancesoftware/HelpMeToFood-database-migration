CREATE TABLE `hmtf_db`.`features` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `funcionalidade` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `funcionalidade_UNIQUE` (`funcionalidade` ASC))
ENGINE = InnoDB;