CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE UserData (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO Users(user_id, name, email)
VALUES (1, "ABCD", "abcd@gmail.com"), (2, "DEFG", "defg@gmail.com");

SELECT * FROM Users;


SELECT * FROM UserData;

INSERT INTO UserData(user_id, name, email)
SELECT user_id, name, email FROM Users;

SELECT * FROM UserData;


SELECT * FROM Employees;
TRUNCATE Employees;
SELECT * FROM Employees;



INSERT INTO Employees(employeeid, name, department, salary)
VALUES (1, "ABCD", "IT", "10000"), (2, "DEFG", "IT", "20000"), (3, "George", "HR", "12000");

SELECT * FROM Employees;

UPDATE Employees
SET salary = 
	CASE 
		WHEN department = 'IT' THEN salary * 1.10
        ELSE salary
	END;

