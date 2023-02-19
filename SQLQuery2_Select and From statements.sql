/*
Select Statement
*, Top, Distinct, Count, As, Max, Min, Avg
*/

--Select * -- '*' means everything
--from EmployeeDemographics

select FirstName, LastName
from EmployeeDemographics

SELECT TOP 5 *
FROM EmployeeDemographics

select distinct(Gender) --only outputs the unique values in the column
from EmployeeDemographics

select count(Gender) as GenderCount--how many rows for that column. the as keyword is used to									name the count column in the output.
from EmployeeDemographics

select MAX(Salary) as maxSalary
from EmployeeSalary

select MIN(Salary) as minSalary
from EmployeeSalary

select AVG(Salary) as avgSalary
from EmployeeSalary

