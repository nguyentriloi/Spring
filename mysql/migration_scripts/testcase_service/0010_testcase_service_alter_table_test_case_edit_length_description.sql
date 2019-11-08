-- +goose Up
ALTER TABLE `testcase_service`.`project` 
CHANGE COLUMN `description` `description` TEXT NOT NULL ;
ALTER TABLE `testcase_service`.`suite` 
CHANGE COLUMN `description` `description` TEXT NOT NULL ;

-- +goose Down
ALTER TABLE `testcase_service`.`project` 
CHANGE COLUMN `description` `description` varchar(255) NOT NULL;

ALTER TABLE `testcase_service`.`suite` 
CHANGE COLUMN `description` `description` varchar(255) NOT NULL;
