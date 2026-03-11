use SchoolDB

create view vw_StudentDepartment 
as
select s.StudentId,s.StudentName,d.DepartmentName
from Students2 s inner join Departments2 d
on s.DepartmentId=d.DepartmentId

select * from vw_StudentDepartment where DepartmentName='Computer Science'

drop view vw_StudentDepartment

select * from Students2
select * from departments2





