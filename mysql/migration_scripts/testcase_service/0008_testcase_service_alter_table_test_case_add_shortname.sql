-- +goose Up
ALTER TABLE `testcase_service`.`testcase` 
CHANGE COLUMN `name` `name` TEXT NULL ,
ADD COLUMN `short_name` VARCHAR(255) NOT NULL;
-- +goose Down
ALTER TABLE `testcase_service`.`testcase` 
CHANGE COLUMN `name` `name` VARCHAR(255) NOT NULL ,
DROP COLUMN `short_name`;
