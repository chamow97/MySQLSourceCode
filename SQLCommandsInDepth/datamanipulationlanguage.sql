CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);


INSERT INTO Employees (EmployeeID, Name, Department, Salary)
VALUES (1, 'John Doe', 'IT', 60000.00);

INSERT INTO Employees (EmployeeID, Name, Department, Salary)
VALUES (2, 'ALice', 'IT', 40000.00);


INSERT INTO Employees (EmployeeID, Name, Department, Salary)
VALUES (3, 'Bob', 'IT', 50000.00);

INSERT INTO Employees (EmployeeID, Name, Department, Salary)
VALUES (4, 'Jenny', 'HR', 20000.00);


SELECT Name, Department, Salary
FROM Employees
WHERE Department = 'HR';

SELECT Name, Department, Salary
FROM Employees;


UPDATE Employees
SET Name = 'Alice'
WHERE EmployeeID = 2;


SELECT Name, Department, Salary
FROM Employees;


UPDATE Employees
SET Salary = 65000.00
WHERE EmployeeID = 1;

SELECT Name, Department, Salary
FROM Employees;

DELETE FROM Employees
WHERE EmployeeID = 1;


SELECT Name, Department, Salary
FROM Employees;

