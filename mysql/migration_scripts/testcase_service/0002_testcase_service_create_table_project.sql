-- -----------------------------------------------------
-- Table `testcase_service`.`project`
-- -----------------------------------------------------

-- +goose Up
CREATE TABLE IF NOT EXISTS `testcase_service`.`project` (
  `project_id` varchar(36) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(45) NOT NULL UNIQUE,
  `created_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(36) NOT NULL,
  `updated_by` varchar(36) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`project_id`))
ENGINE = InnoDB;

CREATE INDEX `IDX_01` USING BTREE ON `testcase_service`.`project` (`code` ASC);

CREATE INDEX `IDX_02` ON `testcase_service`.`project` (`created_by` ASC);

CREATE INDEX `IDX_03` ON `testcase_service`.`project` (`updated_by` ASC);

CREATE INDEX `IDX_04` ON `testcase_service`.`project` (`created_timestamp` ASC);

-- +goose Down
DROP TABLE `testcase_service`.`project`;
