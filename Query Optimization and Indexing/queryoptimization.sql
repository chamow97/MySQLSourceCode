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
(7, "Roku", "IT", 34500.85),
(8, "James", "IT", 10000.20),
(9, "Cathy", "Sales", 14556.50),
(10, "Vincent", "Engineering", 12400.50),
(11, "Zack", "IT", null),
(12, "Bryan", "Engineering", null);

SELECT Name, Salary
FROM Employee
ORDER BY Salary ASC;

SELECT Name, Salary
FROM Employee
ORDER BY Salary DESC;

SELECT Name, Department, Salary
FROM Employee
ORDER BY Department, Salary ASC;

-- SELECT Name, Department, Salary
-- FROM Employee
-- ORDER BY Salary ASC NULLS LAST;

SELECT department, AVG(salary)
FROM employee
GROUP BY department;

SELECT department, COUNT(*)
FROM employee
GROUP BY department
HAVING COUNT(*) > 2;


SELECT department, SUM(salary)
FROM employee
GROUP BY department
ORDER BY SUM(salary) ASC;

SELECT * FROM (
    SELECT department, COUNT(*) AS employee_count
    FROM employee
    GROUP BY department
) subquery
ORDER BY employee_count DESC;

SELECT * FROM Employee WHERE salary BETWEEN 10000 AND 20000;

SELECT * FROM Employee WHERE department IN ('IT', 'Sales');

SELECT * FROM Employee WHERE name LIKE 'J%';



DROP TABLE Employee;
