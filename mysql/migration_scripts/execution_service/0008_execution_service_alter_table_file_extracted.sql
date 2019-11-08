-- +goose Up
ALTER TABLE `execution_service`.`file_extracted` 
ADD COLUMN `trigger_id` VARCHAR(36) NULL AFTER `name`;

-- +goose Down
ALTER TABLE `execution_service`.`file_extracted` 
DROP COLUMN `trigger_id`;
