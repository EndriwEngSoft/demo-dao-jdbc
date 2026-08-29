-- Database setup script used by the demo-dao-jdbc project
-- Referenced in the README's "How to Run" section

CREATE DATABASE IF NOT EXISTS coursejdbc;
USE coursejdbc;

CREATE TABLE department (
  Id INT(11) NOT NULL AUTO_INCREMENT,
  Name VARCHAR(60) DEFAULT NULL,
  PRIMARY KEY (Id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE seller (
  Id INT(11) NOT NULL AUTO_INCREMENT,
  Name VARCHAR(60) NOT NULL,
  Email VARCHAR(100) NOT NULL,
  BirthDate DATETIME NOT NULL,
  BaseSalary DOUBLE NOT NULL,
  DepartmentId INT(11) NOT NULL,
  PRIMARY KEY (Id),
  FOREIGN KEY (DepartmentId) REFERENCES department (Id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
