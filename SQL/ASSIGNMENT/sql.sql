create database sql_comp;
use sql_comp;

CREATE TABLE Company (
    CompanyID INT PRIMARY KEY,
    CompanyName VARCHAR(45),
    Street VARCHAR(45),
    City VARCHAR(45),
    State VARCHAR(20),
    Zip VARCHAR(10)
);

CREATE TABLE Contact (
    ContactID INT PRIMARY KEY,
    CompanyID INT,
    FirstName VARCHAR(45),
    LastName VARCHAR(45),
    Street VARCHAR(45),
    City VARCHAR(45),
    State VARCHAR(20),
    Zip VARCHAR(10),
    IsMain BOOLEAN,
    Email VARCHAR(45),
    Phone VARCHAR(12),
    FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID)
);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(45),
    LastName VARCHAR(45),
    Salary DECIMAL(10, 2),
    HireDate DATE,
    JobTitle VARCHAR(25),
    Email VARCHAR(45),
    Phone VARCHAR(12)
);

CREATE TABLE ContactEmployee (
    ContactEmployeeID INT PRIMARY KEY,
    ContactID INT,
    EmployeID INT,
    ContactDate DATE,
    Description VARCHAR(100),
    FOREIGN KEY (ContactID) REFERENCES Contact(ContactID),
    FOREIGN KEY (EmployeID) REFERENCES Employee(EmployeeID)
);


INSERT INTO Company (CompanyID, CompanyName, Street, City, State, Zip) VALUES
(1, 'Tech Solutions', '123 Elm St', 'New York', 'NY', '10001'),
(2, 'Innovatech', '456 Oak St', 'San Francisco', 'CA', '94105'),
(3, 'Alpha Systems', '789 Pine St', 'Austin', 'TX', '73301'),
(4, 'Beta Corp', '321 Maple Ave', 'Seattle', 'WA', '98101'),
(5, 'DataLogic', '654 Spruce St', 'Denver', 'CO', '80201'),
(6, 'NextGen Ltd', '111 Cedar Blvd', 'Miami', 'FL', '33101'),
(7, 'InfoWorks', '222 Palm Dr', 'Chicago', 'IL', '60601'),
(8, 'FusionSoft', '333 Birch St', 'Boston', 'MA', '02101'),
(9, 'CodeMatrix', '444 Walnut St', 'Portland', 'OR', '97201'),
(10, 'CloudCore', '555 Chestnut St', 'Atlanta', 'GA', '30301');

INSERT INTO Contact (ContactID, CompanyID, FirstName, LastName, Street, City, State, Zip, IsMain, Email, Phone) VALUES
(1, 1, 'Alice', 'Johnson', '1 First St', 'New York', 'NY', '10001', TRUE, 'alice@tech.com', '1112223333'),
(2, 2, 'Bob', 'Smith', '2 Second St', 'San Francisco', 'CA', '94105', FALSE, 'bob@innovatech.com', '2223334444'),
(3, 3, 'Carol', 'White', '3 Third St', 'Austin', 'TX', '73301', TRUE, 'carol@alpha.com', '3334445555'),
(4, 4, 'David', 'Brown', '4 Fourth St', 'Seattle', 'WA', '98101', FALSE, 'david@beta.com', '4445556666'),
(5, 5, 'Eve', 'Davis', '5 Fifth St', 'Denver', 'CO', '80201', TRUE, 'eve@datalogic.com', '5556667777'),
(6, 6, 'Frank', 'Miller', '6 Sixth St', 'Miami', 'FL', '33101', FALSE, 'frank@nextgen.com', '6667778888'),
(7, 7, 'Grace', 'Lee', '7 Seventh St', 'Chicago', 'IL', '60601', TRUE, 'grace@infoworks.com', '7778889999'),
(8, 8, 'Henry', 'Walker', '8 Eighth St', 'Boston', 'MA', '02101', FALSE, 'henry@fusion.com', '8889990000'),
(9, 9, 'Ivy', 'Hall', '9 Ninth St', 'Portland', 'OR', '97201', TRUE, 'ivy@codematrix.com', '9990001111'),
(10, 10, 'Jack', 'Adams', '10 Tenth St', 'Atlanta', 'GA', '30301', FALSE, 'jack@cloudcore.com', '0001112222');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Salary, HireDate, JobTitle, Email, Phone) VALUES
(1, 'Michael', 'Scott', 75000.00, '2020-01-15', 'Manager', 'michael@office.com', '1234567890'),
(2, 'Jim', 'Halpert', 60000.00, '2021-03-22', 'Sales', 'jim@office.com', '2345678901'),
(3, 'Pam', 'Beesly', 55000.00, '2022-05-01', 'Receptionist', 'pam@office.com', '3456789012'),
(4, 'Dwight', 'Schrute', 62000.00, '2020-07-10', 'Assistant Manager', 'dwight@office.com', '4567890123'),
(5, 'Stanley', 'Hudson', 58000.00, '2019-09-05', 'Sales', 'stanley@office.com', '5678901234'),
(6, 'Angela', 'Martin', 54000.00, '2018-11-30', 'Accountant', 'angela@office.com', '6789012345'),
(7, 'Kevin', 'Malone', 52000.00, '2019-04-17', 'Accountant', 'kevin@office.com', '7890123456'),
(8, 'Oscar', 'Martinez', 56000.00, '2021-06-21', 'Accountant', 'oscar@office.com', '8901234567'),
(9, 'Kelly', 'Kapoor', 51000.00, '2022-01-11', 'Customer Service', 'kelly@office.com', '9012345678'),
(10, 'Ryan', 'Howard', 53000.00, '2023-03-15', 'Intern', 'ryan@office.com', '0123456789');

INSERT INTO ContactEmployee (ContactEmployeeID, ContactID, EmployeID, ContactDate, Description) VALUES
(1, 1, 2, '2024-01-05', 'Introductory meeting'),
(2, 2, 3, '2024-01-10', 'Product discussion'),
(3, 3, 1, '2024-01-15', 'Contract negotiation'),
(4, 4, 4, '2024-01-20', 'Tech support'),
(5, 5, 5, '2024-01-25', 'Project kickoff'),
(6, 6, 6, '2024-02-01', 'Customer support'),
(7, 7, 7, '2024-02-05', 'Feedback collection'),
(8, 8, 8, '2024-02-10', 'Training session'),
(9, 9, 9, '2024-02-15', 'Follow-up call'),
(10, 10, 10, '2024-02-20', 'Demo presentation');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Salary, HireDate, JobTitle, Email, Phone)
VALUES (11, 'Lesley', 'Bland', 59000.00, '2023-07-01', 'HR Manager', 'lesley.bland@company.com', '215-555-1234');
INSERT INTO Company (CompanyID, CompanyName, Street, City, State, Zip)
VALUES (11, 'Urban Outfitters, Inc.', '100 Market St', 'Philadelphia', 'PA', '19107');


use sql_comp;

-- 4)	In the Employee table, the statement that changes Lesley Bland’s 
-- phone number to 215-555-8800.alter 
UPDATE Employee
SET Phone = '215-555-8800'
WHERE FirstName = 'Lesley' AND LastName = 'Bland';
select * from employee;


-- 5)	In the Company table, the statement that changes the name of -- 
-- “Urban Outfitters, Inc.” to “Urban Outfitters".

use sql_comp;
UPDATE Company
SET CompanyName = 'Urban Outfitters'
WHERE CompanyName = 'Urban Outfitters, Inc.';
select * from company;

-- 8)	What is the significance of “%” and “_” operators in the LIKE statement?  
--     Wildcard	                      Meaning	        Example	Matches
--  %	Zero or more characters	        'Jo%'	        John, Joey, Jordan
--  _	Exactly one character	         'J_n'	        Jan, Jon, Jim (not John)


-- 9) What is normalization in the context of databases?
-- ans -Normalization is the process of organizing data in a database to:

-- 1.Reduce data redundancy (no duplicate data),
-- 2.Ensure data integrity,
-- 3.Improve data efficiency.

-- It involves dividing large tables into smaller, related tables and using foreign keys to connect them.
-- 1NF: Eliminate repeating groups (use atomic values).
-- 2NF: Remove partial dependencies (non-key depends on full primary key).
-- 3NF: Remove transitive dependencies

-- 10) What does a JOIN in MySQL mean?
-- ans:  A JOIN in MySQL combines rows from two or more
--  tables based on a related column, usually a foreign key.


-- 11) What do you understand about DDL, DCL, and DML in MySQL? 
-- ANS: 
-- DDL - Data Definition Language
-- CREATE - create A NEW TABLE
-- ALTER - CHANGE A TABLE  STRUCTURE.
-- DROP - delete TABLE

--  DCL 	- Data Control Language
--  GRANT : GIVE A USER PERMISSION TO DO SOMETHING
-- REVOKE : TAKES BACK THE PERMISSION

-- DML -	Data Manipulation Language.
-- insert : ADD NEW value
-- update : CHANGE EXISTING VALUE 
-- delete : DELETE ROW BASE ON CONDITIONS

-- 12) What is the role of the MySQL JOIN clause in a query, and what are some
-- common types of joins?
-- ANS

-- The JOIN clause allows combining data from multiple tables based on related columns, t
-- ypically using foreign key relationships.

-- Type          	Description
-- INNER JOIN :	Returns only matching rows in both tables
-- LEFT JOIN :	Returns all rows from the left table and matching rows from the right table
-- RIGHT JOIN :	Returns all rows from the right table and matching rows from the left table
-- FULL JOIN :	(Not supported natively in MySQL, use UNION) Returns all matching/non-matching rows
-- CROSS JOIN :	Returns the Cartesian product of both tables

