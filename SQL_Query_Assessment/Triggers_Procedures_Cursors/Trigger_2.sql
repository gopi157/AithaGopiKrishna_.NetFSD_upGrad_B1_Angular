CREATE TABLE StudentAudit2
(
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    StudentID INT,
    ActionType VARCHAR(20),
    ActionDate DATETIME
)

CREATE TRIGGER trg_StudentInsertAudit
ON Students
AFTER INSERT
AS
BEGIN
    INSERT INTO StudentAudit(StudentID, ActionType, ActionDate)
    SELECT StudentID, 'INSERT', GETDATE()
    FROM inserted
END

INSERT INTO Students2
VALUES (9,'Rohith','M', 4, 8978456512, '08-03-2003')

select * from StudentAudit