CREATE DATABASE chat;

USE chat;

/* Create other tables and define schemas for them here! */
CREATE TABLE users (
  id int not null AUTO_INCREMENT,
  username VARCHAR(20),
  PRIMARY KEY (id)
);

CREATE TABLE chatrooms (
  id int not null AUTO_INCREMENT,
  chatroom_name VARCHAR(20),
  PRIMARY KEY (id)
);

CREATE TABLE messages (
  /* Describe your table here.*/
  id int not null AUTO_INCREMENT,
  username_id int,
  chatroom_id int,
  content text,
  time_stamp timestamp,
  PRIMARY KEY (id),
  FOREIGN KEY (chatroom_id) REFERENCES chatrooms (id),
  FOREIGN KEY (username_id) REFERENCES users (id)
);

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

