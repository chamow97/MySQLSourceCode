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

CREATE VIEW event_date_time_view AS 
SELECT event_id, event_datetime  
FROM events;

SELECT * from event_date_time_view;

DROP TABLE events;
