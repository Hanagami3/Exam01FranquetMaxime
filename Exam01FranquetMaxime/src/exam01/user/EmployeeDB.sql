CREATE TABLE IF NOT EXISTS employee
(
    employee_id     int      not null unique auto_increment,
    person_id       char(16) not null,
    department_id   int      not null,
    work_start_date date     not null,
    work_end_date   date     null,
    profile_photo   blob     null,

    PRIMARY KEY (employee_id),

    CONSTRAINT person_to_employee_fk FOREIGN KEY (person_id) REFERENCES person (person_id)
);

INSERT INTO employee
values (),
       (),
       ();