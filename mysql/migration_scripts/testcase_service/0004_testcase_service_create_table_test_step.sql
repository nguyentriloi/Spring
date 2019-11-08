-- -----------------------------------------------------
-- Table `testcase_service`.`test_step`
-- -----------------------------------------------------

-- +goose Up
CREATE TABLE IF NOT EXISTS `testcase_service`.`test_step` (
  `test_step_id` VARCHAR(36) NOT NULL,
  `testcase_id` VARCHAR(36) NOT NULL,
  `name` TEXT NOT NULL,
  `expected` TEXT NULL,
  `data` VARCHAR(255) NOT NULL,
  `actual` TEXT NULL,
  `created_timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_timestamp` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` VARCHAR(36) NOT NULL,
  `updated_by` VARCHAR(36) DEFAULT NULL,
  PRIMARY KEY (`test_step_id`))
ENGINE = InnoDB;

CREATE INDEX `IDX_01` ON `testcase_service`.`test_step` (`created_by` ASC);

CREATE INDEX `IDX_02` ON `testcase_service`.`test_step` (`updated_by` ASC);

CREATE INDEX `IDX_03` ON `testcase_service`.`test_step` (`created_timestamp` ASC);

-- +goose Down
DROP TABLE `testcase_service`.`test_step`;
