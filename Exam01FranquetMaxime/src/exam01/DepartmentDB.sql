CREATE TABLE IF NOT EXISTS department
(
    department_ID int                      UNIQUE AUTO_INCREMENT,
    Titel varchar(50)                      NOT NULL,
    ParentDepartmentId int,

    PRIMARY KEY (department_ID)
);

INSERT INTO department (Titel, ParentDepartmentId)
values ('Instructors', null),
       ('Human Resources', null),
       ('Administration', null),
       ('IT Services', null),
       ('Accounting', null),
       ('Java', 1),
       ('C#', 1),
       ('JavaScript', 1),
       ('Python', 1),
       ('System and Networking', 1),
       ('Ethical Hacking', 1),
       ('Data Analysis', 1),
       ('Job Applications', 2),
       ('Personal Development ', 2),
       ('Financial Accounting', 5),
       ('Student Reimbursement', 5),
       ('Computer Hardware', 4);


USE checkinoutdb;

SELECT *
FROM department
WHERE Titel LIKE '%java%';


