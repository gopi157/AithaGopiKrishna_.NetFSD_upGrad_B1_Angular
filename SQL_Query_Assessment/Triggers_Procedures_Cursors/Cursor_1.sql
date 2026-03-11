
CREATE PROCEDURE sp_DisplayStudentsCursor
AS
BEGIN

    DECLARE @StudentId INT
    DECLARE @StudentName VARCHAR(100)

    DECLARE student_cursor CURSOR
    FOR
    SELECT StudentId, FirstName
    FROM Students2

    OPEN student_cursor

    FETCH NEXT FROM student_cursor
    INTO @StudentId, @StudentName

    WHILE @@FETCH_STATUS = 0
    BEGIN

        PRINT 'StudentId: ' + CAST(@StudentId AS VARCHAR) 
              + '  StudentName: ' + @StudentName

        FETCH NEXT FROM student_cursor
        INTO @StudentId, @StudentName

    END

    CLOSE student_cursor
    DEALLOCATE student_cursor

END