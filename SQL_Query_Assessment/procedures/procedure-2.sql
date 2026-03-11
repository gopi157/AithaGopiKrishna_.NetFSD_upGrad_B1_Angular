CREATE PROCEDURE sp_GetStudentsByDepartment
    @DepartmentID INT
AS
BEGIN
    SELECT 
        StudentId,
        StudentName,
        AdmissionDate
    FROM Students2
    WHERE DepartmentId = @DepartmentID;
END

EXEC sp_GetStudentsByDepartment 2;



