Select *
from EmployeeSalary

-- Subquery in Select

Select EmployeeID, Salary, (Select AVG(Salary) from EmployeeSalary) as AvgSalary
From EmployeeSalary

-- How to do it with Partition By

Select EmployeeID, Salary,  AVG(Salary) over() as AvgSalary
From EmployeeSalary

-- Why Group By doesn't work

Select EmployeeID, Salary,  AVG(Salary) as AvgSalary
From EmployeeSalary
Group By EmployeeID, Salary
Order By 1, 2

-- Subquery in From
Select EmployeeID, AvgSalary
From (Select EmployeeID, Salary, Avg(Salary) over() as AvgSalary 
	 From EmployeeSalary) subqueryAlias

-- Subquery in Where
Select EmployeeID, JobTitle, Salary
From EmployeeSalary
Where EmployeeID in (
	Select EmployeeID
	From EmployeeDemographics
	Where Age > 30)

