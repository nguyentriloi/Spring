-- +goose Up
ALTER TABLE `execution_service`.`testcase_result` 
ADD COLUMN `created_by` VARCHAR(255),
ADD COLUMN `updated_by` VARCHAR(255);
-- +goose Down
ALTER TABLE `execution_service`.`testcase_result` 
DROP COLUMN `updated_by`;
ALTER TABLE `execution_service`.`testcase_result` 
DROP COLUMN `created_by`;
