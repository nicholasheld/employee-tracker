class employeeModel {
    constructor() {
        
    };
    //used in addDepartment()
    createDepartment() {
        return 'INSERT INTO department SET ?'
    };
    //used in addRole()
    createRole() {
        return 'INSERT INTO role SET ?'
    };
    //used in addEmployee()
    createEmployee() {
        return 'INSERT INTO employee SET ?'
    };
    //used in viewDepartment()
    readDepartments() {
        return 'SELECT * FROM department'
    };
    //used in viewRole()
    readRoles() {
        return 'SELECT * FROM role'
    };
    //used in viewEmployee()
    readEmployees() {
        return 'SELECT employee.id AS id, employee.first_name AS first_name,\
         employee.last_name AS last_name, role.title AS title, department.name AS department,\
        role.salary AS salary\
        FROM department\
        JOIN role\
        ON department.id = role.department_id\
        join employee\
        ON role.id = employee.role_id\
        ORDER BY id;'
    };
    //used in viewEmployeeByManager()
    readEmployeeByManager() {
        return 'SELECT * FROM employee WHERE manager_id = ?'
    };
    //used in viewDeptSalaryBudget()
    readDeptSalaryBudget() {
        return 'SELECT department.name AS Department, SUM(role.salary) AS Budget\
        FROM department\
        JOIN role\
        ON department.id = role.department_id\
        join employee\
        ON role.id = employee.role_id\
        WHERE department.id = ?;'
    };
    //used in viewEmployeeAndRoles()
    readEmployeesAndRoles() {
        return 'SELECT employee.id AS "employeeId", employee.first_name AS first_name, employee.last_name AS last_name, role.id AS roleId, role.title AS title\
        FROM employee\
         INNER JOIN role\
        ON role.id = employee.role_id'
    };
    //used in updateEmployeeRole()
    updateEmployeeRole() {
        return 'UPDATE employee SET role_id = ? WHERE id = ?'
    };
    //used in updateManager()
    updateManagers() {
        return 'UPDATE employee SET manager_id = ? WHERE id = ?'
    };
    //used in deleteDepartment()
    destroyDepartment() {
        return 'DELETE FROM department WHERE id = ?'
    };
    //used in deleteRole()
    destroyRole() {
        return 'DELETE FROM role WHERE id = ?'
    };
    //used in deleteEmployee()
    destroyEmployee() {
        return 'DELETE FROM employee WHERE id = ?'
    };
}

module.exports = new employeeModel