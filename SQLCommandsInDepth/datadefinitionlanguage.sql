CREATE DATABASE mysqlCourse;

USE mysqlCourse;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

SELECT * FROM Employees;

ALTER TABLE Employees
ADD Email VARCHAR(100);

SELECT * FROM Employees;


DROP TABLE Employees;

SELECT * FROM Employees;


CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);


SELECT * FROM Employees;

INSERT INTO Employees VALUES(1234, "Virat Kohli", "Cricket", 12000.10);

SELECT * FROM Employees;

TRUNCATE TABLE Employees;

SELECT * FROM Employees;

DROP TABLE Employees;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

RENAME TABLE Employees TO Staff;

SELECT * FROM Staff;
DROP TABLE Staff;


