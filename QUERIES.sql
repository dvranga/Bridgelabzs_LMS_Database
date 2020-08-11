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

(select `*`
from `lms_database`.`fellowship candidate`
where `Bank Information`is null);


select `First Name`
from `lms_database`.`fellowship candidate`
where `Joining Date` like "%_____12%";

select `First Name`
from `lms_database`.`fellowship candidate`
where `Joining Date` like "%_____11%";

select `First Name`
from `lms_database`.`fellowship candidate`
where `Id` In(select `Id`
from `lms_database`.`candidate qualification`
where `passing_year`=2019);


select `Id`
from `lms_database`.`fellowship candidate`
where `Id` In(select `Id`
from `lms_database`.`candidate qualification`
where `degree_name`="MCA");














