-- -----------------------------------------------------
-- Schema execution_service
-- -----------------------------------------------------
-- +goose Up
CREATE SCHEMA IF NOT EXISTS `execution_service` DEFAULT CHARACTER SET utf8mb4 ;

CREATE TABLE IF NOT EXISTS `execution_service`.`testcase_result` (
  `id` varchar(36) NOT NULL,
  `testcase_shortname` varchar(255) NOT NULL,
  `status` TINYINT(4) NOT NULL,
  `job_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;

CREATE INDEX `IDX_01` USING BTREE ON `execution_service`.`testcase_result` (`testcase_shortname` ASC);

-- +goose Down
DROP TABLE `execution_service`.`testcase_result`;
