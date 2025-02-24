CREATE TABLE Employee (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

INSERT INTO Employee VALUES
(1, "George", "IT", 25000.25), 
(2, "David", "IT", 26000.25),
(3, "Maria", "Engineering", 21000.56),
(4, "Tim", "Engineering", 11000.56),
(5, "Andrew", "Sales", 18000.00),
(6, "Bob", "Sales", 12000.50);

SELECT * FROM Employee;


SELECT COUNT(*) FROM Employee;

SELECT COUNT(*) FROM Employee WHERE department = 'IT';

SELECT COUNT(DISTINCT department) FROM Employee;

INSERT INTO Employee VALUES(7, "Roku", "IT", 34500.85);

SELECT department, COUNT(*)
FROM Employee
GROUP BY department;

SELECT SUM(salary) FROM Employee;

SELECT SUM(salary) FROM Employee WHERE department = 'IT';

SELECT department, SUM(salary)
FROM Employee
GROUP BY department;

SELECT AVG(salary) FROM Employee;

SELECT AVG(salary) FROM Employee WHERE department = 'Engineering';

SELECT department, AVG(salary)
FROM Employee
GROUP BY department;

SELECT department, ROUND(AVG(salary), 2)
FROM Employee
GROUP BY department;

SELECT COUNT(*), SUM(salary), AVG(salary), MAX(salary), MIN(salary)
FROM employee;

SELECT department, AVG(salary)
FROM employee
GROUP BY department
HAVING AVG(salary) > 15500;



DROP TABLE Employee;
