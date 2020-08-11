select `First Name`
 from `lms_database`.`fellowship candidate`
 where `Id`in(select `Id`
 from `lms_database`.`tech stack`
 where `tech_name`="java");


select `First Name`
 from `lms_database`.`fellowship candidate`
 where `Id` =(select `Id`
 from `lms_database`.`tech stack`
 where `tech_name` is null);
 
