-- -----------------------------------------------------
-- Schema testcase_service
-- -----------------------------------------------------
-- +goose Up
CREATE SCHEMA IF NOT EXISTS `testcase_service` DEFAULT CHARACTER SET utf8mb4 ;
USE `testcase_service` ;

-- -----------------------------------------------------
-- Table `testcase_service`.`testcase`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `testcase_service`.`testcase` (
  `testcase_id` VARCHAR(36) NOT NULL,
  `automation_type` TINYINT(2) DEFAULT NULL,
  `name` VARCHAR(255) NOT NULL,
  `description` text NULL DEFAULT NULL,
  `project_id` VARCHAR(36) NOT NULL,
  `suite_id` VARCHAR(36) NOT NULL,
  `approval_status` TINYINT(2) DEFAULT NULL,
  `estimate` INT(10) DEFAULT NULL,
  `tags` VARCHAR(100) DEFAULT NULL,
  `run_status` TINYINT(2) DEFAULT NULL,
  `updated_timestamp` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` VARCHAR(36) DEFAULT NULL,
  `created_timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(36) NOT NULL,
  `goals` VARCHAR(255) DEFAULT NULL,
  `last_run` TIMESTAMP NULL DEFAULT NULL,
  `milestone_id` VARCHAR(36) DEFAULT NULL,
  `preconds` text,
  `priority` TINYINT(2) NOT NULL,
  `run_count` INT(10) DEFAULT NULL,
  `version` INT(10) DEFAULT NULL,
  PRIMARY KEY (`testcase_id`))
ENGINE = InnoDB;

CREATE INDEX `IDX_01` USING BTREE ON `testcase_service`.`testcase` (`project_id` ASC);

CREATE INDEX `IDX_02` ON `testcase_service`.`testcase` (`suite_id` ASC);

CREATE INDEX `IDX_03` ON `testcase_service`.`testcase` (`milestone_id` ASC);

CREATE INDEX `IDX_05` ON `testcase_service`.`testcase` (`created_by` ASC);

CREATE INDEX `IDX_06` ON `testcase_service`.`testcase` (`updated_by` ASC);

-- +goose Down
DROP TABLE `testcase_service`.`testcase`;
