-- +goose Up
ALTER TABLE `testcase_service`.`test_step`
ADD step_order int;

-- +goose Down
ALTER TABLE `testcase_service`.`test_step` 
DROP COLUMN `step_order`;
