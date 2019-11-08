-- +goose Up
ALTER TABLE `execution_service`.`testcase_result` 
ADD COLUMN `trigger_id` VARCHAR(36) NULL,
ADD COLUMN `created_timestamp` DATETIME NULL,
ADD COLUMN `updated_timestamp` DATETIME NULL;
-- +goose Down
ALTER TABLE `execution_service`.`testcase_result` 
DROP COLUMN `updated_timestamp`;
ALTER TABLE `execution_service`.`testcase_result` 
DROP COLUMN `created_timestamp`;
ALTER TABLE `execution_service`.`testcase_result` 
DROP COLUMN `trigger_id`;
