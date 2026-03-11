SELECT * FROM Enrollments

CREATE PROCEDURE sp_DeleteStudent
    @StudentId INT
AS
BEGIN

    BEGIN TRY

        DELETE FROM Students2
        WHERE StudentId = @StudentId

        PRINT 'Student deleted successfully'

    END TRY

    BEGIN CATCH

        PRINT 'Error occurred while deleting student'
        PRINT ERROR_MESSAGE()

    END CATCH

END

EXEC sp_DeleteStudent 105 --student without enrollment

EXEC sp_DeleteStudent 4  --student with enrollment