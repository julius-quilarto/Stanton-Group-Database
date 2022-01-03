--Create Database
DROP DATABASE IF EXISTS MR2RCA0Bjr;
CREATE DATABASE MR2RCA0Bjr;

--Select Database
USE MR2RCA0Bjr;

--Create Tables
CREATE TABLE dbUser
( user_id INT(11) AUTO_INCREMENT PRIMARY_KEY,
  user_name VARCHAR(500)
);

CREATE TABLE questions
( question_id INT(11) AUTO_INCREMENT PRIMARY_KEY,
  question VARCHAR(300),
  template_name VARCHAR(350)
);

CREATE TABLE responses
( response_id INT(11) AUTO_INCREMENT PRIMARY_KEY, 
  question_id INT(11),
  response VARCHAR(500),
  survey_all_id INT(11)
};

CREATE TABLE surveyAll
( survey_all_id INT(11) AUTO_INCREMENT PRIMARY_KEY,
  survey_name VARCHAR(100)
);
