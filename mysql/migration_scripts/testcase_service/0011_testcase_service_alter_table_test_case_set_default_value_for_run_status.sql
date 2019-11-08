-- +goose Up
ALTER TABLE `testcase_service`.`testcase` 
CHANGE COLUMN `run_status` `run_status` TINYINT(2) NULL DEFAULT 0 ;

-- +goose Down
ALTER TABLE `testcase_service`.`testcase` 
CHANGE COLUMN `run_status` `run_status` TINYINT(2) DEFAULT NULL;
