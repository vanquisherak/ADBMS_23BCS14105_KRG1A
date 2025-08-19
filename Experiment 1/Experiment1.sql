--EXPERIMENT : 1

--Q1: Easy level

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100),
    Country VARCHAR(100)
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

INSERT INTO Authors (AuthorID, AuthorName, Country) VALUES
(1, 'J.K. Rowling', 'United Kingdom'),
(2, 'George R.R. Martin', 'United States'),
(3, 'Haruki Murakami', 'Japan');

INSERT INTO Books (BookID, Title, AuthorID) VALUES
(101, 'Harry Potter', 1),
(102, 'Game of Thrones', 2),
(103, 'Norwegian Wood', 3);

SELECT B.Title AS BookTitle, A.AuthorName, A.Country
FROM Books B
INNER JOIN Authors A 
ON B.AuthorID = A.AuthorID;

--Q2 Medium level

CREATE TABLE Departments(DeptID INT PRIMARY KEY, DeptName VARCHAR(100) NOT NULL);

CREATE TABLE Courses (CourseID INT PRIMARY KEY, CourseName VARCHAR(100) NOT NULL, DeptID INT,
FOREIGN KEY (DeptID) REFERENCES Departments(DeptID));

INSERT INTO Departments (DeptID, DeptName) VALUES
(1, 'Computer Science'),
(2, 'Mechanical Engineering'),
(3, 'Electrical Engineering'),
(4, 'Mathematics'),
(5, 'Physics');

INSERT INTO Courses (CourseID, CourseName, DeptID) VALUES
(101, 'Data Structures', 1),
(102, 'Algorithms', 1),
(103, 'Operating Systems', 1),
(104, 'Thermodynamics', 2),
(105, 'Fluid Mechanics', 2),
(106, 'Circuits', 3),
(107, 'Signals and Systems', 3),
(108, 'Linear Algebra', 4),
(109, 'Quantum Mechanics', 5),
(110, 'Classical Mechanics', 5),
(111, 'Compiler Design', 1); 

SELECT DeptName
FROM Departments
WHERE DeptID IN ( SELECT DeptID FROM Courses GROUP BY DeptID HAVING COUNT(*) > 2);