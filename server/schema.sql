CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
  id INT NOT NULL AUTO_INCREMENT,
  username VARCHAR(20),
  messageText VARCHAR (140),
  chatroom VARCHAR (20),
  timePosted TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  primary key (id)
);

/* Create other tables and define schemas for them here! */

CREATE TABLE usernames (
  id INT NOT NULL AUTO_INCREMENT,
  username VARCHAR(20),
  primary key (id)
);

CREATE TABLE chatrooms (
  id INT NOT NULL AUTO_INCREMENT,
  chatroom VARCHAR (20),
  primary key (id)
);



/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

