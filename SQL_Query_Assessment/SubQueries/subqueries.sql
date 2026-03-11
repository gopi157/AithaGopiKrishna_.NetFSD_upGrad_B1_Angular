select * from students2
select * from departments2

SELECT s.StudentName, d.DepartmentName
FROM Students2 s
JOIN Departments d
ON s.DepartmentId = d.DepartmentId;

select * from courses
select * from teachers2

SELECT c.CourseName, t.TeacherName
FROM Courses2 c
JOIN Teachers2 t
ON c.TeacherId = t.TeacherId;

select * from students2;
select * from Enrollments2;
select * from courses2;

select s.studentName,c.courseName
from Students2 s inner join
Enrollments2 e on s.StudentId=e.StudentId
inner join Courses2 c
on e.courseId=c.CourseId

select * from students2;
select * from marks2

SELECT s.StudentName, m.MarksObtained, e.ExamId
FROM Students2 s
JOIN Marks2 m
ON s.StudentId = m.StudentId
JOIN Exams2 e
ON m.ExamId = e.ExamId;

select * from courses2
select * from Teachers2

SELECT c.CourseName, t.TeacherName
FROM Courses2 c
LEFT JOIN Teachers2 t
ON c.TeacherId = t.TeacherId;


SELECT t.TeacherName
FROM Teachers2 t
LEFT JOIN Courses2 c
ON t.TeacherId = c.TeacherId
WHERE c.CourseId IS NULL;

select * 
from students2 
where studentId in 
(select studentId
from marks2
where marksObtained > any (select avg(marksObtained) from marks2))


SELECT s.StudentName, m.MarksObtained
FROM Students2 s
JOIN Marks2 m
ON s.StudentId = m.StudentId
WHERE m.MarksObtained >
(
    SELECT AVG(MarksObtained)
    FROM Marks2
);

select * from courses2

select * from courses2
where credits in 
(select max(credits) from courses2)

select * from students2
select * from Enrollments2
select * from courses2




SELECT *
FROM Students2
WHERE StudentId IN
(
    SELECT StudentId
    FROM Enrollments2
    GROUP BY StudentId
    HAVING COUNT(CourseId) > 1
);

SELECT s.StudentName
FROM Students2 s
WHERE
(
    SELECT COUNT(*)
    FROM Enrollments2 e
    WHERE e.StudentId = s.StudentId
) > 1;

select * from teachers2
select * from Departments2

select teacherName 
from teachers2
where departmentId in
(select departmentId
from teachers2 
where teacherName='John')

select * from marks2

SELECT s.StudentName, m.MarksObtained
FROM Students2 s
JOIN Marks2 m
ON s.StudentId = m.StudentId
WHERE m.MarksObtained >= ALL
(
    SELECT MarksObtained
    FROM Marks2
);

SELECT d.DepartmentName
FROM Departments d
JOIN Students2 s
ON d.DepartmentId = s.DepartmentId
GROUP BY d.DepartmentName
HAVING COUNT(s.StudentId) >= ALL
(
    SELECT COUNT(StudentId)
    FROM Students2
    GROUP BY DepartmentId
);




