CREATE TABLE `hmtf_db`.`users` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(170) NOT NULL,
  `email` VARCHAR(80) NOT NULL,
  `senha` LONGTEXT NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `ultimo_acesso` DATETIME NOT NULL DEFAULT '1990-01-01 00:00:01',
  `token` LONGTEXT NULL,
  `data_expiracao_token` DATETIME NOT NULL DEFAULT '1990-01-01 00:00:05',
  `ativo` TINYINT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB;
