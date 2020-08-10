create schema `lms_database`;


CREATE TABLE `lms_database`.`userdetails` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `contact_number` int DEFAULT NULL,
  `verified` tinyint DEFAULT NULL,
  `creator_stamp` varchar(45) DEFAULT NULL,
  `creator_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
);

CREATE TABLE `lms_database`. `hired candidate` (
  `Id` int NOT NULL,
  `First Name` varchar(25) DEFAULT NULL,
  `Middle Name` varchar(25) DEFAULT NULL,
  `Last Name` varchar(25) DEFAULT NULL,
  `EmailId` varchar(45) DEFAULT NULL,
  `Hired City` varchar(45) DEFAULT NULL,
  `Hired Date` date DEFAULT NULL,
  `Hired Lab` varchar(45) DEFAULT NULL,
  `Mobile Number` varchar(45) DEFAULT NULL,
  `Permanent Pincode` varchar(45) DEFAULT NULL,
  `Attitude` varchar(45) DEFAULT NULL,
  `Communication Remark` varchar(45) DEFAULT NULL,
  `Knowledge Remark` varchar(45) DEFAULT NULL,
  `Aggregate Remark` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Creator Stamp` varchar(45) DEFAULT NULL,
  `Creator User` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
)