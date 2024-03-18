create table if not exists person
(
    person_id     char(16)            not null unique,
    first_name    varchar(255)        not null,
    last_name     varchar(255)        not null,
    date_of_birth date                not null,
    gender        char(1) DEFAULT 'U' null,
    nick_name     varchar(20)         null,
    user_id       int                 not null,

    PRIMARY KEY (person_id),

    CONSTRAINT user_to_person_fk FOREIGN KEY (user_id) REFERENCES user (user_id)
);


INSERT INTO person (person_id, first_name, last_name, date_of_birth, nick_name, user_id)
values (100, 'John', 'Doe', '1950-09-30','jojo', 5);

DELETE FROM person;

SELECT *
FROM person;

