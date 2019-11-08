-- +goose Up
ALTER TABLE `testcase_service`.`testcase` 
ADD COLUMN `richtext_description` TEXT NULL;

-- +goose Down
ALTER TABLE `testcase_service`.`testcase` 
DROP COLUMN `richtext_description`;
