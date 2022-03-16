CREATE DATABASE chat;

USE chat;

/* Create other tables and define schemas for them here! */
CREATE TABLE users (
  ID int not null,
  username VARCHAR(20),
  PRIMARY KEY (ID)
);

CREATE TABLE chatrooms (
  ID int not null,
  chatroom_name VARCHAR(20),
  PRIMARY KEY (ID)
);

CREATE TABLE messages (
  /* Describe your table here.*/
  ID int not null,
  username_ID int,
  chatroom_ID int,
  time_stamp timestamp,
  PRIMARY KEY (ID),
  FOREIGN KEY (chatroom_ID) REFERENCES chatrooms (ID),
  FOREIGN KEY (username_ID) REFERENCES users (ID)
);

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

