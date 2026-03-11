
CREATE TRIGGER trg_PreventStudentDelete
ON Students2
AFTER DELETE
AS
BEGIN

IF (SELECT COUNT(*) 
    FROM Enrollments e
    JOIN deleted d 
    ON e.StudentId = d.StudentId) > 0

BEGIN
    RAISERROR('Student has course enrollments and cannot be deleted',16,1)
    ROLLBACK TRANSACTION

END

END


DELETE FROM Students2
WHERE StudentId = 2

select * from students2

select * from Enrollments2
 


