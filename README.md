
### Before Usage

##### mysql.server start

##### Change mysql user to = root , password to = 987654321 

(if you want to define your own mysql user credentials change the ***application.properties*** file)

Use below DDL statements to create database config

```sql
CREATE DATABASE IF NOT EXISTS OBDB;
USE OBDB;

CREATE TABLE IF NOT EXISTS users (
  username VARCHAR(45) NOT NULL ,
  password VARCHAR(60) NOT NULL ,
  email VARCHAR(50) NOT NULL,
  date date,
  sex smallint,
  enabled boolean,
  PRIMARY KEY (username));

CREATE TABLE IF NOT EXISTS user_roles (
  user_role_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  role varchar(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_username_role (role,username),
  KEY fk_username_idx (username),
  CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES users (username));
```
---
### Usage

##### *clone | download repository*
##### *cd to downloaded file*
##### *mvn spring-boot:run*

