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

        PRINT ERROR_MESSAGE()

    END CATCH

END

EXEC sp_DeleteStudent 3 --student has course enrollment can't be deleted

EXEC sp_DeleteStudent 8 --student doesn't have course enrollmenet can be deleted

select * from students2

select * from Enrollments2