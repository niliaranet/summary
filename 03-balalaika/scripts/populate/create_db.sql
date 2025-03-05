CREATE DATABASE IF NOT EXISTS balalaika;
USE balalaika;

DROP TABLE IF EXISTS song;
DROP TABLE IF EXISTS album;
DROP TABLE IF EXISTS artist;

CREATE TABLE artist (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255),

    PRIMARY KEY (id)
);

CREATE TABLE album (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255),
    cover varchar(255),
    artist_id int,
    release DATE,

    PRIMARY KEY (id),
    FOREIGN KEY (artist_id) REFERENCES artist(id)
);

CREATE TABLE song (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255),
    lyrics TEXT,

    album_id int,

    PRIMARY KEY (id),
    FOREIGN KEY (album_id) REFERENCES album(id)
);

ALTER TABLE song CONVERT TO CHARACTER SET utf8;
ALTER TABLE album CONVERT TO CHARACTER SET utf8;
ALTER TABLE artist CONVERT TO CHARACTER SET utf8;
