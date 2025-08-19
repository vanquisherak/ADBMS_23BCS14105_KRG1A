-- EXPERIMENT: 2

--Ques_1

CREATE TABLE Employee ( EmpID INT PRIMARY KEY, EmpName VARCHAR(50) NOT NULL, Department VARCHAR(50) NOT NULL, ManagerID INT NULL);

ALTER TABLE Employee ADD CONSTRAINT FK_Manager FOREIGN KEY (ManagerID) REFERENCES Employee(EmpID);

INSERT INTO Employee (EmpID, EmpName, Department, ManagerID) VALUES
(1, 'Alice', 'HR', NULL),       
(2, 'Bob', 'Finance', 1),
(3, 'Charlie', 'IT', 1),
(4, 'David', 'Finance', 2),
(5, 'Eve', 'IT', 3),
(6, 'Frank', 'HR', 1);

SELECT E.EmpName AS EmployeeName, E.Department AS EmployeeDept, M.EmpName AS ManagerName, M.Department AS ManagerDept
FROM Employee E
LEFT JOIN Employee M 
ON E.ManagerID = M.EmpID;

--Q 2.

CREATE TABLE Year_tbl (id INT, year INT, NPV INT);

INSERT INTO Year_tbl (id, year, NPV) VALUES
(1, 2018, 100),
(7, 2020, 30),
(13, 2019, 40),
(1, 2019, 113),
(2, 2008, 121),
(3, 2009, 12),
(11, 2020, 99),
(7, 2019, 0);

CREATE TABLE Queries_tbl ( id INT, year INT);

INSERT INTO Queries_tbl (id, year) VALUES
(1, 2019),
(2, 2008),
(3, 2009),
(7, 2018),
(7, 2019),
(7, 2020),
(13, 2019);

SELECT Y.id AS ID, Y.year AS Year, ISNULL(Q.NPV, 0) AS NPV
FROM Queries_tbl AS Y
LEFT OUTER JOIN Year_tbl AS Q
ON Y.id = Q.id AND Y.year = Q.year;