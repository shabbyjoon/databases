DROP DATABASE chat;

CREATE DATABASE chat;

USE chat;

-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'messages'
-- 
-- ---

DROP TABLE IF EXISTS `messages`;
    
CREATE TABLE `messages` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `username` INTEGER(11) NULL DEFAULT NULL,
  `textMessage` VARCHAR(140) NULL DEFAULT NULL,
  `chatroom` INTEGER NULL DEFAULT NULL,
  `timePosted` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'usernames'
-- 
-- ---

DROP TABLE IF EXISTS `usernames`;
    
CREATE TABLE `usernames` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'chatrooms'
-- 
-- ---

DROP TABLE IF EXISTS `chatrooms`;
    
CREATE TABLE `chatrooms` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `chatroom` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `messages` ADD FOREIGN KEY (username) REFERENCES `usernames` (`id`);
ALTER TABLE `messages` ADD FOREIGN KEY (chatroom) REFERENCES `chatrooms` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `usernames` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `chatrooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `messages` (`id`,`username`,`textMessage`,`chatroom`,`timePosted`) VALUES
-- ('','','','','');
-- INSERT INTO `usernames` (`id`,`username`) VALUES
-- ('','');
-- INSERT INTO `chatrooms` (`id`,`chatroom`) VALUES
-- ('','');

-- CREATE TABLE messages (
--   /* Describe your table here.*/
--   id INT NOT NULL AUTO_INCREMENT,
--   username VARCHAR(20),
--   messageText VARCHAR (140),
--   chatroom VARCHAR (20),
--   timePosted TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--   primary key (id)
-- );

-- /* Create other tables and define schemas for them here! */

-- CREATE TABLE usernames (
--   id INT NOT NULL AUTO_INCREMENT,
--   username VARCHAR(20),
--   primary key (id)
-- );

-- CREATE TABLE chatrooms (
--   id INT NOT NULL AUTO_INCREMENT,
--   chatroom VARCHAR (20),
--   primary key (id)
-- );

-- ALTER TABLE messages ADD CONSTRAINT messages_usernames_id FOREIGN KEY (username) REFERENCES usernames(id);


-- /*  Execute this file from the command line by typing:
--  *    mysql -u root < server/schema.sql
--  *  to create the database and the tables.*/

