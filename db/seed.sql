use employees_db;

INSERT INTO department
    (name)
VALUES
    ('Engineering'),
    ('Finance'),

INSERT INTO role
    (title, salary, department_id)
VALUES

    ('Lead Engineer', 120000, 1),
    ('Software Engineer', 100000, 1),
    ('Account Manager', 130000, 2),
    ('Accountant', 120000, 2),

INSERT INTO employee
    (first_name, last_name, role_id, manager_id)
VALUES
    ('Michael', 'Jordon', 1, NULL),
    ('James', 'Bond', 2, 1),
    ('Jimmy', 'John', 3, NULL),
    ('Archer', 'Sterling', 4, 2);
