CREATE DATABASE try;
USE try;

CREATE TABLE employees (
    Employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL(10, 2),
    hire_date DATE
);

CREATE TABLE employee_audit (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    name VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL(10, 2),
    hire_date DATE,
    action_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO employees (name, position, salary, hire_date)
VALUES 
    ('John Doe', 'Software Engineer', 80000.00, '2022-01-15'),
    ('Jane Smith', 'Project Manager', 90000.00, '2021-05-22'),
    ('Alice Johnson', 'UX Designer', 75000.00, '2023-03-01');
    
    SELECT * FROM employees;
    DELIMITER $$

CREATE TRIGGER after_employee_insert
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employee_audit (employee_id, name, position, salary, hire_date)
    VALUES (NEW.Employee_id, NEW.name, NEW.position, NEW.salary, NEW.hire_date);
END $$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE add_new_employe (
    IN p_name VARCHAR(100),
    IN p_position VARCHAR(100),
    IN p_salary DECIMAL(10, 2),
    IN p_hire_date DATE
)
BEGIN
    INSERT INTO employees (name, position, salary, hire_date)
    VALUES (p_name, p_position, p_salary, p_hire_date);
END $$

DELIMITER ;
CALL add_new_employe('Bob Marley', 'Marketing Specialist', 65000.00, '2025-05-15');
select * from employees;

call add_new_employe ('parth','mkmdlmflemfld',99009,'2020-09-23');



select * from employee_audit;
