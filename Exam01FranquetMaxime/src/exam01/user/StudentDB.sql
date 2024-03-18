CREATE TABLE IF NOT EXISTS student
(
    student_id int auto_increment,
    person_id char(16) null,
    course_id char(10) null,
    total_attendance double null,

    PRIMARY KEY (student_id),

    CONSTRAINT person_to_student_fk FOREIGN KEY (person_id) REFERENCES person (person_id)
);