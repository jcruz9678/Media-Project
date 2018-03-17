CREATE DATABASE MEDIA_DB;
CREATE TABLE USER
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	firstName varchar(50),
	lastName varchar(50),
	email varchar(100),
	emailConfirmation varchar(100),
	password varchar(30),
	PRIMARY KEY (id)
);

CREATE TABLE USER_HISTORY
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	userId INT UNSIGNED NOT NULL REFERENCES USER(id),
	firstName varchar(50),
	lastName varchar(50),
	email varchar(100),
	emailConfirmation varchar(100),
	password varchar(30),
	PRIMARY KEY (id)
);

CREATE TABLE MEDIA_OBJECT
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	typeId INT UNSIGNED NOT NULL REFERENCES TYPE(id),
	name varchar(75),
	description varchar(500),
	filepath varchar(100),
	userId INT UNSIGNED NOT NULL REFERENCES USER(id),
	PRIMARY KEY (id)
);

CREATE TABLE TYPE
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	description varchar(75),
	PRIMARY KEY (id)
);