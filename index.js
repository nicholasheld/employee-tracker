//required npm packages
const inquirer = require("inquirer");
const mysql = require("mysql");
require("console.table");
require('dotenv').config();
const employeeModel = require('./db/model')

//connection to local host/MySQL
const connection = mysql.createConnection({
  host: "localhost",
  port: process.env.PORT || 3306,
  user: "root",
  password: "Te$$ding0",
  database:"employee_db",
})
//connection success or throw an error
connection.connect(() => {
  // if (err) throw err;
  console.log("Successful connection!");
  runList();
});

//initial function providing a base menu of options
function init() {
  inquirer
      .prompt([
          {
              type: 'list',
              name: 'action',
              message: 'What would you like to do with the workforce database?',
              choices: ['Add_department', 'Add_role', 'Add_employee', 'View_departments', 'View_roles', 'View_employees', 'Update_employee_role', 'Update_managers', 'View_employees_by_manager', 'Delete_department', 'Delete_role', 'Delete_employee', 'View_dept_salary_budget', 'Quit']
          }
      ])
      .then((answer) => {
          switch (answer.action) {
              case 'Add_department':
                  addDepartment();
                  break;
              case 'Add_role':
                  addRole();
                  break;
              case 'Add_employee':
                  addEmployee();
                  break;
              case 'View_departments':
                  viewDepartments();
                  break;
              case 'View_roles':
                  viewRoles();
                  break;
              case 'View_employees':
                  viewEmployees();
                  break;
              case 'Update_employee_role':
                  updateEmployeeRole();
                  break;
              case 'Update_managers':
                  updateManagers();
                  break;
              case 'View_employees_by_manager':
                  viewEmployeeByManagers();
                  break;
              case 'Delete_department':
                  deleteDepartment();
                  break;
              case 'Delete_role':
                  deleteRole();
                  break;
              case 'Delete_employee':
                  deleteEmployee();
                  break;
              case 'View_dept_salary_budget':
                  viewDeptSalaryBudget();
                  break;
              case 'Quit':
                  connection.end();
                  break;
              default:
                  console.log('Invalid Choice');
                  init()
      }
  })
}
//create functions to call upon

