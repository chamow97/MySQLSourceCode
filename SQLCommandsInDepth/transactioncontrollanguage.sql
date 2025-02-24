CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);


BEGIN;
INSERT INTO Employees (EmployeeID, Name) VALUES (1, 'John Doe');
SAVEPOINT InsertionComplete;


SELECT * FROM Employees;

UPDATE Employees SET Name = 'Jane Doe' WHERE EmployeeID = 1;

SELECT * FROM Employees;

ROLLBACK TO InsertionComplete;

SELECT * FROM Employees;

COMMIT;


SELECT * FROM Employees;




