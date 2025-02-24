DELIMITER //
CREATE PROCEDURE SafeDivide(IN numerator INT, IN denominator INT, OUT result DECIMAL(10,2))
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    SET result = NULL;

    IF denominator = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Division by zero error';
    ELSE
        SET result = numerator / denominator;
    END IF;
END //
DELIMITER ;


-- Declare a variable to store the result
SET @output = 0;

-- Call the procedure with example values
CALL SafeDivide(11, 2, @output);

-- Display the result
SELECT @output;

CALL SafeDivide(10, 0, @output);

SELECT @output;

