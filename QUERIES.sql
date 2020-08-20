-- 1- find all candidate having java technology?
select `First Name`
from `candidate stack assignment`
join `fellowship candidate`
on `candidate stack assignment`.`candidate_id`=`fellowship candidate`.Id
join `company requirement`
on `candidate stack assignment`.`requirement_id`=`company requirement`.Id
join `tech stack`
on `company requirement`.`tech_stack_id`=`tech stack`.Id
where `tech stack`.`tech_name`="java";


-- 2.query to find mentors with java technology
select mentor.name,`tech stack`.tech_name
from `mentor tech stack`
join `mentor`
on `mentor tech stack`.`tech_stack_id` =`mentor`.`Id`
join `tech stack`
on `tech stack`.Id=`mentor tech stack`.`tech_stack_id`
where `tech stack`.`tech_name`="java";

-- 3--- find all candidate which is present today
select fellowship_candidate.Id,first_name
from user_engagement_mis
join fellowship_candidate
on user_engagement_mis.candidate_id=fellowship_candidate.Id
where DateTime is not null;

--- 4- find all candidate which is come late today
select user_engagement_mis.candidate_id,first_name
from user_engagement_mis
join fellowship_candidate
on user_engagement_mis.candidate_id=fellowship_candidate.Id
where time(DateTime) >'09:00:00';

--- 6- find all candidate which is come early today
select user_engagement_mis.candidate_id,first_name
from user_engagement_mis
join fellowship_candidate
on user_engagement_mis.candidate_id=fellowship_candidate.Id
where time(DateTime) <'09:00:00';


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

-- 12-find name of candidates which is ending date accounding to joining date if joining date is 22-02-2019?
select first_name,adddate(joining_date, interval 4 month ) LastDate
from fellowship_candidate;

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



-- --- 18-how many week remaining of candidate in the bridglabz from today if candidate id is 5
select Id,`First Name`,16-(week(curdate())-week(`Joining date`))as weeksLeft
from `fellowShip candidate`
where Id=5;


-- --- 19-how many days remaining of candidate in the bridgelabz from today if candidate is is 5
select Id,`First Name`,(112-datediff(curdate(),`joining date`))as daysLeft
from `fellowShip candidate`
where Id=5;


-- 20-find candidates which is deployed?
select `First Name`
from `fellowship candidate`
join `candidate stack assignment`
on `fellowship candidate`.`Id`=`candidate stack assignment`.`candidate_id`
where `candidate stack assignment`.`status`=true;

-- 21-find name and other details and name of company which is assign to condidate?.
select  `fellowship candidate`.*,`company`.`name`
from `fellowship candidate`
join `candidate stack assignment`
on `fellowship candidate`.Id=`candidate stack assignment`.`candidate_id`
join `company requirement`
on `candidate stack assignment`.`requirement_id`=`company requirement`.Id
join company
on `company requirement`.`company_id`=`company`.Id;

-- 22-find all condidate and mentors which is related to lab= banglore/mumbai/pune.?-- 
select `First Name`,`mentor`.`name`,`lab`.location
from `fellowship candidate`
join `lab threshold`
on `fellowship candidate`.`Hired Lab`=`lab threshold`.`lab_id`
join lab
on `lab threshold`.`lab_id`=`lab`.`Id`
join mentor
on `lab`.Id=`mentor`.`lab_id`
where lab.`location`In("mumbai","pune","bengalore");

-- 23-find buddy mententors and ideation mentor and which technology assign to perticular candidate if candidate id is 6?

select `First Name`,`tech_name`,`mentor`.`mentor_type` as Ideation,`mentor`.`mentor_type` as buddy_mentor
from `fellowship candidate`
join mentor
on `fellowship candidate`.`Hired Lab`=mentor.`lab_id`
join `candidate stack assignment`
on `fellowship candidate`.`Id`=`candidate stack assignment`.`candidate_id`
join `company requirement`
on `candidate stack assignment`.`requirement_id`=`company requirement`.`Id`
join `tech stack`
on `company requirement`.`tech_stack_id`=`tech stack`.`Id`
where `fellowship candidate`.Id=6;


select `First Name`,`tech_name`
from `fellowship candidate`
join `mentor`
on `fellowship candidate`.`Hired Lab`=mentor.`lab_id`
join `candidate stack assignment`
on `fellowship candidate`.`Id`=`candidate stack assignment`.`candidate_id`
join `company requirement`
on `candidate stack assignment`.`requirement_id`=`company requirement`.`Id`
join `tech stack`
on `company requirement`.`tech_stack_id`=`tech stack`.`Id`
where `fellowship candidate`.Id=6;


CREATE DEFINER=`root`@`localhost` PROCEDURE `mentorTechnology`()
BEGIN
select mentor.name,`tech_stack`.tech_name
from `mentor_tech_stack`
join `mentor`
on `mentor_tech_stack`.`tech_stack_id` =`mentor`.`Id`
join `tech_stack`
on `tech_stack`.Id=`mentor_tech_stack`.`tech_stack_id`
where `tech_stack`.`tech_name`="java"
END

call mentorTechnology;