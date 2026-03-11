CREATE DATABASE SchoolDB;

USE SchoolDB;

CREATE TABLE Departments(
DepartmentId INT PRIMARY KEY,
DepartmentName VARCHAR(50)
);

CREATE TABLE Teachers(
TeacherId INT PRIMARY KEY,
TeacherName VARCHAR(50),
DepartmentId INT,
FOREIGN KEY (DepartmentId) REFERENCES Departments(DepartmentId)
);

CREATE TABLE Students(
StudentId INT PRIMARY KEY,
StudentName VARCHAR(50),
Age INT,
DepartmentId INT,
FOREIGN KEY (DepartmentId) REFERENCES Departments(DepartmentId)
);

CREATE TABLE Courses(
CourseId INT PRIMARY KEY,
CourseName VARCHAR(50),
TeacherId INT,
FOREIGN KEY (TeacherId) REFERENCES Teachers(TeacherId)
);

CREATE TABLE Enrollments(
EnrollmentId INT PRIMARY KEY,
StudentId INT,
CourseId INT,
FOREIGN KEY (StudentId) REFERENCES Students(StudentId),
FOREIGN KEY (CourseId) REFERENCES Courses(CourseId)
);

CREATE TABLE Exams(
ExamId INT PRIMARY KEY,
CourseId INT,
ExamDate DATE,
FOREIGN KEY (CourseId) REFERENCES Courses(CourseId)
);	

CREATE TABLE Marks(
MarkId INT PRIMARY KEY,
StudentId INT,
ExamId INT,
Marks INT,
FOREIGN KEY (StudentId) REFERENCES Students(StudentId),
FOREIGN KEY (ExamId) REFERENCES Exams(ExamId)
);

INSERT INTO Departments VALUES
(1,'Computer Science'),
(2,'Electronics'),
(3,'Mechanical');

INSERT INTO Teachers VALUES
(1,'Ramesh',1),
(2,'Suresh',2),
(3,'Mahesh',3);


INSERT INTO Students VALUES
(1,'Rahul',20,1),
(2,'Priya',21,2),
(3,'Amit',20,1),
(4,'Sneha',22,3);

INSERT INTO Courses VALUES
(101,'Java',1),
(102,'Digital Electronics',2),
(103,'Thermodynamics',3);

INSERT INTO Enrollments VALUES
(1,1,101),
(2,2,102),
(3,3,101),
(4,4,103);

INSERT INTO Exams VALUES
(1,101,'2026-03-10'),
(2,102,'2026-03-12'),
(3,103,'2026-03-15');

INSERT INTO Marks VALUES
(1,1,1,85),
(2,2,2,78),
(3,3,1,90),
(4,4,3,70);

SELECT * FROM Students;

--2. Show students with department name

SELECT s.StudentName, d.DepartmentName
FROM Students s
JOIN Departments d
ON s.DepartmentId = d.DepartmentId;

--Show courses with teacher names

select * from courses;
select * from teachers;

select c.courseName,t.teacherName from
courses c join teachers t
on c.TeacherId=t.TeacherId

--Show student enrolled courses

select * from Enrollments
select * from  Courses
select * from Students


select s.StudentName ,c.CourseName
from students s inner join enrollments e
on s.StudentId=e.StudentId
inner join courses c
on e.CourseId=c.CourseId

--Show students with marks

SELECT s.StudentName, m.Marks
FROM Marks m
JOIN Students s
ON m.StudentId = s.StudentId;

--Students who scored more than 80

SELECT s.StudentName, m.Marks
FROM Students s
JOIN Marks m
ON s.StudentId = m.StudentId
WHERE m.Marks > 80;

select * from marks


