CREATE TABLE `hmtf_db`.`permissions` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `usuario` BIGINT NOT NULL,
  `funcionalidade` BIGINT NOT NULL,
  `leitura` TINYINT NOT NULL,
  `escrita` TINYINT NOT NULL,
  `atualizacao` TINYINT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

ALTER TABLE `hmtf_db`.`permissions`
ADD INDEX `fk_permissions_user_idx` (`usuario` ASC),
ADD INDEX `fk_permissions_feature_idx` (`funcionalidade` ASC);
ALTER TABLE `hmtf_db`.`permissions`
ADD CONSTRAINT `fk_permissions_user`
  FOREIGN KEY (`usuario`)
  REFERENCES `hmtf_db`.`users` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_permissions_feature`
  FOREIGN KEY (`funcionalidade`)
  REFERENCES `hmtf_db`.`features` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;