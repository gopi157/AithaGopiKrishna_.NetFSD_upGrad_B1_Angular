select * from Students2
select * from Enrollments2
select * from Courses2

CREATE VIEW vw_StudentCourses
AS
SELECT 
    s.StudentName,
    c.CourseName,
    e.EnrollmentDate
FROM Students2 s
JOIN Enrollments2 e
ON s.StudentId = e.StudentId
JOIN Courses2 c
ON e.CourseId = c.CourseId;

select * from vw_StudentCourses

select * from  vw_StudentCourses
where StudentName=(select StudentName from students2 where studentId=2) 

SELECT StudentName, COUNT(CourseName) AS TotalCourses
FROM vw_StudentCourses
GROUP BY StudentName;

SELECT *
FROM vw_StudentCourses
WHERE EnrollmentDate > '2024-12-31';
