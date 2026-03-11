use SchoolDB

CREATE PROCEDURE sp_InsertStudent
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Gender CHAR(1),
    @DepartmentID INT,
    @AdmissionDate DATE
AS
BEGIN
    INSERT INTO Students2
    (FirstName, LastName, Gender, DepartmentId, AdmissionDate)
    VALUES
    (@FirstName, @LastName, @Gender, @DepartmentID, @AdmissionDate);
END;

EXEC sp_InsertStudent
    @FirstName = 'Rahul',
    @LastName = 'Sharma',
    @Gender = 'M',
    @DepartmentID = 1,
    @AdmissionDate = '2024-06-01';

    --also insert in this way : EXEC sp_InsertStudent 'Priya','Kumar','F',2,'2024-06-02';

