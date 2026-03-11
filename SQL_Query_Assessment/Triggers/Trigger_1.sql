CREATE TABLE StudentAudit
(
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    StudentID INT,
    ActionType VARCHAR(20),
    ActionDate DATETIME
)

CREATE TRIGGER trg_AfterInsertStudent
on Students2 
AFTER INSERT
AS
BEGIN
INSERT INTO StudentAudit(StudentID, ActionType, ActionDate)
SELECT StudentID,'INSERT',GETDATE()
FROM INSERTED

END

INSERT INTO Students2
VALUES (8,'Vamshi','M', 5, 4563217830, '09-07-2003')

select * from students2

select * from StudentAudit
