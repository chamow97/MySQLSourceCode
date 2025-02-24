CREATE TABLE Department (
    departmentid INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

CREATE TABLE Employee (
    employeeid INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    departmentid INT,
    salary DECIMAL(10, 2),
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
(106, 'Eve Adams', null, 743),
(107, 'Bob Johnson', 1, 456);

SELECT employee_name
FROM employee
WHERE departmentid = (SELECT departmentid from department WHERE department_name = 'Engineering');

SELECT employee_name, (SELECT AVG(salary) FROM employee) AS avg_salary FROM employee;

SELECT e.employee_name
FROM employee e
WHERE e.salary > (SELECT AVG(salary) FROM employee WHERE departmentid = e.departmentid);



