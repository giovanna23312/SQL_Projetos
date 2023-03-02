CREATE DATABASE CompanyDB
GO


USE CompanyDB;
GO



CREATE TABLE Empregados (
Empl_cd int PRIMARY KEY identity(1,1),
Empl_FirstName   nvarchar(50) NOT NULL,
Empl_LastName   nvarchar(50) NOT NULL,
Empl_HireDate   date NOT NULL,
Empl_Department nvarchar(50) NOT NULL,
Empl_Salary     money NOT NULL
);
GO


INSERT INTO Empregados VALUES ('John', 'Doe', '2022-01-01', 'Sales', '5500'),
       ('Jane', 'Doe', '2022-02-01', 'Marketing', '6000'),
       ('Bim', 'Smith', '2022-03-01', 'IT', '6500'),
       ('DJohn', 'Doe', '2022-01-01', 'Sales', '2100'),
       ('Mane', 'Doe', '2022-02-01', 'Marketing', '3000'),
       ('Tim', 'Smith', '2022-03-01', 'IT', '35000');
GO


CREATE VIEW EmployeeInformation AS
SELECT Empl_cd, Empl_FirstName, Empl_LastName, Empl_HireDate, Empl_Department
FROM Empregados;
GO

select * from EmployeeInformation
-------------------------------------------------------------------------------------------------------
CREATE VIEW EmployeeSalaries AS
SELECT Empl_cd, Empl_FirstName, Empl_LastName, Empl_Salary, Empl_Department
FROM Empregados
WHERE Empl_Salary > 5000;
GO

select * from EmployeeSalaries
--------------------------------------------------------------------------------------------------------
CREATE VIEW EmployeeSalaries1 AS
SELECT Empl_cd, Empl_FirstName, Empl_LastName, Empl_Salary, Empl_Department
FROM Empregados
WHERE Empl_Salary < 5000;
GO

select * from EmployeeSalaries1

---------------------------------------------------------------------------------------------------------
SELECT *
FROM Empregados;
GO
---------------------------------------------------------------------------------------------------------


SELECT *
FROM EmployeeInformation;
GO


SELECT *
FROM EmployeeSalaries;
GO


-- Faça um select com estas informações, trazendo salários abaixo de 3000