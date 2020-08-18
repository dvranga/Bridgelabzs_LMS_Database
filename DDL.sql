create schema `lms_database1`;


CREATE TABLE `lms_database1`.`userDetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `emailId` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `contact_number` bigint(10) DEFAULT NULL,
  `verified` tinyint DEFAULT NULL,
  `creator_stamp` timestamp(6) DEFAULT NULL,
  `creator_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `lms_database1`. `hired_candidate` (
  `id` int NOT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `middle_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `emailId` varchar(45) DEFAULT NULL,
  `hired_city` varchar(45) DEFAULT NULL,
  `hired_date` date DEFAULT NULL,
  `hired_lab` varchar(45) DEFAULT NULL,
  `mobile_number` bigint(10) DEFAULT NULL,
  `permanent_pincode` bigint(6) DEFAULT NULL,
  `attitude` varchar(45) DEFAULT NULL,
  `communication_remark` varchar(45) DEFAULT NULL,
  `knowledge_remark` varchar(45) DEFAULT NULL,
  `aggregate_remark` varchar(45) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `creator_stamp` tinyint DEFAULT NULL,
  `creator_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


CREATE TABLE `lms_database`. `fellowship_candidate` (
  `id` int NOT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `middle_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `emailId` varchar(45) DEFAULT NULL,
  `hired_city` varchar(45) DEFAULT NULL,
  `Degree` varchar(45) DEFAULT NULL,
  `hired_date` date DEFAULT NULL,
  `mobile_number` bigint(10) DEFAULT NULL,
  `permanent_pincode` bigint(6) DEFAULT NULL,
  `hired_lab` int DEFAULT NULL,
  `attitude` varchar(45) DEFAULT NULL,
  `communication_remark` varchar(45) DEFAULT NULL,
  `knowledge_remark` varchar(45) DEFAULT NULL,
  `aggregate_remark` varchar(45) DEFAULT NULL,
  `creator_stamp` timestamp(6) DEFAULT NULL,
  `creator_user` varchar(45) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `is_birth_date_verified` tinyint DEFAULT NULL,
  `parent_name` varchar(45) DEFAULT NULL,
  `parent_occupation` varchar(45) DEFAULT NULL,
  `parent_mobile_number` bigint(10) DEFAULT NULL,
  `parents_annual_salary` double DEFAULT NULL,
  `local_address` varchar(45) DEFAULT NULL,
  `permanent_address` varchar(45) DEFAULT NULL,
  `photo_path` varchar(45) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `candidtate_status` varchar(45) DEFAULT NULL,
  `personal_information` varchar(45) DEFAULT NULL,
  `bank_information` tinyint DEFAULT NULL,
  `educational_information` varchar(45) DEFAULT NULL,
  `document_status` tinyint DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;


CREATE TABLE `lms_database`. `candidate_bank_details` (
  `id` int NOT NULL,
  `candidate_id` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `account_number` bigint(11) DEFAULT NULL,
  `is_account_num_verified` tinyint DEFAULT NULL,
  `ifsc_code` varchar(25) DEFAULT NULL,
  `is_ifsc_code_verified` tinyint DEFAULT NULL,
  `pan_number` varchar(25) DEFAULT NULL,
  `is_pan_number_verified` tinyint DEFAULT NULL,
  `addhaar_num` bigint DEFAULT NULL,
  `is_addhaar_num_verified` tinyint DEFAULT NULL,
  `creator_stamp` timestamp(6) DEFAULT NULL,
  `creator_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`candidate_id`) REFERENCES `fellowship_candidate` (`id`)
) ;


CREATE TABLE `lms_database`. `candidate_qualification` (
  `id` int NOT NULL,
  `candidate_id` int DEFAULT NULL,
  `diploma` varchar(45) DEFAULT NULL,
  `degree_name` varchar(45) DEFAULT NULL,
  `is_degree_name_verified` tinyint DEFAULT NULL,
  `employee_decipline` varchar(45) DEFAULT NULL,
  `is_employee_decipline_verified` tinyint DEFAULT NULL,
  `passing_year` int DEFAULT NULL,
  `is_passing_year_verified` tinyint DEFAULT NULL,
  `aggr_per` double DEFAULT NULL,
  `final_year_per` double DEFAULT NULL,
  `is_final_year_per_verified` tinyint DEFAULT NULL,
  `training_institute` varchar(45) DEFAULT NULL,
  `is_training_institute_verified` tinyint DEFAULT NULL,
  `training_duration_month` int DEFAULT NULL,
  `is_training_duration_month_verified` tinyint DEFAULT NULL,
  `other_training` varchar(45) DEFAULT NULL,
  `is_other_training_verified` tinyint DEFAULT NULL,
  `creator_stamp` timestamp(6) DEFAULT NULL,
  `creator_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`candidate_id`) REFERENCES `fellowship_candidate` (`id`)
);

CREATE TABLE `lms_database`.`candidate document` (
  `id` int NOT NULL,
  `candidate_id` int DEFAULT NULL,
  `doc_type` varchar(45) DEFAULT NULL,
  `doc_path_status` tinyint DEFAULT NULL,
  `creator_stamp` timestamp(6) DEFAULT NULL,
  `creator_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`candidate_id`) REFERENCES `fellowship_candidate` (`id`)
);



CREATE TABLE `lms_database`. `company` (
  `id` int NOT NULL,
  `name` int DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `creator_stamp` varchar(45) DEFAULT NULL,
  `creator_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
);



CREATE TABLE `lms_database`.`tech stack` (
  `id` int NOT NULL,
  `tech_name` varchar(45) DEFAULT NULL,
  `image_path` varchar(45) DEFAULT NULL,
  `framework` varchar(45) DEFAULT NULL,
  `cur_status` tinyint DEFAULT NULL,
  `creator_stamp` varchar(45) DEFAULT NULL,
  `creator_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;


CREATE TABLE `lms_database`. `tech type` (
  `id` int NOT NULL,
  `type_name` varchar(45) DEFAULT NULL,
  `cur_status` tinyint DEFAULT NULL,
  `creator_stamp` varchar(45) DEFAULT NULL,
  `creator_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


CREATE TABLE `lms_database`. `maker program` (
  `id` int NOT NULL,
  `program_name` varchar(45) DEFAULT NULL,
  `program_type` varchar(45) DEFAULT NULL,
  `program_link` longtext,
  `tech_stack_id` int DEFAULT NULL,
  `tech_type_id` int DEFAULT NULL,
  `is_program_approved` tinyint DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `creator_stamp` varchar(45) DEFAULT NULL,
  `creator_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tech_stack_id` (`tech_stack_id`),
  KEY `tech_type_id` (`tech_type_id`),
  FOREIGN KEY (`tech_stack_id`) REFERENCES `tech_stack` (`id`),
  FOREIGN KEY (`tech_type_id`) REFERENCES `tech_type` (`id`)
) ;



CREATE TABLE `lms_database`. `app_parameters` (
  `Id` int NOT NULL,
  `key_type` varchar(45) DEFAULT NULL,
  `key_value` varchar(10) DEFAULT NULL,
  `key_text` varchar(20) DEFAULT NULL,
  `cur_status` varchar(1) DEFAULT NULL,
  `lastupd_user` varchar(45) DEFAULT NULL,
  `lastupd_stamp` varchar(45) DEFAULT NULL,
  `creator_stamp` varchar(45) DEFAULT NULL,
  `creator_user` varchar(45) DEFAULT NULL,
  `seq_num` smallint DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ;


CREATE TABLE `lms_database`. `lab` (
  `Id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `creator_stamp` varchar(45) DEFAULT NULL,
  `creator_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
);


CREATE TABLE `lms_database`. `mentor` (
  `Id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `mentor_type` varchar(45) NOT NULL,
  `lab_id` int DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `creator_stamp` varchar(45) DEFAULT NULL,
  `creator_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  FOREIGN KEY (`lab_id`) REFERENCES `lab` (`Id`)
) ;


CREATE TABLE `lms_database`.`mentor ideation map` (
  `Id` int NOT NULL,
  `mentor_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `creator_stamp` varchar(45) DEFAULT NULL,
  `creator_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  FOREIGN KEY (`mentor_id`) REFERENCES `mentor` (`Id`)
);


CREATE TABLE `lms_database`. `mentor tech stack` (
  `Id` int NOT NULL,
  `mentor_id` int DEFAULT NULL,
  `tech_stack_id` int DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `creator_stamp` varchar(45) DEFAULT NULL,
  `creator_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  FOREIGN KEY (`mentor_id`) REFERENCES `mentor` (`Id`),
  FOREIGN KEY (`tech_stack_id`) REFERENCES `tech stack` (`Id`)
);


CREATE TABLE  `lms_database`.`lab threshold` (
  `Id` int NOT NULL,
  `lab_id` int DEFAULT NULL,
  `lab_capacity` int DEFAULT NULL,
  `lead_threshold` int DEFAULT NULL,
  `ideation_engg_threshold` int DEFAULT NULL,
  `buddy_engg_threshold` varchar(45) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `creator_stamp` varchar(45) DEFAULT NULL,
  `creator_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  FOREIGN KEY (`lab_id`) REFERENCES `lab` (`Id`)
);

CREATE TABLE `lms_database`. `company requirement` (
  `Id` int NOT NULL,
  `company_id` int DEFAULT NULL,
  `requested_month` date DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `is_doc_verifrication` tinyint DEFAULT NULL,
  `requirement_doc_path` varchar(45) DEFAULT NULL,
  `no_of_engg` int DEFAULT NULL,
  `special_remark` varchar(45) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `creator_stamp` varchar(45) DEFAULT NULL,
  `creator_user` varchar(45) DEFAULT NULL,
  `tech_stack_id` int DEFAULT NULL,
  `tech_type_id` int DEFAULT NULL,
  `maker_program_id` int DEFAULT NULL,
  `lead_id` int DEFAULT NULL,
  `ideation_engg_id` int DEFAULT NULL,
  `buddy_engg_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  FOREIGN KEY (`company_id`) REFERENCES `company` (`Id`),
  FOREIGN KEY (`tech_stack_id`) REFERENCES `tech stack` (`Id`),
  FOREIGN KEY (`tech_type_id`) REFERENCES `tech type` (`Id`),
  FOREIGN KEY (`maker_program_id`) REFERENCES `maker program` (`Id`),
  FOREIGN KEY (`lead_id`) REFERENCES `mentor` (`Id`),
  FOREIGN KEY (`ideation_engg_id`) REFERENCES `mentor ideation map` (`Id`)
) ;


CREATE TABLE `lms_database`.`candidate_stack_assignment` (
  `id` int NOT NULL,
  `requirement_id` int DEFAULT NULL,
  `candidate_id` int DEFAULT NULL,
  `assign_date` date DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `creator_stamp` timestamp(6) DEFAULT NULL,
  `creator_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`requirement_id`) REFERENCES `company_requirement` (`id`),
  FOREIGN KEY (`candidate_id`) REFERENCES `fellowship_candidate` (`id`)
) ;


ALTER TABLE `lms_database`.`app_parameters` 
CHANGE COLUMN `creator_stamp` `creator_stamp` TIMESTAMP(6) NULL DEFAULT NULL ;

ALTER TABLE `lms_database`.`candidate qualification` 
CHANGE COLUMN `creator_stamp` `creator_stamp` TIMESTAMP(6) NULL DEFAULT NULL ;



ALTER TABLE `lms_database`.`candidate document` 
CHANGE COLUMN `creator_stamp` `creator_stamp` TIMESTAMP(6) NULL DEFAULT NULL ;

ALTER TABLE `lms_database`.`candidate stack assignment` 
CHANGE COLUMN `creator_stamp` `creator_stamp` TIMESTAMP(6) NULL DEFAULT NULL ;

ALTER TABLE `lms_database`.`company` 
CHANGE COLUMN `creator_stamp` `creator_stamp` TIMESTAMP(6) NULL DEFAULT NULL ;

ALTER TABLE `lms_database`.`company requirement` 
CHANGE COLUMN `creator_stamp` `creator_stamp` TIMESTAMP(6) NULL DEFAULT NULL ;

ALTER TABLE `lms_database`.`hired candidate` 
CHANGE COLUMN `creator_stamp` `creator_stamp` TIMESTAMP(6) NULL DEFAULT NULL ;

ALTER TABLE `lms_database`.`lab` 
CHANGE COLUMN `creator_stamp` `creator_stamp` TIMESTAMP(6) NULL DEFAULT NULL ;

ALTER TABLE `lms_database`.`lab threshold` 
CHANGE COLUMN `creator_stamp` `creator_stamp` TIMESTAMP(6) NULL DEFAULT NULL ;

ALTER TABLE `lms_database`.`maker program` 
CHANGE COLUMN `creator_stamp` `creator_stamp` TIMESTAMP(6) NULL DEFAULT NULL ;

ALTER TABLE `lms_database`.`mentor` 
CHANGE COLUMN `creator_stamp` `creator_stamp` TIMESTAMP(6) NULL DEFAULT NULL ;

ALTER TABLE `lms_database`.`mentor tech stack` 
CHANGE COLUMN `creator_stamp` `creator_stamp` TIMESTAMP(6) NULL DEFAULT NULL ;

ALTER TABLE `lms_database`.`mentor ideation map` 
CHANGE COLUMN `creator_stamp` `creator_stamp` TIMESTAMP(6) NULL DEFAULT NULL ;

ALTER TABLE `lms_database`.`tech type` 
CHANGE COLUMN `creator_stamp` `creator_stamp` TIMESTAMP(6) NULL DEFAULT NULL ;

ALTER TABLE `lms_database`.`tech stack` 
CHANGE COLUMN `creator_stamp` `creator_stamp` TIMESTAMP(6) NULL DEFAULT NULL ;

ALTER TABLE `lms_database`.`userdetails` 
CHANGE COLUMN `creator_stamp` `creator_stamp` TIMESTAMP(6) NULL DEFAULT NULL ;

ALTER TABLE `lms_database`.`temp_user_engagement_mis` 
CHANGE COLUMN `user_name` `user_name` VARCHAR(45) NOT NULL ,
ADD PRIMARY KEY (`user_name`);
;

CREATE TABLE `temp_user_engagement_mis` (
  `DateTime` datetime,
  `Cpu Count` int not NULL,
  `Cpu Working Time` double not NULL,
  `Cpu idle Time` double not NULL,
  `cpu_percent` double not NULL,
  `Usage Cpu Count` int not NULL,
  `number of software interrupts since boot` int not NULL,
  `number of system calls since boot` int not NULL,
  `number of interrupts since boot` int not NULL,
  `cpu avg load over 1 min` double not NULL,
  `cpu avg load over 5 min` double not NULL,
  `cpu avg load over 15 min` double not NULL,
  `system_total_memory` bigint not NULL,
  `system_used_memory` bigint not NULL,
  `system_free_memory` bigint not NULL,
  `system_active_memory` bigint not NULL,
  `system_inactive_memory` bigint not NULL,
  `system_buffers_memory` bigint not NULL,
  `system_cached_memory` bigint not NULL,
  `system_shared_memory` bigint not NULL,
  `system_avalible_memory` bigint not NULL,
  `disk_total_memory` bigint not NULL,
  `disk_used_memory` bigint not NULL,
  `disk_free_memory` bigint not NULL,
  `disk_read_count` bigint not NULL,
  `disk_write_count` bigint not NULL,
  `disk_read_bytes` bigint not NULL,
  `disk_write_bytes` bigint not NULL,
  `time spent reading from disk` bigint not NULL,
  `time spent writing to disk` bigint not NULL,
  `time spent doing actual I/Os` bigint not NULL,
  `number of bytes sent` bigint not NULL,
  `number of bytes received` bigint not NULL,
  `number of packets sent` bigint not NULL,
  `number of packets recived` bigint not NULL,
  `total number of errors while receiving` int not NULL,
  `total number of errors while sending` int not NULL,
  `total number of incoming packets which were dropped` int not NULL,
  `total number of outgoing packets which were dropped` int not NULL,
  `boot_time` time,
  `user_name` varchar(45) NOT NULL,
  `keyboard` double not NULL,
  `mouse` int not NULL,
  `technology` varchar(45),
  `files_changed` int not NULL
) 