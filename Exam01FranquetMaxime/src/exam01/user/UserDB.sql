CREATE TABLE IF NOT EXISTS user
(
    user_id int                      AUTO_INCREMENT,
    Email varchar(255)          UNIQUE ,
    GSMNummer varchar(13)       UNIQUE,
    wachtwoord varchar(20),
    activatie_code int,

    PRIMARY KEY (user_id)
);

INSERT INTO user (Email, GSMNummer, wachtwoord, activatie_code)
values ('maxime.franquet@student.intecbrussel.be', '0477033913', 'maximef', 1234),
       ('alexandra.ropp@student.intecbrussel.be', '0479468201', 'alexandrar', 1234),
       ('camille.remal@student.intecbrussel.be', '0473050712', 'camiller', 1234),
       ('alphonse.elric@student.intecbrussel.be', '0498130314', 'alphonsee', 1234);

USE checkinoutdb;

SELECT *
FROM user;

UPDATE user
SET wachtwoord = '2021'
WHERE user_id = 2;

SELECT *
FROM user
WHERE Email LIKE 'al%';
