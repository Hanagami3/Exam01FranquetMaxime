CREATE TABLE IF NOT EXISTS evenLog
(
    evenLog_id int AUTO_INCREMENT,
    user_id int,
    event date,
    check_in time,
    Check_out time,

    PRIMARY KEY (evenLog_id),

    CONSTRAINT user_to_evenLog_fk FOREIGN KEY (user_id) REFERENCES user(user_id)
);

SET FOREIGN_KEY_CHECKS=0;

USE CheckInOutDB;
INSERT INTO evenLog(user_id, event, check_in, Check_out)
values (1, '2024-03-18', '08:35:37', null),
       (1, '2024-03-18', '08:35:37', '16:45:56'),
       (1, '2022-03-01', '08:35:37', null),
       (2, '2020-04-08', '08:35:37', '16:45:56'),
       (2, '2023-12-28', '08:35:37', null),
       (3, '2022-07-16', '08:35:37', '19:45:56'),
       (3, '2023-10-10', '08:35:37', null),
       (2, '2022-09-18', '08:35:37', '19:45:56'),
       (4, '2021-05-25', '08:35:37', null),
       (4, '2021-03-18', '08:35:37', '19:45:56'),
       (3, '2022-11-19', '08:35:37', null),
       (2, '2019-04-28', '08:35:37', '19:45:56'),
       (3, '2024-03-17', '08:35:37', null),
       (2, '2024-08-13', '08:35:37', '19:45:56'),
       (1, '2022-09-02', '08:35:37', null),
       (2, '2021-06-07', '08:35:37', '19:45:56'),
       (1, '2023-11-09', '08:35:37', null),
       (1, '2024-02-13', '08:35:37', '19:45:56'),
       (2, '2021-09-22', '08:35:37', null),
       (4, '2020-09-29', '08:35:37', '19:45:56');

delete from evenLog;

SELECT *
FROM evenLog
Where event = '2024-03-18';

SELECT *
FROM evenLog
WHERE Check_out < '17:00:00';

SELECT *
FROM evenLog
ORDER BY event;


