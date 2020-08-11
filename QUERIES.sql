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
 
select `First Name`
from `lms_database`.`fellowship candidate`
where `Id`In(select `Id`
from `lms_database`.`candidate document`
where `doc_type`is null);

select `First Name`
from `lms_database`.`fellowship candidate`
where `Id`In(select `Id`
from `lms_database`.`candidate bank details`
where `Account Number`is null);
