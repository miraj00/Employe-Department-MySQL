-- Paste your answers for each question in the appropriate spot below. (Keep the number headings)
-- #1

-- CREATE DATABASE CompanyDb;

-- #2
DROP TABLE IF EXISTS Department;
 CREATE TABLE Department 
	( Id  INT PRIMARY KEY AUTO_INCREMENT,
	  Name VARCHAR(25) NOT NULL,
	  Hiring Boolean,
      Location VARCHAR(50)
    );

-- #3
INSERT INTO Department ( Name, Hiring, Location ) VALUES ( 'Technology', True ,'1570 Woodward Ave.');  
INSERT INTO Department ( Name, Hiring, Location ) VALUES ( 'Shipping & Receiving', False ,'Southfield');  
-- SELECT * FROM department;

-- #4
DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee 
	( SSN CHAR(9) PRIMARY KEY,
	  DOB DATE,
	  Phone CHAR(10),
	  FirstName VARCHAR(30) NOT NULL,
	  LastName VARCHAR(30) NOT NULL,
	  DepartmentId INT  REFERENCES Department(Id)
      );
      
-- #5
INSERT INTO Employee (SSN, DOB, Phone, FirstName, LastName, DepartmentId ) 
			VALUES ( '123456789', '1975-01-05', '3135555505', 'Charles', 'Charleston', 2 );
INSERT INTO Employee (SSN, DOB, Phone, FirstName, LastName, DepartmentId ) 
			VALUES ( '987654321', '1990-05-02', '2489995555', 'Jimmy', 'Scrambles', 1);
INSERT INTO Employee (SSN, DOB, Phone, FirstName, LastName, DepartmentId ) 
			VALUES ( '456789123', '2001-08-06', '7895555525', 'Vince', 'Jabowski', 1);
INSERT INTO Employee (SSN, DOB, Phone, FirstName, LastName, DepartmentId ) 
			VALUES ( '654854632', '1988-04-06', '3139721400', 'John', 'Johnston', 2);

-- #6
SELECT MIN(DOB) FROM Employee;

SET SQL_SAFE_UPDATES=0;
UPDATE Employee SET LastName ='Spiderman' WHERE DOB = '2001-08-06';
SET SQL_SAFE_UPDATES=1;

SELECT * FROM Employee;

-- #7
SELECT * FROM Employee WHERE LastName LIKE 'J%';

-- #8
SELECT max(DOB) FROM Employee;

SET SQL_SAFE_UPDATES=0;
DELETE FROM Employee WHERE DOB = '1975-01-05';
SET SQL_SAFE_UPDATES=1;

-- #9
SELECT * FROM Employee WHERE Phone LIKE '313%';

-- #10
SELECT * FROM Employee WHERE DOB < ('1999-9-9');

-- #11
SET SQL_SAFE_UPDATES=0;
UPDATE Employee SET Phone = NULL WHERE DOB > ('2000-12-31');
SET SQL_SAFE_UPDATES=1;
-- SELECT * FROM Employee ;

-- #12
SELECT * FROM Employee WHERE Phone IS NULL;

-- #13
-- SELECT * FROM Employee;
-- SELECT * FROM Department;
SELECT * 
	FROM Employee
    JOIN Department
    ON Employee.DepartmentId = Department.Id; 

-- #14
 -- DROP TABLE IF EXISTS Employee;
 -- DROP TABLE IF EXISTS Department;
