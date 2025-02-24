CREATE TABLE Department (
    departmentid INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

CREATE TABLE Employee (
    employeeid INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    departmentid INT,
    salary INT,
    FOREIGN KEY (departmentid) REFERENCES Department(departmentid)
);


INSERT INTO Department (departmentid, department_name) VALUES
(1, 'Engineering'),
(2, 'Marketing'),
(3, 'Human Resources'),
(4, 'Finance'),
(5, 'Sales'),
(6, 'Operations');

INSERT INTO Employee (employeeid, employee_name, departmentid, salary) VALUES
(101, 'Alice Johnson', 1, 123),
(102, 'Bob Smith', 2, 546),
(103, 'Charlie Brown', 3, 45),
(104, 'David Wilson', 4, 67),
(105, 'Eve Adams', 5, 647),
(106, 'Eve Adams', null, 743);

SELECT * FROM Employee;


SELECT employee.employee_name, department.department_name AS department
FROM employee
INNER JOIN department
ON employee.departmentid = department.departmentid;


SELECT employee.employee_name, COALESCE(department.department_name, 'No Department') AS department
FROM employee
LEFT JOIN department
ON employee.departmentid = department.departmentid;


SELECT COALESCE(employee.employee_name, 'No Employee'), department.department_name AS department
FROM employee
RIGHT JOIN department
ON employee.departmentid = department.departmentid;

SELECT COALESCE(e.employee_name, 'No Employee') AS employee_name, 
       COALESCE(d.department_name, 'No Department') AS department_name
FROM employee e
LEFT JOIN department d ON e.departmentid = d.departmentid

UNION

SELECT COALESCE(e.employee_name, 'No Employee') AS employee_name, 
       COALESCE(d.department_name, 'No Department') AS department_name
FROM employee e
RIGHT JOIN department d ON e.departmentid = d.departmentid;


SELECT COALESCE(employee.employee_name, 'No Employee'), COALESCE(department.department_name, 'No Department') AS department
FROM employee
CROSS JOIN department;


SELECT e.employee_name, subquery.avg_salary
FROM employee e
INNER JOIN (
    SELECT departmentid, AVG(salary) AS avg_salary
    FROM employee
    GROUP BY departmentid
) subquery
ON e.departmentid = subquery.departmentid;



