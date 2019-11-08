-- +goose Up
ALTER TABLE `testcase_service`.`testcase`
ADD requirement_id varchar(255);

-- +goose Down
ALTER TABLE `testcase_service`.`testcase` 
DROP COLUMN `requirement_id`;
