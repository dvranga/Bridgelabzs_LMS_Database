-- 1- find all candidate having java technology?
select `First Name`
 from `lms_database`.`fellowship candidate`
 where `Id`in(select `Id`
 from `lms_database`.`tech stack`
 where `tech_name`="java");



-- 2.query to find mentors with java technology
SELECT mentor.name,mentor.`mentor_type`,`tech stack`.tech_name
from mentor 
join `mentor tech stack`
on mentor.Id= `mentor tech stack`.mentor_id
join `tech stack`
on `mentor tech stack`.`tech_stack_id`=`tech stack`.Id
where `tech stack`.`tech_name`="java";


-- 7- find name of candidate which did not assign technology?
select `First Name`
 from `lms_database`.`fellowship candidate`
 where `Id` =(select `Id`
 from `lms_database`.`tech stack`
 where `tech_name` is null);
 
--  8- find name of cnadidate which is not submit documents?
select `First Name`
from `lms_database`.`fellowship candidate`
where `Id`In(select `Id`
from `lms_database`.`candidate document`
where `doc_type`is null);

-- 8- find name of cnadidate which is not submit documents?
(select `*`
from `lms_database`.`fellowship candidate`
where `Document Status`is false);


-- 9- find name of candidate which is not submit bank details?
select `First Name`
from `lms_database`.`fellowship candidate`
where `Id`In(select `Id`
from `lms_database`.`candidate bank details`
where `Account Number`is null);

-- 9- find name of candidate which is not submit bank details
(select `*`
from `lms_database`.`fellowship candidate`
where `Bank Information`is null);


-- 10-find name of candidates which is joined in dec month?-- 
select `First Name`
from `lms_database`.`fellowship candidate`
where `Joining Date` like "%_____12%";

-- 11-find name of candidates which is end of couse in feb?-- 
select `First Name`
from `lms_database`.`fellowship candidate`
where `Joining Date` like "%_____11%";


-- 13-find all candidates which is passed out in 2019 year?-- 
select `First Name`
from `lms_database`.`fellowship candidate`
where `Id` In(select `Id`
from `lms_database`.`candidate qualification`
where `passing_year`=2019);

-- 14-which technology assign to whom candidates which is having MCA background?-- 
select `First Name`
from `lms_database`.`fellowship candidate`
where `Id` In(select `Id`
from `lms_database`.`candidate qualification`
where `degree_name`="MCA");

-- 15-how many candiates which is having last month ?-- 
select `First Name`
from `lms_database`.`fellowship candidate`
where `Joining Date` like "%2020-06%";


select `First Name`
from `fellowship candidate`
where week(`Joining Date`)-week(curdate())>3;


-- 16-how many week candidate completed in the bridgelabz since joining date candidate id is 2?
select `First Name`,- week(curdate())+week(`Joining Date`)as "Weeks completed"
from `fellowship candidate`
where Id=2;


-- 17-find joining date of candidate if candidate id is 4?
select `Joining Date`,`First Name`,`Id`
from `lms_database`.`fellowship candidate`
where Id=4;


-- 21-find name and other details and name of company which is assign to condidate?.
select  `fellowship candidate`.*,`name`
from `lms_database`.`fellowship candidate`,`lms_database`.`company`
where `fellowship candidate`.Id=`company`.Id ;

select `First Name`,`name`
from `lms_database`.`fellowship candidate` INNER JOIN `lms_database`.`company`
ON `fellowship candidate`.Id=`company`.Id;

-- 22-find all condidate and mentors which is related to lab= banglore/mumbai/pune.?
select `First Name`,`mentor`.`name`
from `lms_database`.`fellowship candidate`,`lms_database`.`mentor`
where `fellowship candidate`.Id=`mentor`.Id;







