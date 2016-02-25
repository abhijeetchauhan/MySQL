select sName,major
from Student,Apply
where Student.sID = Apply.sID;

select distinct sName,major
from Student,Apply
where Student.sID = Apply.sID;

select sname, GPA, decision
from Student,Apply
where Student.sID = Apply.sID 
  and sizeHS < 1000 and major='CS' and cname='Stanford';

select distinct College.cName
from College,Apply
where College.cName=Apply.cName
  and enrollment > 20000 and major='CS';

select distinct Student.sID,sName,GPA,Apply.cName,enrollment
from Student,Apply,College
where Student.sID=Apply.sID and College.cName=Apply.cName
order by GPA desc,enrollment;

select sID,major
from Apply
where major like '%bio%';

select *
from Apply
where major like '%bio%';

select sID,sName,GPA,sizeHS,GPA*(sizeHS/1000.0) as scaledGPA
from Student
order by scaledGPA desc;