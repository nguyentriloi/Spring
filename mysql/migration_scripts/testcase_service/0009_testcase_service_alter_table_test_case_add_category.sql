-- +goose Up
ALTER TABLE `testcase_service`.`project` 
CHANGE COLUMN `created_by` `created_by` VARCHAR(255) NULL;

ALTER TABLE `testcase_service`.`suite` 
CHANGE COLUMN `created_by` `created_by` VARCHAR(255) NULL;

ALTER TABLE `testcase_service`.`testcase` 
CHANGE COLUMN `created_by` `created_by` VARCHAR(255) NULL,
ADD COLUMN `category` VARCHAR(255) NULL;

ALTER TABLE `testcase_service`.`test_step` 
CHANGE COLUMN `created_by` `created_by` VARCHAR(255) NULL;

-- +goose Down
ALTER TABLE `testcase_service`.`project` 
CHANGE COLUMN `created_by` `created_by` VARCHAR(36) NOT NULL;

ALTER TABLE `testcase_service`.`suite` 
CHANGE COLUMN `created_by` `created_by` VARCHAR(36) NOT NULL;

ALTER TABLE `testcase_service`.`testcase` 
CHANGE COLUMN `created_by` `created_by` VARCHAR(36) NOT NULL,
DROP COLUMN `category`;

ALTER TABLE `testcase_service`.`test_step` 
CHANGE COLUMN `created_by` `created_by` VARCHAR(36) NOT NULL;
