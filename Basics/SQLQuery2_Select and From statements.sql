/*
Select Statement
*, Top, Distinct, Count, As, Max, Min, Avg
*/

--Select * -- '*' means everything
--from EmployeeDemographics

select FirstName, LastName
from SQLTutorial..EmployeeDemographics

SELECT TOP 5 *
FROM SQLTutorial..EmployeeDemographics

select distinct(Gender) --only outputs the unique values in the column
from SQLTutorial..EmployeeDemographics

select count(Gender) as GenderCount--how many rows for that column. The as keyword is used to									name the count column in the output.
from SQLTutorial..EmployeeDemographics

select MAX(Salary) as maxSalary
from SQLTutorial..EmployeeSalary

select MIN(Salary) as minSalary
from SQLTutorial..EmployeeSalary

select AVG(Salary) as avgSalary
from EmployeeSalary

