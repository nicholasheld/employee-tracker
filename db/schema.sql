DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE employee (
    employee_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT,
    PRIMARY KEY (employee_id) 
);

CREATE TABLE role (
    role_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT,
    PRIMARY KEY (role_id)
);

CREATE TABLE department (
    department_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30),
    PRIMARY KEY (department_id)
)
--seeds the database--
INSERT INTO department
    (name)
VALUES
    ('Engineering'),
    ('Finance');

INSERT INTO role
    (title, salary, department_id)
VALUES

    ('Lead Engineer', 120000, 1),
    ('Software Engineer', 100000, 1),
    ('Account Manager', 130000, 2),
    ('Accountant', 120000, 2);

INSERT INTO employee
    (first_name, last_name, role_id, manager_id)
VALUES
    ('Michael', 'Jordon', 1, NULL),
    ('James', 'Bond', 2, 1),
    ('Jimmy', 'John', 3, NULL),
    ('Archer', 'Sterling', 4, 2);
