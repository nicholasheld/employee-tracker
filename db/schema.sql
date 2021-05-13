DROP DATABASE IF EXISTS workforce_db;
CREATE DATABASE workforce_db;

USE workforce_db;

CREATE TABLE department (
    id INT NOT NULL auto_increment PRIMARY KEY,
    name VARCHAR(30)
);

CREATE TABLE role (
    id INT NOT NULL auto_increment PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    INDEX depart_ind (department_id),
    CONSTRAINT fkdepart
    FOREIGN KEY (department_id)
        REFERENCES department(id)
        ON DELETE CASCADE
);

CREATE TABLE employee (
    id INT NOT NULL auto_increment PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT,
    INDEX role_ind (role_id),
    INDEX manag_ind (manager_id),
    CONSTRAINT fkrole
    FOREIGN KEY (role_id)
      REFERENCES role(id)
      ON DELETE CASCADE,
    CONSTRAINT fkmanager
    FOREIGN KEY (manager_id)
      REFERENCES employee(id)
      ON DELETE SET NULL
);
USE workforce_db;

INSERT INTO department (name)
VALUES ('R&D'),
('Engineering'),
('Human Resources');

INSERT INTO role (title, salary, department_id)
VALUES ('Head Researcher', 200000, 1),
('Lab technician', 120000, 1),
('Head of Engineering', 200000, 2),
('Lead Engineer', 100000, 2),
('HR Generalist', 140000, 3),
('Head of HR', 90000, 3);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Tony', 'Hawk', 1, null),
('James', 'Bond', 2, 1),
('Archer', 'Sterling', 3, null),
('Michael', 'Jordan', 4, 3),
('Scottie', 'Pippen', 5, null),
('Dennis', 'Rodman', 6, 5);
