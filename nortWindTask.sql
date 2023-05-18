SELECT * FROM Employees

SELECT *  INTO EmployeesTest FROM Employees

UPDATE EmployeesTest SET FirstName='Calla_han' WHERE EmployeeID>6
--1) Task

Select FirstName,LastName,TitleOfCourtesy from Employees
WHERE 
FirstName like 'LA%' or 
FirstName like 'LN' or 
FirstName like 'AA%' or 
FirstName like 'AN%'

--2) Task
SELECT FirstName,LastName FROM EmployeesTest WHERE FirstName LIKE '%[_]%'

--3) Task

SELECT * INTO CustomerTest FROM  Customers

SELECT * FROM CustomerTest

SELECT TOP 10 PERCENT CustomerID,CompanyName,ContactName FROM CustomerTest WHERE CustomerID LIKE '_A_T%'

--4) Task

SELECT * FROM CustomerTest WHERE CustomerID NOT LIKE '_A%' OR CustomerID NOT LIKE '_T%'

--5) Task 

SELECT * FROM CustomerTest WHERE CustomerID NOT LIKE '[A-I]%'

--6 Task

SELECT * FROM CustomerTest WHERE CustomerID NOT LIKE '%T'

-- Birth Task

UPDATE Employees SET BirthDate='2023-05-18 00:00:00.000' WHERE EmployeeID=4

SELECT FirstName,LastName FROM Employees 
WHERE 
(YEAR(GETDATE())= YEAR(BirthDate)) AND  
(MONTH(GETDATE())=MONTH(BirthDate)) AND 
(DAY(GETDATE())=DAY(BirthDate))
