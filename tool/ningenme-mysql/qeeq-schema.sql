create database geeq;
use geeq;

CREATE USER 'tmp-user'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON geeq.* TO 'tmp-user'@'%';

CREATE TABLE `user`
(
    `user_id`            varchar(255) NOT NULL,
    `avatar_url`         varchar(511) NOT NULL,
    `created_at`         datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at`         datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`user_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

CREATE TABLE `task` (
    `task_id`            varchar(255) NOT NULL,
    `title`              varchar(255) NOT NULL,
    `description`        text         NOT NULL,
    `submit_type`        ENUM('CHOICE','TEXT') NOT NULL,
    `choice_json`        json NOT NULL DEFAULT ('{"choice_list":[]}'),
    `created_at`         datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at`         datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `created_by`         varchar(255) NOT NULL,
    PRIMARY KEY (`task_id`),
    FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
