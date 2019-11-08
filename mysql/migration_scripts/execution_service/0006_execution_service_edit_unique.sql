-- +goose Up
ALTER TABLE `execution_service`.`environment` ADD UNIQUE `unique_index`(`env_key`, `project_id` , `scope`);
ALTER TABLE `execution_service`.`environment` 
DROP INDEX `PK_002` ;
-- +goose Down
ALTER TABLE `execution_service`.`environment` 
DROP INDEX `unique_index` ;
ALTER TABLE `execution_service`.`environment` ADD UNIQUE `PK_002`(`env_key`);

