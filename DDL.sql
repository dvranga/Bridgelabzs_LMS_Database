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
);


CREATE TABLE `lms_database`. `fellowship candidate` (
  `Id` int NOT NULL,
  `First Name` varchar(25) DEFAULT NULL,
  `Middle Name` varchar(25) DEFAULT NULL,
  `Last Name` varchar(25) DEFAULT NULL,
  `EmailId` varchar(45) DEFAULT NULL,
  `Hired City` varchar(45) DEFAULT NULL,
  `Degree` varchar(45) DEFAULT NULL,
  `Hired Date` date DEFAULT NULL,
  `Mobile Number` int DEFAULT NULL,
  `Permanent Pincode` varchar(45) DEFAULT NULL,
  `Hired Lab` varchar(45) DEFAULT NULL,
  `Attitude` varchar(45) DEFAULT NULL,
  `Communication Remark` varchar(45) DEFAULT NULL,
  `Knowledge Remark` varchar(45) DEFAULT NULL,
  `Aggregate Remark` varchar(45) DEFAULT NULL,
  `Creator Stamp` varchar(45) DEFAULT NULL,
  `Creator User` varchar(45) DEFAULT NULL,
  `Birth Date` date DEFAULT NULL,
  `Is Birth Date Verified` tinyint DEFAULT NULL,
  `Parent Name` varchar(45) DEFAULT NULL,
  `Parent Occupation` varchar(45) DEFAULT NULL,
  `Parent Mobile Number` int DEFAULT NULL,
  `Parents Annual Salary` double DEFAULT NULL,
  `Local Address` varchar(45) DEFAULT NULL,
  `Permanent Address` varchar(45) DEFAULT NULL,
  `Photo Path` varchar(45) DEFAULT NULL,
  `Joining Date` date DEFAULT NULL,
  `Candidtate Status` varchar(45) DEFAULT NULL,
  `Personal Information` varchar(45) DEFAULT NULL,
  `Bank Information` varchar(45) DEFAULT NULL,
  `Educational Information` varchar(45) DEFAULT NULL,
  `Document Status` tinyint DEFAULT NULL,
  `Remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ;