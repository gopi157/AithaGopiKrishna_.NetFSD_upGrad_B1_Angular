CREATE VIEW vw_ExamResults
AS
SELECT 
    s.StudentName,
    c.CourseName,
    m.MarksObtained
FROM Students2 s
INNER JOIN Marks2 m
ON s.StudentId = m.StudentId
INNER JOIN Exams2 e
ON m.ExamId = e.ExamId
INNER JOIN Courses2 c
ON e.CourseId = c.CourseId;

select * from vw_ExamResults

select * from exams2

SELECT *
FROM vw_ExamResults
WHERE MarksObtained > 80;

SELECT *
FROM vw_ExamResults
WHERE MarksObtained IN
(
    SELECT MAX(MarksObtained)
    FROM vw_ExamResults
    GROUP BY ExamType
);

SELECT *
FROM vw_ExamResults
WHERE MarksObtained < 40;



 
