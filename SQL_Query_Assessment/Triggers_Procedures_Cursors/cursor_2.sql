CREATE PROCEDURE sp_CalculateStudentTotalMarks
AS
BEGIN

    DECLARE @StudentId INT
    DECLARE @StudentName VARCHAR(100)
    DECLARE @TotalMarks INT

    DECLARE student_cursor CURSOR
    FOR
    SELECT StudentId, FirstName
    FROM Students2

    OPEN student_cursor

    FETCH NEXT FROM student_cursor
    INTO @StudentId, @StudentName

    WHILE @@FETCH_STATUS = 0
    BEGIN

        SELECT @TotalMarks = SUM(MarksObtained)
        FROM Marks2
        WHERE StudentId = @StudentId

        PRINT 'StudentName: ' + @StudentName + 
              '  TotalMarks: ' + CAST(ISNULL(@TotalMarks,0) AS VARCHAR)

        FETCH NEXT FROM student_cursor
        INTO @StudentId, @StudentName

    END

    CLOSE student_cursor
    DEALLOCATE student_cursor

END