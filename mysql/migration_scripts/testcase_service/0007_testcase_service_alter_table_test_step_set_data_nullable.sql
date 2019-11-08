-- +goose Up
ALTER TABLE `testcase_service`.`test_step` 
CHANGE COLUMN `data` `data` VARCHAR(255) COLLATE 'utf8mb4_general_ci' NULL ;
-- +goose Down
ALTER TABLE `testcase_service`.`test_step` 
CHANGE COLUMN `data` `data` VARCHAR(255) NOT NULL;
