CREATE DATABASE quizGame

CREATE TABLE users(
	id int IDENTITY(1,1) PRIMARY KEY,
	fullName varchar(255),
	username varchar(255) unique,
	email varchar(255) unique,
	_password varchar(255) unique,
	score int,
	isAdmin bit,
)

CREATE TABLE questions(
	id int IDENTITY(1,1) PRIMARY KEY,
	question TEXT,
	_level varchar(255),
)

CREATE TABLE answers(
	id int IDENTITY(1,1) PRIMARY KEY,
	answer TEXT,
	_isCorrect bit,
	idQuestion int FOREIGN KEY REFERENCES questions(id)
)
CREATE TABLE passQuestion(
	id int IDENTITY(1,1) PRIMARY KEY,
	idUser int FOREIGN KEY REFERENCES users(id),
	idQuestion int FOREIGN KEY REFERENCES questions(id)
)