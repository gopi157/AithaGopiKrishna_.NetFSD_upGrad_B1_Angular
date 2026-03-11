CREATE PROCEDURE sp_EnrollStudent2
    @StudentID INT,
    @CourseID INT
AS
BEGIN
    DECLARE @NewEnrollmentID INT;

    SELECT @NewEnrollmentID = ISNULL(MAX(EnrollmentId),0) + 1
    FROM Enrollments2;

    INSERT INTO Enrollments2
    (EnrollmentId, StudentId, CourseId, EnrollmentDate)
    VALUES
    (@NewEnrollmentID, @StudentID, @CourseID, GETDATE());
END;

select * from students2

EXEC sp_EnrollStudent2 2, 101;
SELECT StudentId FROM Students;
SELECT CourseId FROM Courses2;
