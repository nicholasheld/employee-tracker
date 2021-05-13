DROP DATABASE IF EXISTS workforce_db;
CREATE DATABASE workforce_db;

USE workforce_db;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30)
 
);
-- DEPARTMENT TABLE ----
CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30),
  salary DECIMAL,
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES department(id)
);
-- EMPLOYEE ROLE TABLE ----
CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  manager_id INT,
  role_id INT,
  FOREIGN KEY (role_id) REFERENCES role(id),
  FOREIGN KEY (manager_id) REFERENCES employee(id)

);

INSERT INTO department (name)
VALUE ("Sales");
INSERT INTO department (name)
VALUE ("Engineering");
INSERT INTO department (name)
VALUE ("Finance");
INSERT INTO department (name)
VALUE ("Legal");

-- EMPLOYEE ROLE SEEDS -------
INSERT INTO roles (title, salary, department_id)
VALUE ("Lead Engineer", 150000, 2);
INSERT INTO roles (title, salary, department_id)
VALUE ("Legal Team Lead", 250000, 4);
INSERT INTO roles (title, salary, department_id)
VALUE ("Accountant", 125000, 3);
INSERT INTO roles (title, salary, department_id)
VALUE ("Sales Lead", 100000, 1);
INSERT INTO roles (title, salary, department_id)
VALUE ("Salesperson", 80000, 1);
INSERT INTO roles (title, salary, department_id)
VALUE ("Software Engineer", 120000, 2);
INSERT INTO roles (title, salary, department_id)
VALUE ("Lawyer", 190000, 4);

-- EMPLOYEE SEEDS -------
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Jessica", "Day", null, 1);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Tiffany", "Hadish", null, 2);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Dave","Chapelle",null,3);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Tom", "Cruise", 1, 4);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("James", "Bond", 4, 5);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Archer", "Sterling", 1, 6);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Michael", "Jordan", 2, 7);

-- SELECTING FOR CREATING 
--TABLES IN OUR SQL WORKBENCH 
SELECT * FROM department;
SELECT * FROM roles;
SELECT * FROM employee;
-- INSERT INTO department
--     (name)
-- VALUES
--     ("Engineering");
--     INSERT INTO department
--     (name)
-- VALUES
--     ('Finance');

-- INSERT INTO role
--     (title, salary, department_id)
-- VALUES

--     ('Lead Engineer', 120000, 1);
--     ('Software Engineer', 100000, 1);
--     ('Account Manager', 130000, 2);
--     ('Accountant', 120000, 2);

-- INSERT INTO employee
--     (first_name, last_name, role_id, manager_id)
-- VALUES
--     ('Michael', 'Jordon', 1, NULL);
--     ('James', 'Bond', 2, 1);
--     ('Jimmy', 'John', 3, NULL);
--     ('Archer', 'Sterling', 4, 2);
