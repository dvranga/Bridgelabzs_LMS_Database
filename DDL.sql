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
)