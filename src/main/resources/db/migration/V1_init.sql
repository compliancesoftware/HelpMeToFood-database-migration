CREATE TABLE `hmtf_db`.`permissions` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `funcao` VARCHAR(10) NOT NULL DEFAULT 'Leitura',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC))
ENGINE = InnoDB;