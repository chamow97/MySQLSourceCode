CREATE TABLE users (
    user_id INT AUTO_INCREMENT,
    username VARCHAR(50),
    PRIMARY KEY (user_id)
);

SELECT * FROM users;

INSERT INTO users(username) VALUES("george");
INSERT INTO users(username) VALUES("george");


ALTER TABLE users AUTO_INCREMENT = 1001;

INSERT INTO users(username) VALUES("alice");
INSERT INTO users(username) VALUES("bob");

INSERT INTO users VALUES(1002, "tom");


SELECT * FROM users;
