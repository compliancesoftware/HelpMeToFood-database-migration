CREATE TABLE `hmtf_db`.`users_permissions` (
  `id` BIGINT NOT NULL,
  `user` BIGINT NOT NULL,
  `permission` BIGINT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;