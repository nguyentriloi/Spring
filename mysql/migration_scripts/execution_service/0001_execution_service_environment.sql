-- -----------------------------------------------------
-- Schema execution_service
-- -----------------------------------------------------
-- +goose Up
CREATE SCHEMA IF NOT EXISTS `execution_service` DEFAULT CHARACTER SET utf8mb4 ;

CREATE TABLE IF NOT EXISTS `execution_service`.`environment` (
  `id` varchar(36) NOT NULL,
  `env_key` varchar(45) NOT NULL,
  `value` text,
  `scope` varchar(45) DEFAULT NULL,
  `project_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK_002` (`env_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `execution_service`.`jobs` (
  `id` varchar(36) NOT NULL,
  `project_id` varchar(36) NOT NULL,
  `start_date` datetime,
  `finished_date` datetime,
  `created_by` varchar(36) DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  `type` tinyint DEFAULT NULL,
  `results` varchar(45) DEFAULT NULL,
  `custom_args` varchar(45) DEFAULT NULL,
  `created_timestamp` datetime NOT NULL,
  `status` tinyint DEFAULT 0,
  `updated_by` varchar(36) DEFAULT NULL,
  `suites` TEXT NULL,
  `testcase_ids` TEXT NULL,
  `tags` VARCHAR(45) NULL,
  `project_gitlab_id` VARCHAR(45) NOT NULL,
  `updated_timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `execution_service`.`trigger_pipeline` (
  `id` varchar(36) NOT NULL,
  `pipeline_id` int NOT NULL,
  `job_id` varchar(36) NOT NULL,
  `created_by` varchar(36) NOT NULL,
  `created_timestamp` datetime NOT NULL,
  `updated_by` varchar(36) DEFAULT NULL,
  `updated_timestamp` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `trigger_url` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;

-- +goose Down
DROP TABLE `execution_service`.`trigger_pipeline`;
DROP TABLE `execution_service`.`jobs`;
DROP TABLE `execution_service`.`environment`;

