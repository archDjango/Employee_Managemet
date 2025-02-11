CREATE TABLE Departments (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL UNIQUE,
    Location VARCHAR(100) NOT NULL
);


CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Position VARCHAR(100) NOT NULL,
    DepartmentID INT,
    Salary DECIMAL(10,2) NOT NULL,
    HireDate DATE NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Salaries (
    SalaryID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT,
    SalaryAmount DECIMAL(10,2) NOT NULL,
    SalaryDate DATE NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

INSERT INTO Departments (Name, Location) VALUES
('HR', 'Pune'),
('IT', 'Mumbai'),
('Finance', 'Delhi');


INSERT INTO Employees (Name, Email, Position, DepartmentID, Salary, HireDate) VALUES
('Ram Kate', 'Ram@example.com', 'Manager', 1, 75000.00, '2023-01-10'),
('Ali', 'ali@example.com', 'Software Engineer', 2, 85000.00, '2022-05-15'),
('Balasaheb', 'bala@example.com', 'Accountant', 3, 60000.00, '2021-07-20');



INSERT INTO Salaries (EmployeeID, SalaryAmount, SalaryDate) VALUES
(1, 125000.00, '2023-01-10'),
(2, 85000.00, '2022-05-15'),
(3, 100000.00, '2021-07-20');

SELECT * FROM Employees;

SELECT * FROM Departments;

SELECT * FROM Salaries;