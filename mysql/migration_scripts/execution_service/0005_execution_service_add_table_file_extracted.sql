-- +goose Up
CREATE TABLE IF NOT EXISTS `execution_service`.`file_extracted` (
  `id` varchar(36) NOT NULL,
  `created_timestamp` datetime NOT NULL,
  `updated_by` varchar(36) DEFAULT NULL,
  `updated_timestamp` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `path` varchar(125) DEFAULT NULL,
  `job_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `name` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;
-- +goose Down
DROP TABLE `execution_service`.`file_extracted`;
