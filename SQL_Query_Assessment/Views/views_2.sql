select * from Students2
select * from Departments2

CREATE VIEW vw_DepartmentStudentCount
AS
SELECT 
    d.DepartmentName,
    COUNT(s.StudentId) AS TotalStudents
FROM Departments d
JOIN Students2 s
ON d.DepartmentId = s.DepartmentId
GROUP BY d.DepartmentName;

select * from vw_DepartmentStudentCount

SELECT *
FROM vw_DepartmentStudentCount
WHERE TotalStudents > 10;

SELECT *
FROM vw_DepartmentStudentCount
ORDER BY TotalStudents DESC;





