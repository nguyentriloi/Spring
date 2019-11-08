-- -----------------------------------------------------
-- Table `testcase_service`.`suite`
-- -----------------------------------------------------

-- +goose Up
CREATE TABLE IF NOT EXISTS `testcase_service`.`suite` (
  `suite_id` VARCHAR(36) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  `code` VARCHAR(45) NOT NULL UNIQUE,
  `project_id` VARCHAR(36) NOT NULL,
  `created_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` VARCHAR(36) NOT NULL,
  `updated_by` VARCHAR(36) DEFAULT NULL,
  PRIMARY KEY (`suite_id`))
ENGINE = InnoDB;

CREATE INDEX `IDX_01` USING BTREE ON `testcase_service`.`suite` (`code` ASC);

CREATE INDEX `IDX_02` USING BTREE ON `testcase_service`.`suite` (`project_id` ASC);

-- +goose Down
DROP TABLE `testcase_service`.`suite`;
