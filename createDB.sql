DROP DATABASE IF EXISTS USERSONGDB;

CREATE DATABASE USERSONGDB;

use USERSONGDB;

CREATE TABLE USER (
    USER_ID int NOT NULL AUTO_INCREMENT,
    USER_EMAIL varchar(255) UNIQUE NOT NULL,
    USER_PASS varchar(60) NOT NULL,
    PRIMARY KEY (USER_ID),
    UNIQUE (USER_EMAIL)
);

CREATE TABLE SONG (
    SONG_ID int NOT NULL AUTO_INCREMENT,
    SONG_NAME varchar(255) NOT NULL,
    USER_ID int NOT NULL,
    PRIMARY KEY (SONG_ID),
    FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID)
);

