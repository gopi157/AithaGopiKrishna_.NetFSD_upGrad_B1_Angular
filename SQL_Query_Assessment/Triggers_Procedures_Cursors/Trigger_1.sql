
CREATE TABLE MarksAudit(
AuditID INT IDENTITY(1,1) PRIMARY KEY,
StudentId INT, 
ExamId INT,
OldMarks INT,
NewMarks INT,
UpdatedDate DATETIME

)

CREATE TRIGGER trg_UpdateMarksAudit
ON MARKS2
AFTER UPDATE
AS
BEGIN

INSERT INTO MarksAudit(StudentId, ExamId, OldMarks, NewMarks, UpdatedDate)
SELECT d.StudentId,
       d.ExamId,
       d.MarksObtained,
       i.MarksObtained,
       GETDATE()
       FROM deleted d
       JOIN inserted i
       ON d.studentId=i.StudentId
       AND d.ExamId=i.ExamId

END 




SELECT * FROM MARKS2


UPDATE MARKS2 set MarksObtained=61
WHERE StudentId=4 AND ExamId=2

SELECT * FROM MarksAudit


 