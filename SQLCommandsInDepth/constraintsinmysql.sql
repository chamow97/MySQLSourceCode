CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100)
);

INSERT INTO STUDENTS(StudentId, Name) VALUES(1, "Virat Kohli");

SELECT * FROM Students;

DROP TABLE Students;

CREATE TABLE Students (
    StudentID INT,
    Name VARCHAR(100)
);

SELECT * FROM Students;

INSERT INTO STUDENTS(Name) VALUES("Virat Kohli");

SELECT * FROM Students;

DROP TABLE Students;


CREATE TABLE Students (
    StudentID INT,
    Name VARCHAR(100)
);

INSERT INTO STUDENTS(StudentID, Name) VALUES(1, "Virat Kohli");


ALTER TABLE Students ADD PRIMARY KEY (StudentID);


CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);




