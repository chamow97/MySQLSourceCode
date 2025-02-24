CREATE TABLE events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    event_start_date DATE NOT NULL,
    event_end_date DATE NOT NULL,
    event_start_time TIME NOT NULL,
    event_end_time TIME NOT NULL,
    event_datetime DATETIME NOT NULL
);

INSERT INTO events (event_start_date, event_end_date, event_start_time, event_end_time, event_datetime) VALUES
('2024-02-01', '2024-02-01', '10:00:00', '12:00:00', '2024-02-01 10:00:00'),
('2024-02-02', '2024-02-02', '14:30:00', '16:30:00', '2024-02-02 14:30:00'),
('2024-02-03', '2024-02-03', '18:45:00', '20:45:00', '2024-02-03 18:45:00'),
('2024-02-04', '2024-02-04', '09:15:00', '11:15:00', '2024-02-04 09:15:00'),
('2024-02-05', '2024-02-05', '20:00:00', '22:00:00', '2024-02-05 20:00:00'),
('2024-02-06', '2024-02-06', '12:00:00', '14:00:00', '2024-02-06 12:00:00'),
('2024-02-07', '2024-02-07', '16:10:00', '18:10:00', '2024-02-07 16:10:00'),
('2024-02-08', '2024-02-08', '22:20:00', '00:20:00', '2024-02-08 22:20:00'),
('2024-02-09', '2024-02-09', '07:30:00', '09:30:00', '2024-02-09 07:30:00'),
('2024-02-10', '2024-02-10', '23:55:00', '01:55:00', '2024-02-10 23:55:00');



SELECT * FROM events;

SELECT EXTRACT(MONTH FROM event_start_date) AS month from events;

SELECT DATE_FORMAT(event_start_date, '%d-%b-%Y') AS formatted_date FROM events;

SELECT STR_TO_DATE('25-Dec-2023', '%d-%b-%Y');

SELECT event_start_date + INTERVAL 7 DAY AS next_week FROM events;

SELECT event_start_date + INTERVAL 1 MONTH AS next_month FROM events;

SELECT event_start_date + INTERVAL 1 YEAR AS next_year FROM events;

SELECT DATEDIFF(event_end_date, event_start_date) AS days_between FROM events;

SELECT TIMESTAMPDIFF(HOUR, event_start_time, event_end_time)	AS hours_elapsed FROM events;

SELECT DATE_ADD(event_start_date, INTERVAL 2 YEAR) AS future_date FROM events;

SELECT DATE_SUB(event_start_date, INTERVAL 3 DAY) AS past_date FROM events;

SELECT LAST_DAY(event_start_date) AS last_day_of_month FROM events;

SELECT DAYOFWEEK(event_start_date) AS day_number, QUARTER(event_start_date) 
AS quarter FROM events;

SELECT event_start_time, event_end_time, 
       TIMESTAMPDIFF(MINUTE, event_start_time, event_end_time) AS duration_in_minutes 
FROM events;

-- SELECT TRUNC('month', event_datetime) AS start_of_month FROM events;-- 

SELECT CONVERT_TZ(event_datetime, 'UTC', 'Asia/Kolkata') AS local_time FROM events;

DROP TABLE events;
