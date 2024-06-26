create database geeq;
use geeq;

CREATE USER 'geeq-api-user'@'*' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON geeq.* TO 'geeq-api-user'@'*';

CREATE TABLE `user`
(
    `user_id`            varchar(255) NOT NULL,
    `created_at`         timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at`         timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`user_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;