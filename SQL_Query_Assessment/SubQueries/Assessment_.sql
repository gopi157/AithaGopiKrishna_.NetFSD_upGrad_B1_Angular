CREATE TABLE Departments2(
DepartmentId INT PRIMARY KEY,
DepartmentName VARCHAR(50) UNIQUE
);

CREATE TABLE Students2(
StudentId INT PRIMARY KEY,
StudentName VARCHAR(50),
Gender CHAR(1),
DepartmentId INT,
CHECK (Gender IN ('M','F')),
FOREIGN KEY (DepartmentId) REFERENCES Departments(DepartmentId)
);

CREATE TABLE Teachers2(
TeacherId INT PRIMARY KEY,
TeacherName VARCHAR(50),
Email VARCHAR(100) UNIQUE,
DepartmentId INT,
FOREIGN KEY (DepartmentId) REFERENCES Departments(DepartmentId)
);

CREATE TABLE Courses2(
CourseId INT PRIMARY KEY,
CourseName VARCHAR(50),
Credits INT CHECK (Credits BETWEEN 1 AND 5),
TeacherId INT,
FOREIGN KEY (TeacherId) REFERENCES Teachers(TeacherId)
);

CREATE TABLE Enrollments2(
EnrollmentId INT PRIMARY KEY,
StudentId INT,
CourseId INT,
EnrollmentDate DATE DEFAULT GETDATE(),
FOREIGN KEY (StudentId) REFERENCES Students(StudentId),
FOREIGN KEY (CourseId) REFERENCES Courses(CourseId)
);

CREATE TABLE Marks2(
MarkId INT PRIMARY KEY,
StudentId INT,
MarksObtained INT CHECK (MarksObtained BETWEEN 0 AND 100),
FOREIGN KEY (StudentId) REFERENCES Students(StudentId)
);

ALTER TABLE Students2
ADD PhoneNumber VARCHAR(15);

ALTER TABLE Teachers2
ADD Salary INT;

ALTER TABLE Teachers2
ALTER COLUMN Salary DECIMAL(10,2);

ALTER TABLE Teachers
ADD CONSTRAINT CK_TeacherSalary
CHECK (Salary > 20000);

ALTER TABLE Students
DROP COLUMN PhoneNumber;

SELECT * FROM Students2;

EXEC sp_rename 'Students2.FullName', 'StudentName', 'COLUMN';

ALTER TABLE Students2
ADD CONSTRAINT PK_Students2 PRIMARY KEY (StudentId);



select * from Departments2

INSERT INTO Departments2 VALUES
(1,'Computer Science'),
(2,'Electronics'),
(3,'Mechanical'),
(4,'Civil'),
(5,'Information Technology');

select * from teachers2

SELECT DepartmentId FROM Departments2;

INSERT INTO Teachers2
(TeacherId, TeacherName, Email, DepartmentId, Salary)
VALUES

(4,'Naga Shourya','naga@gmail.com',4,42000),
(5,'Rohith','rohit@gmail.com',5,45000);

INSERT INTO Students2
(StudentId, StudentName, Gender, DepartmentId, PhoneNumber)
VALUES
(4,'Karthik','M',5,'9876543210'),
(6,'Pooja','F',1,'9876543215'),
(7,'Rohit','M',2,'9876543216')


SELECT * 
FROM Departments2
WHERE DepartmentId = 5;
;


select * from students2

SELECT * FROM Departments;

Select * from teachers2;

select * from courses2;

INSERT INTO Courses2 VALUES
(101,'Java',4,1),
(102,'SQL',3,1),
(103,'Digital Electronics',4,2),
(104,'Microprocessors',3,2),
(105,'Thermodynamics',4,3),
(106,'Machine Design',3,3),
(107,'Structural Engineering',4,4),
(108,'Surveying',3,5)

sp_helpconstraint Courses2;

ALTER TABLE Courses2
DROP CONSTRAINT FK__Courses2__Teache__7B5B524B;

ALTER TABLE Courses2
ADD CONSTRAINT FK_Courses2_Teachers2
FOREIGN KEY (TeacherId)
REFERENCES Teachers2(TeacherId);

sp_helpconstraint Enrollments2;

ALTER TABLE Enrollments2
DROP CONSTRAINT FK__Enrollmen__Cours__00200768;

ALTER TABLE Enrollments2
ADD CONSTRAINT FK_Enrollments2_Courses2
FOREIGN KEY (CourseId)
REFERENCES Courses2(CourseId);

sp_helpconstraint marks2;

SELECT s.StudentName
FROM Students2 s
JOIN Departments d
ON s.DepartmentId = d.DepartmentId
WHERE d.DepartmentName = 'Computer Science';

SELECT *
FROM Teachers2;

ALTER TABLE Teachers2
ADD HireDate DATE;

UPDATE Teachers2
SET HireDate = '2024-06-25'
WHERE TeacherId = 5;

ALTER TABLE Students2
ADD DateOfBirth DATE;

UPDATE Students2
SET DateOfBirth = '2004-09-21'
WHERE StudentId = 7;

select * from Students2

SELECT *
FROM Teachers2
WHERE HireDate > '2022-12-31';

SELECT *
FROM Students2
WHERE StudentName LIKE 'A%';

SELECT *
FROM Courses2
WHERE Credits > 3;

SELECT *
FROM Students2
WHERE DateOfBirth BETWEEN '2005-01-01' AND '2008-12-31';


SELECT s.StudentName
FROM Students2 s
JOIN Departments d
ON s.DepartmentId = d.DepartmentId
WHERE d.DepartmentName <> 'Mechanical';

SELECT *
FROM Teachers2
WHERE Salary BETWEEN 40000 AND 70000;

SELECT *
FROM Courses2
WHERE TeacherId <> 3;

select * from students2
select * from Departments2

SELECT d.DepartmentName, COUNT(s.StudentId) AS TotalStudents
FROM Students2 s
JOIN Departments d
ON s.DepartmentId = d.DepartmentId
GROUP BY d.DepartmentName;

select * from marks2
select * from courses2
select * from students2
select * from Enrollments2

insert into students2 values(5,'Vivek','M',4,7896541230,'2004-01-14')

INSERT INTO Enrollments2
(EnrollmentId, StudentId, CourseId, EnrollmentDate)
VALUES
(7,7,106,'2024-01-16')

select * from marks2
select * from courses2
select * from students2
select * from Enrollments2
SELECT * FROM Departments2
select * from exams
select avg(marksObtained) from marks2

ALTER TABLE Marks2
ADD ExamId INT;

CREATE TABLE Exams2(
ExamId INT PRIMARY KEY,
CourseId INT,
ExamDate DATE,
FOREIGN KEY (CourseId) REFERENCES Courses2(CourseId)
);

INSERT INTO Exams2
VALUES
(1,101,'2024-03-01'),
(2,102,'2024-03-02'),
(3,103,'2024-03-03'),
(4,104,'2024-03-04'),
(5,105,'2024-03-05');

ALTER TABLE Marks2
ADD CONSTRAINT FK_Marks2_Exams2
FOREIGN KEY (ExamId)
REFERENCES Exams2(ExamId);

UPDATE Marks2
SET ExamId = 2
WHERE MarkId =4 ;

select * from marks2


select examid,avg(marksObtained) as averagemarks from marks2
group by examid


select * from marks2
select * from courses2
select * from students2
select * from Enrollments2
SELECT * FROM Departments2
select * from exams

select CourseId,Count(*) as No_Of_Students_Enroleed from Enrollments2
group by CourseId

SELECT c.CourseName, COUNT(e.StudentId) AS TotalStudents
FROM Enrollments2 e
JOIN Courses2 c
ON e.CourseId = c.CourseId
GROUP BY c.CourseName;


select * from marks2
select * from courses2
select * from students2
select * from Enrollments2
SELECT * FROM Departments2

select * from exams
select * from marks2

select examId,max(marksObtained) as MAX_MARKS 
from marks2 group by examId

select * from courses2
select * from marks2
select * from exams
select * from students2

select s.StudentName,c.courseName, min(m.marksObtained) as Minimum_Marks
from marks2 m inner join Students2 s
on m.StudentId=s.StudentId
inner join exams e
on m.ExamId=e.ExamId
inner join courses2 c
on e.courseId=c.CourseId
group by s.StudentName,c.courseName, m.marksObtained

select * from Departments2
select * from students2

select d.departmentId,count(s.StudentId) as No_OF_Students
from departments2 d
inner join students2 s
on d.departmentId=s.departmentId
group by d.departmentId
having count(d.departmentId)>1




