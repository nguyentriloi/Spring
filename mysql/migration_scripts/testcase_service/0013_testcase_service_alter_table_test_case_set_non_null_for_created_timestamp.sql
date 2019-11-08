-- +goose Up
ALTER TABLE `testcase_service`.`testcase` 
CHANGE COLUMN `created_timestamp` `created_timestamp` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ;

-- +goose Down
ALTER TABLE `testcase_service`.`testcase` 
CHANGE COLUMN `created_timestamp` `created_timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;
