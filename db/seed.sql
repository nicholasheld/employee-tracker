use employees_db;

INSERT INTO department
    (name)
VALUES
    ('Sales'),
    ('Engineering'),
    ('Finance'),
    ('Legal');

INSERT INTO role
    (title, salary, department_id)
VALUES
    ('Sales Lead', 100000, 1),
    ('Salesperson', 80000, 1),
    ('Lead Engineer', 150000, 2),
    ('Software Engineer', 120000, 2),
    ('Account Manager', 160000, 3),
    ('Accountant', 125000, 3),
    ('Legal Team Lead', 250000, 4),
    ('Lawyer', 190000, 4);

INSERT INTO employee
    (first_name, last_name, role_id, manager_id)
VALUES
    ('Michael', 'Jordon', 1, NULL),
    ('James', 'Bond', 2, 1),
    ('Radhika', 'Sharma', 3, NULL),
    ('Kevin', 'Ballinger', 4, 3),
    ('Luke', 'Hicks', 5, NULL),
    ('Luke', 'Tichawa', 6, 5),
    ('Joe', 'Held', 7, NULL),
    ('Archer', 'Sterling', 8, 7);
