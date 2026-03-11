
CREATE PROCEDURE sp_AddStudent
    @StudentId INT
   @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @DepartmentID INT,
    @Gender VARCHAR(10),
    @AdmissionDate DATE
    
    AS
     
     BEGIN

     BEGIN TRY

     INSERT INTO Students2 (StudentId,FirstName, LastName, DepartmentId, Gender, AdmissionDate)
        VALUES (@FirstName, @LastName, @DepartmentID, @Gender, @AdmissionDate)

        PRINT 'Student inserted successfully'

     END TRY

     BEGIN CATCH

     PRINT 'Error occurred while inserting student'
        
     --PRINT ERROR_MESSAGE()

     RAISERROR(ERROR_MESSAGE(),16,1)

     END CATCH

  END

     SELECT * FROM STUDENTS2

     EXEC sp_AddStudent 10, 'Nitesh','Sharma', 3,'Male','2026-03-10'
    
   EXEC sp_AddStudent 11,'Arun','Kumar',999,'Male', '2026-03-10'
                      
    
    
    
    
   
   
    ,
    